program agenda_by_WellingtonSilva;

uses crt;

const
	
	NOME_ARQUIVO = 'agenda.dat';
	MAX = 10; 

type
	Tdd = 11..99;
	Ttelefone = 950000000..999999999;

	Testado = (RJ, SP , MG, ES);    // enumerados ou escalares

	Tpessoa = record
				nome : string[12];	
				dd : Tdd;
				telefone : Ttelefone;
				email : string[30];
				cidade : string[20];
				estado : Testado;
				disponivel : boolean;
	          end;
	
	//tipo agenda
	Tagenda = array[1..MAX] of Tpessoa;
	
	//criar arquivo 
	Tarquivo = file of Tpessoa; //0 passo: Criar o Tipo da variável
	Tarquivo_txt = text;
var
	//variavel global
	cadastro : Tagenda;
	i : integer;	

//começa os procedimentos
procedure cadastramento(MAX:integer;var cadastro : Tagenda; i : integer);
	var
		sair : integer;
begin
	repeat
		clrscr;
		//verifica a posição disponivel
		if cadastro[i].disponivel then
		begin
			writeln('Seu id e: ', i);
			writeln('Informe seu nome');
			readln(cadastro[i].nome);
			writeln('Informe seu DD');
			readln(cadastro[i].dd);
			writeln('Informe seu telefone');
			readln(cadastro[i].telefone);
			writeln('Informe seu email');
			readln(cadastro[i].email);
			writeln('Informe sua cidade');
			readln(cadastro[i].cidade);
			writeln('Informe seu estado');
			readln(cadastro[i].estado);
			cadastro[i].disponivel := false;
			writeln('Caso deseje sair digite: 0. Caso não digite outro numero');
			readln(sair);
		end;
		i := i + 1;
	until((sair = 0) or (i = MAX));
end;

//procedimento novo, testa poe tudo em verdadeiro
procedure disponivel_true(MAX:integer;var cadastro : Tagenda);
begin
	for i:= 1 to MAX do
	begin
		cadastro[i].disponivel := true;
	end; 
end;
	
procedure consulta_individual(MAX:integer; cadastro : Tagenda);
	var
		id : integer;
begin
	clrscr;
	writeln('Informe o id, da consulta');
	readln(id);
	if not cadastro[id].disponivel then
	begin
		writeln('O nome: ',cadastro[id].nome);
		writeln('O telefone:  (',cadastro[id].dd,')','  ',cadastro[id].telefone);
		writeln('O email: ',cadastro[id].email);
		writeln('A cidade: ',cadastro[id].cidade);
		writeln('O estado: ',cadastro[id].estado);
	end else writeln('Não existe...');
end;

//recursão 
//tem que lembrar de ter um fim. um IF
//recursão chama ela até ter fim.
//recursão com exemplo de fatorial
	//exemplo usando a  variavel sendo n := 5;
procedure exibir_agenda(MAX:integer; cadastro : Tagenda; pos : integer);
begin
	if pos <= MAX then 
	begin
			//se não falso = verdadeiro 
		if not cadastro[pos].disponivel then
		begin
			writeln;
			writeln('O nome: ',cadastro[pos].nome);
			writeln('O telefone:  (',cadastro[pos].dd,')','  ',cadastro[pos].telefone);
			writeln('O email: ',cadastro[pos].email);
			writeln('A cidade: ',cadastro[pos].cidade);
			writeln('O estado: ',cadastro[pos].estado);
			writeln;
		end else writeln('Nao existe...');
		exibir_agenda(MAX, cadastro, pos+1);
	end;
end;

procedure apaga_individual(MAX:integer;var cadastro : Tagenda);
	var 
		i : integer;
begin
	clrscr;
	writeln('Informe a posição ou id');
	readln(i);	
	cadastro[i].nome     := '0';
	cadastro[i].dd 		 := 99;
	cadastro[i].telefone := 999999999;
	cadastro[i].email    := '0';
	cadastro[i].cidade   := '0';
	cadastro[i].estado   := RJ;
	cadastro[i].disponivel := true;
end;

procedure apaga_agenda(MAX:integer;var cadastro : Tagenda);
	var 
		i : integer;
begin
	clrscr;
	for i := 1 to MAX do
	begin
		cadastro[i].nome     := '0';
		cadastro[i].dd 		 := 99;
		cadastro[i].telefone := 999999999;
		cadastro[i].email    := '0';
		cadastro[i].cidade   := '0';
		cadastro[i].estado   := RJ;
	end;
	disponivel_true(MAX ,cadastro);
end;

//funcao d teste de arquivo
function se_arquivo(NOME_ARQUIVO : string): boolean;
var 
	arquivo_agenda : Tarquivo;
begin
    assign(arquivo_agenda,NOME_ARQUIVO);
		{$i-}
			reset(arquivo_agenda); 
		{$i+}
	if ioresult = 0 then 
	begin
		se_arquivo := true;
		close(arquivo_agenda);
	end else se_arquivo := false;
end;

//arquivo.
//1 passo: criar variável - 
//(2º passo) Associar a variável criada a um arquivo do disco
//(3º passo) Abrir o arquivo: Para gravação
procedure arquivo(MAX:integer; cadastro : Tagenda; NOME_ARQUIVO : string);
var
	arquivo_agenda : Tarquivo; 
	i : integer;
