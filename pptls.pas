//************************************************************************************************
//************************************************************************************************
//**Trabalho Prático -Jogo Pedra/papel/Tesoura/Lagarto/Spock     				**
//**Disciplina Fundamentos De Programação (ck108)-Semestre 2014.1				**
//**Integrantes do Grupo:                                        				**
//**-Gabriel Sousa Firmino       (362963) : Modo Computador X Usuário,Documentação,Testes.      **
//**-Leandro Almeida de Carvalho (362973) : Modo UsuárioXUsuário, Modo Offline, Arquivos,Testes.**
//**-Victor Lucas Deodato        (362988) : Documentação, Função Comparar,Testes.               **
//************************************************************************************************
//************************************************************************************************
PROGRAM pptls;
uses CRT;  
var                     				 									//Declaração das variaveis utilizadas durante todo o codigo
	arquivo: text;  													//Variavel de entrada do aquivo de texto para modo offline
  	msg,j1,j2,temp,temp2,Tjogo:string;  												//Variaveis do tipo String
   	contA,contB,r,i,n,x:integer; 				 									//Variaveis do tipo inteiro 
   	opc,opc2:string;   														//Variaveis do Tipo string
function comparar( jogadaA, jogadaB: string) : integer; 		  								//função para comparar jogadasque foram entradas pelo jogador
  	Begin                                         			 					//Dentro dos parenteses há a declaração de variaveis para utilização nos placares;
      		if ((jogadaA='PEDRA' ) and (jogadaB='PAPEL')) then  						//Inicio de condicionais para comparar todas as possibilidades 
      		Begin                                                          							//de entradas diferentes para o Jogador a e b;
  			writeln('Papel cobre Pedra');
			writeln('Jogador 2 vence a rodada'); 						//Apresentação do resultado diacordo com as regras padrões;
  	  		comparar:=2;  												//Atribuição numerica para o vencedor;**
      		End;
      		if ((jogadaA='PEDRA') and (jogadaB='TESOURA')) then
      		Begin
	 		writeln('Pedra quebra Tesoura');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='TESOURA') and (jogadaB='PEDRA')) then
      		Begin
	 		writeln('Pedra quebra Tesoura');
			writeln('Jogador 2 vence a rodada');
	    		comparar:=2;
      		End;
      		if ((jogadaA='PAPEL') and (jogadaB='PEDRA')) then
      		Begin
	 		writeln('Papel cobre Pedra');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='PAPEL') and (jogadaB='TESOURA')) then
      		Begin
	 		writeln('Tesoura corta Papel');
			writeln('Jogador 2 vence a rodada');
	   		comparar:=2;
      		End;
      		if ((jogadaA='TESOURA') and (jogadaB='PAPEL')) then
      		Begin
	 		writeln('Tesoura corta Papel');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='SPOCK') and (jogadaB='PAPEL')) then
      		Begin
         		writeln('Papel refuta Spock');
			writeln('Jogador 2 vence a rodada');
	   		comparar:=2;
      		End;
      		if ((jogadaA='PAPEL') and (jogadaB='SPOCK')) then
      		Begin
	 		writeln('Papel refuta Spock');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='LAGARTO') and (jogadaB='PEDRA')) then
      		Begin
	 		writeln('Pedra esmaga Lagarto');
			writeln('Jogador 2 vence a rodada');
	    		comparar:=2;
      		End;
      		if ((jogadaA='PEDRA') and (jogadaB='LAGARTO')) then
      		Begin
	 		writeln('Pedra esmaga Lagarto');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='PEDRA') and (jogadaB='SPOCK')) then
      		Begin
	 		writeln('Spock vaporiza Pedra');
			writeln('Jogador 2 vence a rodada');
	    		comparar:=2;
      		End;
      		if ((jogadaA='SPOCK') and (jogadaB='PEDRA')) then
      		Begin
	 		writeln('Spock vaporiza Pedra');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='SPOCK') and (jogadaB='TESOURA')) then
      		Begin
	 		writeln('Spock derrete Tesoura');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='TESOURA') and (jogadaB='SPOCK')) then
      		Begin
	 		writeln('Spock derrete Tesoura');
			writeln('Jogador 2 vence a rodada');
	    		comparar:=2;
      		End;
      		if ((jogadaA='SPOCK') and (jogadaB='LAGARTO')) then
      		Begin
	 		writeln('Lagarto envenena Spock');
			writeln('Jogador 2 vence a rodada');
	    		comparar:=2;
      		End;
      		if ((jogadaA='LAGARTO') and (jogadaB='SPOCK')) then
      		Begin
	 		writeln('Lagarto envenena Spock');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='LAGARTO') and (jogadaB='PAPEL')) then
      		Begin
	 		writeln('Lagarto come Papel');
			writeln('Jogador 1 vence a rodada');
	    		comparar:=1;
      		End;
      		if ((jogadaA='PAPEL') and (jogadaB='LAGARTO')) then
      		Begin
	 		writeln('Lagarto come Papel');
			writeln('Jogador 2 vence a rodada');
	    		comparar:=2;
      		End;
     		if ((jogadaA='LAGARTO') and (jogadaB='TESOURA')) then
      		Begin
	 		writeln('Tesoura decapita Lagarto');
			writeln('Jogador 2 vence a rodada');
	    		comparar:=2;
      		End;
      		if ((jogadaA='TESOURA') and (jogadaB='LAGARTO')) then
      		Begin
	 		writeln('Tesoura decapita Lagarto');
			writeln('Jogador 1 vence a rodada.');     
	    		comparar:=1;
      		End;	   															//fim das condicionas para entradas diferentes;
      		if ((jogadaA='TESOURA') and (jogadaB='TESOURA')) then     									//Inicios de comparação para os casos de mesma entrada;
		Begin
     	 		writeln ('Empate');													//Notificação de empate;
			comparar:=0;														//Nenhuma atribuição de vencedor;
		end;
      		if (jogadaA='SPOCK') and (jogadaB='SPOCK') then
		Begin
     	 		writeln ('Empate');
			comparar:=0;
		end;
      		if (jogadaA='LAGARTO') and (jogadaB='LAGARTO') then
		begin
        	 	writeln ('Empate');
			comparar:=0;
		end;
      		if (jogadaA='PEDRA') and (jogadaB='PEDRA') then
		begin
         		writeln('Empate');
			comparar:=0;
		end;
      		if (jogadaA='PAPEL') and (jogadaB='PAPEL') then
		begin		
         		writeln('Empate');
			comparar:=0;
		end; 													//Fim de função para caso de empates
   	End;	 													//Fim da Função Comparar
