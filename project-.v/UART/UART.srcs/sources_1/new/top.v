module top_uart_rx (
    input clk,          // 100 MHz clock
    input rst,          // reset button
    input rx,           // UART RX from USB-UART

    output reg [7:0] data_out,   // to LEDs
    output reg data_valid        // LED indicator
);

    // Internal wires
    wire rx_enb;
    wire tx_enb;  // not used but required

    wire [7:0] rx_data;
    wire rx_done;

    // ---------------- BAUD GENERATOR ----------------
    baud_rate_generator baud_gen (
        .clk(clk),
        .tx_enb(tx_enb),
        .rx_enb(rx_enb)
    );

    // ---------------- UART RECEIVER ----------------
    uart_rx receiver (
        .clk(clk),
        .rst(rst),
        .rx(1'b1),
        .en(rx_enb),
        .data_out(rx_data),
        .data_valid(rx_done)
    );

    // ---------------- OUTPUT REGISTER ----------------
    // This makes output stable for LEDs
    always @(posedge clk)
    begin
        if (rst)
        begin
            data_out <= 8'b0;
            data_valid <= 0;
        end
        else
        begin
            if (rx_done)
            begin
                data_out <= rx_data;
                data_valid <= 1;
            end
            else
                data_valid <= 0;
        end
    end

endmodule