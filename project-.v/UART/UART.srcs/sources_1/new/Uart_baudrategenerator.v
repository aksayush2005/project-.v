module baud_rate_generator(input clk, output tx_enb, rx_enb);

reg [13:0] tx_counter = 0;   // increased size
reg [9:0]  rx_counter = 0;

// TX counter (9600 baud)
always @(posedge clk)
begin
    if (tx_counter == 10416)
        tx_counter <= 0;
    else
        tx_counter <= tx_counter + 1;
end

// RX counter (16x oversampling)
always @(posedge clk)
begin
    if (rx_counter == 651)   // 10416 / 16 ≈ 651
        rx_counter <= 0;
    else
        rx_counter <= rx_counter + 1;
end

assign tx_enb = (tx_counter == 0);
assign rx_enb = (rx_counter == 0);

endmodule