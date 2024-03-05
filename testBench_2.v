//Test Bench do Somador completo 8-bit
module testBench_2;

  reg [7:0] x, y;
  reg Cin;
  wire [7:0] A;
  wire Cout;

  // Instância do somador
  som_comp_8bit soma_inst ( 
        .x(x),
        .y(y), 
        .Cin(Cin),
        .A(A), 
        .Cout(Cout)
    );

 initial begin
        x = 8'b01010101; 
        y = 8'b11001100; 
        Cin = 1'b1;

        #10; // Espera 10 unidades de tempo

        $display("Aplicando estímulos: x=%b, y=%b, Cin=%b", x, y, Cin);
       
        $display("Resultado: A=%b, Cout=%b", {A}, Cout); 

        $finish; 
    end

endmodule

