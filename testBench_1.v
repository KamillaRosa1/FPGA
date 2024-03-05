//Test bench do Somador Completo 1-bit
module testBench;

    // declaração de entradas
    reg x, y, Cin;

    // declaração de saidas
    wire A, Cout;

    // Instância do módulo principal
    som_comp_1bit soma_inst ( 
        .x(x),
        .y(y), 
        .Cin(Cin),
        .A(A), 
        .Cout(Cout)
    );

    // Inicialização dos sinais de entrada
    initial begin
        x = 0; 
        y = 1; 
        Cin = 0;

        #10; // Espera 10 unidades de tempo

        // Exibição dos resultados
        $display("Resultado: A=%b, Cout=%b", A, Cout);

        $finish; // Encerra a simulação
    end

endmodule