BEGIN 
	contA:=0;			
	contB:=0;
	x:=0;
	if(ParamCount <> 0) then 											//Caso a iniciação seja com o arquivo de texto(modo offline)
	begin
		Assign(arquivo, ParamStr(1)); 
		Reset(arquivo);
		while not eof(arquivo) do     											//Laço para a iniciação da leitura do arquivo texto
		begin				
			readln(arquivo, msg);
			n:=0;
                	j1 := 'nada';											//inicialização de variável(atribuição de um valor qualquer).
                	j2 := 'nada';
			i := 0;
			while (msg[i]<>'/') do										//Percorre a string até a '/'
			begin     
                        	If j1 <> 'nada'then
                             	begin;
					j1 := j1 + msg[i];
					i := i + 1;
                             	end;
                             	if j1 = 'nada'then 
                             	begin
                                	j1 := msg[i];
					i:=i+1;
                             	end; 
			end;
			n:=length(j1);											//Retorna o tamanho da string
			temp:=copy(msg,(pos(msg,'/')-1),n-1);								//Separando as strings pela '/' 
			temp2:=copy(msg,n+1,10);
			j1:=Upcase(temp);
			j2:=Upcase(temp2);
			x:=comparar(j1,j2);
			if (x=1) then
				contA:=contA+1;
			if (x=2) then
				contB:=contB+1;
		end;
		writeln('Jogador 1: ', contA);
		writeln('Jogador 2: ', contB);
		close(arquivo);
	end
	else      											//Caso não haja entrada de arquivo ao iniciar o programa,dará inicio ao modo online
	Begin
	 	contA:=0;															//Contadores de placar
		contB:=0;		
 		repeat;			
 		writeln('Qual modo deseja jogar? 1-UsuárioXUsuário |||||||| 2-CompXUsuário');							//Layout para informação e escolha do tipo de jogo
		readln(Tjogo);
		while ( (Tjogo<>'1') and (Tjogo<>'2') ) do											//Leitura da entrada de escolhado operador
		Begin 
			clrscr;  			
			writeln('Entrada inválida, digite novamente');
			writeln('Qual modo deseja jogar? 1-UsuárioXUsuário |||||||| 2-CompXUsuário');
			readln(Tjogo);
		End;
 		if Tjogo='1'  then				
 		Begin
   			repeat;				
   			writeln ('Jogador 1: Pedra, Papel, Tesoura, Lagarto ou Spock?');   
      			readln (j1);						
  			j1:=Upcase(j1);
			clrscr;			
      			while ( (j1<>'PEDRA') and (j1<>'TESOURA') and (j1<>'SPOCK') and  (j1<>'LAGARTO') and  (j1<>'PAPEL')) do  
      			Begin	
				clrscr;			
    	 			writeln('Entrada inválida, jogue novamente'); 			
    	 			writeln ('Jogador 1: Pedra, Papel, Tesoura, Lagarto ou Spock?'); 
  	 			readln (j1);			
  	   			j1:=Upcase(j1);	
				clrscr;		
      			End;																	//Fim do laço para entrada invalida
      			writeln ('Jogador 2: Pedra, Papel, Tesoura, Lagarto ou Spock?');   								//Layout para as opçõesde entrada do jogador 2	
      			readln (j2);
			clrscr;																	//Leitura da jogada do jogador 2
  			j2:=Upcase(j2);			
      			while ( (j2<>'PEDRA') and (j2<>'TESOURA') and (j2<>'SPOCK') and  (j2<>'LAGARTO') and  (j2<>'PAPEL')) do
      			Begin	
				clrscr;													
         			writeln('Entrada inválida, jogue novamente'); 
         			writeln ('Jogador 2: Pedra, Papel, Tesoura, Lagarto ou Spock?'); 								//Layout de informaçãocom entras validas
  	 			readln (j2);															//leitura da entrada
  	    			j2:=Upcase(j2);			
      			End;
   			x:=comparar(j1,j2);      														//Utilização da função comparar 
   			if (x=1) then																//Caso vencedor seja o Jogador 1
				contA:=contA+1;															//Acrescimo no placar de 1 ponto
			if (x=2) then																//Caso vencedor sejao Jogador 2
				contB:=contB+1;
			Writeln('Jogador A : ', contA, ' Jogador B : ',contB);								//Layout mostrando placar logo apos o termino da ultima partida
   			writeln ('Deseja jogar novamente? Sim/Nao');								//Layout para infomação com a opção de continuar ou não com o jogo.
   			readln(opc);													//leitura da opção escolhida
    			opc:=Upcase(opc);	
   			while ((opc<>'SIM') and (opc<>'NAO')) do
   			Begin 													//inicio do Laço para caso seja entrado opções diferentes das permitidas
      				writeln('Entrada inválida, digite novamente');								//Layout informando que houve entrada invalida
				readln; clrscr;
				writeln ('Deseja jogar novamente? Sim/Nao');
      				readln (opc);											//Leitura da opção entrada
        			opc:=Upcase(opc);	
   			End;													//fim da repetição	
   			until opc='NAO';  										//Caso a opção seja não,o codigo do tipo 1 de jogo não será mais repetido.	
      			contA:=0;												//Resetando placares
      			contB:=0;
 		End;
 		if Tjogo='2' then											//Caso a escolha feita seja para o modo Usuario versos computador
 		Begin
   			repeat;												//Repetição do codigo abaixo até o declarado em 'until'
   			writeln ('Jogador 1: Pedra, Papel, Tesoura, Lagarto ou Spock?');						//layout para as opções de entrada do jogador 
      			readln (j1);													//leitura da entrada do jogador
  			j1:=Upcase(j1);			
      			while ( (j1<>'PEDRA') and (j1<>'TESOURA') and (j1<>'SPOCK') and  (j1<>'LAGARTO') and  (j1<>'PAPEL')) do
      			Begin														//Laço para entradas diferentes das permitidas
    				writeln('Entrada inválida, jogue novamente');								//Layout de informação que a entrada foi invalida
    				writeln ('Jogador 1: Pedra, Papel, Tesoura, Lagarto ou Spock?');					 //layout de informação com opções validas
  				readln (j1);												//Leitura da entrada
  	 			j1:=Upcase(j1);	
      			End;
      			writeln ('Computador: Pedra, Papel, Tesoura, Lagarto ou Spock?');    						//Layout informativo da vez do computador
      			r := random (4) ;										//Função Random para utilização como apoio para definir jogadas do computador
      			If r=0 then												//Condicionais com definição da jogada com base na aleatoridade
      			Begin
         			j2 :='PEDRA';
         			writeln (j2);
      			End; 
      			If r=1 then 
      			Begin
         			j2 :='PAPEL';
         			writeln (j2);
      			End; 
      			If r=2 then
      			Begin
         			j2 :='TESOURA';
         			writeln (j2);
      			End; 
      			If r=3 then
			Begin
         			j2 :='LAGARTO' ;
         			writeln (j2);
      			End; 
      			If r=4 then
      			Begin
         			j2 :='SPOCK';     
         			writeln (j2);
      			End; 
   			x:=comparar(j1,j2);  													//Retorno da Função comparar
			if (x=1) then			
				contA:=contA+1;													//Placar adiciona mais 1 ponto
			if (x=2) then														//Se o vencedor for o computador
				contB:=contB+1;														//Placar adiciona mais 1 ponto
			Writeln('Jogador A : ', contA, ' Computador : ',contB);  								//layout mostrando o placar
   			writeln ('Deseja jogar novamente? Sim/Nao');										//Layout para opção de continuar jogando
   			readln(opc);														//Leitura da opção
    			opc:=Upcase(opc);				
   			while ((opc<>'SIM') and (opc<>'NAO')) do										//Caso a opção entra seja diferente da entra valida
   			Begin
				clrscr;														//layout de informação de entrada invalida
      				writeln('Entrada inválida, digite novamente'); 
				writeln ('Deseja jogar novamente? Sim/Nao');									
      				readln (opc);				
  				opc:=Upcase(opc);		
   			End;
   			until opc='NAO';										//Caso a opção seja não,o codigo do tipo 2 de jogo não será mais repetido.
   			contA:=0;											//Resetando os contadores
   			contB:=0;
 		end;
 		writeln('Deseja mudar o modo de jogo? Sim/Nao'); 										//opção para mudar o modo de jogo
 		readln(opc2);		
   		opc2:=Upcase(opc2);	
 		while ( (opc2<>'SIM') and (opc2<>'NAO')) do
 		Begin														//Caso seja uma entrada invalida
    			writeln('Entrada inválida, digite novamente'); 											//Layout de informação de entrada errada
			readln; clrscr;	
			writeln('Deseja mudar o modo de jogo? Sim/Nao');
    			readln (opc2);		
      			opc2:=Upcase(opc2);	
 		End;	
 		until opc2='NAO';  											//Caso a opção seja não,o codigo do modo online de jogo não será mais repetido.	
    		writeln('Obrigado por jogar nosso jogo.'); 								//Agradecimentos por utilização do programa.
	end; 
end. //Fim do programa             						