begin
	clrscr;
	assign(arquivo_agenda,NOME_ARQUIVO);
	writeln;
	writeln;
	if  se_arquivo(NOME_ARQUIVO) then 
	begin
		reset(arquivo_agenda);
		//poe o curso na ultima posição do arquivo
		seek(arquivo_agenda,filesize(arquivo_agenda));	
		writeln('	Arquivo salvo com sucesso!');
	end else
	begin 	
		rewrite(arquivo_agenda);
		writeln('	Arquivo criando com sucesso!');
	end;
	for i := 1 to MAX do 
		if not cadastro[i].disponivel then write(arquivo_agenda,cadastro[i]);
	close(arquivo_agenda);
	writeln;
end; 

procedure exibir_arquivo(NOME_ARQUIVO : string);
var
	arquivo_agenda : Tarquivo; //1 passo: criar variável
	dado_arquivo : Tpessoa;
begin
	assign(arquivo_agenda,NOME_ARQUIVO); 
		if se_arquivo(NOME_ARQUIVO) then
		begin
			reset(arquivo_agenda);
			//EOF = END OF FIND ++ IMPORTANTE, pois define o fim do arquivo.
			while not EOF(arquivo_agenda) do 
			begin
				read(arquivo_agenda, dado_arquivo);
					if not dado_arquivo.disponivel then 
					begin
						write('Nome:   ');
						writeln(dado_arquivo.nome);
						write('Tel.:   ');
						writeln(dado_arquivo.dd, dado_arquivo.telefone);
						write('E-mail: ');
						writeln(dado_arquivo.email);
						write('Cidade: ');
						writeln(dado_arquivo.cidade);
						write('Estado: ');
						writeln(dado_arquivo.estado);
						writeln;
					end;
			end;
			close(arquivo_agenda);
		end else writeln('O arquivo não existe');
end;

procedure apaga_arquivo(NOME_ARQUIVO : string);
var
	arquivo_agenda : Tarquivo; 
begin
	assign(arquivo_agenda, NOME_ARQUIVO);
	if se_arquivo(NOME_ARQUIVO) then
	begin
		//apaga
		erase(arquivo_agenda); 
		writeln;
		writeln;
		writeln('	Arquivo foi apago com sucesso!');
		writeln;
		writeln;
	end else writeln('		O arquivo não existe	');
end;

procedure exporta_txt(NOME_ARQUIVO : string);
var
	arquivo_texto : Tarquivo_txt;
	arquivo_agenda : Tarquivo; //1 passo: criar variável
	dado_arquivo : Tpessoa;
begin
	assign(arquivo_texto,'agend.txt');
	rewrite(arquivo_texto);
		assign(arquivo_agenda,NOME_ARQUIVO); 
		if se_arquivo(NOME_ARQUIVO) then
		begin
			writeln;
			writeln;
			writeln('Arquivo Exportado com Sucesso!');
			writeln;
			writeln;
			reset(arquivo_agenda);
			//EOF = END OF FIND ++ IMPORTANTE, pois define o fim do arquivo.
			while not EOF(arquivo_agenda) do 
			begin
				read(arquivo_agenda, dado_arquivo);
				write(arquivo_texto,'Nome:   ');
				writeln(arquivo_texto,dado_arquivo.nome);
				write(arquivo_texto,'Tel.:   ');
				write(arquivo_texto,dado_arquivo.dd);
				writeln(arquivo_texto,dado_arquivo.telefone);
				write(arquivo_texto,'E-mail: ');
				writeln(arquivo_texto,dado_arquivo.email);
				write(arquivo_texto,'Cidade: ');
				writeln(arquivo_texto,dado_arquivo.cidade);
				write(arquivo_texto,'Estado: ');
				writeln(arquivo_texto,dado_arquivo.estado);
				writeln(arquivo_texto);
			end;
		end else writeln('Nao e possivel exporta, pois o arquivo nao existe'); 
		close(arquivo_agenda);
	close(arquivo_texto);
end;

//todos procedimentos serão feitos aqui dentro
procedure menu_principal(MAX:integer;var cadastro : Tagenda);
var 
	menu : integer; 
begin
	clrscr;
	//deixa o vetor todo livre 
	disponivel_true(MAX,cadastro);
	repeat
		writeln(' ');
		writeln(' ');
		writeln('						Agenda						v. 1.0');
		writeln(' ');
		writeln('_____________________________________________________________');
		writeln(' ');
		writeln('  (1) Cadastramento');
		writeln('  (2) Consulta individual na memoria');
		writeln('  (3) Exibir a agenda da memoria');
		writeln('  (4) Apaga individuo da memoria');
		writeln('  (5) Apaga agenda da memoria'); 
		writeln('__________________________________________________');
		writeln('');
		writeln('  Caso desejar salvar os dados em um arquivo');
		writeln('__________________________________________________');
		writeln('');
		writeln('  (6) Criar & Salvar arquivo ');
		writeln('  (7) Exibir o arquivo');
		writeln('  (8) Apaga arquivo');
		writeln('  (9) Exporta TXT');
		writeln('__________________________________________________');
		writeln('');
		writeln('  (0) Sair.');
		writeln('______________________________________________________________');
		writeln;
		readln(menu);
		case menu of
			1 :	cadastramento(MAX,  cadastro,1);
			2 : consulta_individual(MAX,  cadastro);	
			3 : exibir_agenda(MAX, cadastro, 1);
			4 :	apaga_individual(MAX, cadastro);
			5 : apaga_agenda(MAX, cadastro);
			6 : arquivo(MAX, cadastro, NOME_ARQUIVO);
			7 : exibir_arquivo(NOME_ARQUIVO);
			8 : apaga_arquivo(NOME_ARQUIVO);
			9 : exporta_txt(NOME_ARQUIVO);
		end;
		writeln;
		writeln('Pressione uma tecla para continuar');
		readkey;
		clrscr;		
	until(menu = 0);
end;	
//programa
begin
	menu_principal(MAX,cadastro);
end.