module uart_rx(
    input clk,
    input rst,
    input rx,
    input en,
    output reg [7:0] data_out,
    output reg data_valid
);

reg [2:0] index;
reg [7:0] data;
reg [1:0] state;

parameter idle_state  = 2'b00;
parameter start_state = 2'b01;
parameter data_state  = 2'b10;
parameter stop_state  = 2'b11;

always @(posedge clk)
begin
    if (rst)
    begin
        state <= idle_state;
        data_valid <= 0;
        index <= 0;
        data <= 0;
        data_out <= 0;
    end
    else
    begin
        case(state)

        // IDLE
        idle_state:
        begin
            data_valid <= 0;
            if (rx == 0)
                state <= start_state;
        end

        // START
        start_state:
        begin
            if (en)
            begin
                if (rx == 0)
                begin
                    index <= 0;
                    state <= data_state;
                end
                else
                    state <= idle_state;
            end
        end

        // DATA
        data_state:
        begin
            if (en)
            begin
                data[index] <= rx;

                if (index == 3'd7)
                    state <= stop_state;
                else
                    index <= index + 1;
            end
        end

        // STOP
        stop_state:
        begin
            if (en)
            begin
                if (rx == 1)
                begin
                    data_out <= data;
                    data_valid <= 1;
                end
                state <= idle_state;
            end
        end

        default:
            state <= idle_state;

        endcase
    end
end

endmodule