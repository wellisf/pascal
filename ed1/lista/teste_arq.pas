program teste_arquivo;

type 
	Tarq = text;		 //(0º passo)

var
	arquivo : Tarq;		 //(1º passo)
	linha : string;
	
begin 
	//assing(arquivo,'texto.txt');			//(2º passo), cria o arquivo
		rewrite(arquivo); 					//(3º passo - Gravação ,cria um novo arquivo)
		writeln(arquivo,'Bom dia!');		//(4º passo - leitura do arquivo)
		close(arquivo); 					//fecha o arquivo para pode ler, o arquivo
		reset(arquivo);						//(3º passo - leitura - reset)
		read(arquivo,linha);				//(4º passo)
		write(linha);
	close(arquivo);							//fecha o arquivo
end.
