module robo_aspirador(liga, f, a, d, e, bateria, saida_e, saida_d, sbuzzer, rgbverde, rgbverm, rgbazul);
  //Declarar portas
  /* PINOS
  
  
  input liga, f, a, d, e, bateria;
  output saida_e, saida_d, sbuzzer, rgbverde, rgbverm, rgbazul;

  wire f1, f2, f4, f5, f3, na, nf, nd, ne, nse, nsd;

  not a1 (nf, f);
  not a2 (na, a);
  not a3 (nd, d);
  not a4 (ne, e);

  and a5 (f1, e, na);
  or a6 (f5, nf, nd, f1);

  and b1 (f3, ne, d);
  or b2 (f2, f3, nf);
  not b3 (f4, bateria);
  and b4 (saida_d, f2, f4, liga);
  and b5 (saida_e, f5, f4, liga);

  and l1 (sbuzzer, bateria, bateria, liga);
  and r1 (rgbverde, saida_d, saida_e, liga); // rgb verde se estiver andando para a frente
  not s1 (nse, saida_e); 
  not s2 (nsd, saida_d);
  and r2(rgbverm, saida_d, nse, liga); // rgb vermelho se estiver andando para a esquerda
  and r3(rgbazul, nsd, saida_e, liga); // rgb azul se estiver andando para a direita
  
endmodule