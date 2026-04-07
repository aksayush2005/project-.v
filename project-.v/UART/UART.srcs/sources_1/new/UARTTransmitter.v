module uart_tx(
    input clk,
    input rst,
    input wr_en,
    input enb,             
    input [7:0] data_in,
    output reg tx
);

reg [7:0] data;
reg [2:0] index;

reg [1:0] state;

parameter idle_state  = 2'b00;
parameter start_state = 2'b01;
parameter data_state  = 2'b10;
parameter stop_state  = 2'b11;


always @(posedge clk)
begin
    if (rst)
        tx <= 1'b1;   
end


always @(posedge clk)
begin
    case(state)

    idle_state :
    begin
        if (wr_en)
        begin
            state <= start_state;
            data  <= data_in;
            index <= 3'h0;
        end
        else
            state <= idle_state;
    end

    
    start_state :
    begin
        if (enb)
        begin
            tx <= 1'b0;         
            state <= data_state;
        end
    end

   
    data_state :
    begin
        if (enb)
        begin
            tx <= data[index];

            if (index == 3'd7)
                state <= stop_state;
            else
                index <= index + 1'b1;
        end
    end

    stop_state :
    begin
        if (enb)
        begin
            tx <= 1'b1;          
            state <= idle_state;
        end
    end

    default :
        state <= idle_state;

    endcase
end

endmodule