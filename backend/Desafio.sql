create database DesafioGratitude
use DesafioGratitude

create table MensagensCurtas(
id int primary key identity,
mensagem nvarchar(MAX),
tema varchar(100),
)

SELECT * FROM historias WHERE historia like '%@Amor%'


insert into MensagensCurtas values
('Quando eu achava que era o fim, o senhor me mostrou que era o recome�o.','Inspira��o pela f�'),
('Aceite-se como voc� foi projetado','Aceita��o '),
('Se n�o tiver tudo, gratid�o. Se tiver tudo, gratid�o','Agrade�a'),
('O melhor agradecimento n�o passa pela palavra mais sim pelas a��es','Agradecimento pela a��o'),
('A gratid�o � a poesia da alma','Gratid�o'),
('Agrade�o pelo tempos mais dif�ceis, eles que me fizeram mias forte','For�a'),
('A gratid�o � a mem�ria do cora��o','Cora��o'),
('O melhor agradecimento n�o passa pela palavra mais sim pelas a��es','a��es'),
('Em um cora��o onde mora a gratid�o, tamb�m habitara a felicidade','Onde tem gratid�o'),
('Para encontrar a felicidade, encontre a gratid�o','Felicidade pela gratid�o'),
('Se um sujeito n�o � grato pelo que tem, ele n�o vai ser grato pelo que ele vai receber','Agrade�a pelo que tem'),
('Uma alma feliz n�o fica com inveja da felicidade alheia','Inveja'),
('A gratid�o � a chave que abre as portas da felicidade',' A chave para a felicidade'),
('Vim de agradecer pelas perdas(necess�rias) e pelos ganhos(merecidos)','Tempo'),
('Sentir gratid�o e n�o expressa-la � como embrulhar um presente e n�o entregar','Conceito de gratid�o'),
('A felicidade de uma pessoa depende da sua gratid�o','Amor'),
('Quem planta f� e gratid�o, colhe sucesso e afei��o','Plantio da gratid�o'),
('N�o espere pelo momento certo, crie-o','Motiva��o'),
('Cada queda � uma oportunidade para aprender e se levantar mais forte.','Resili�ncia'),
('Voc� � capaz de realizar mais do que imagina','Autoconfian�a'),
('A vida � um presente, abra-o com sorriso e gratid�o','Positividade'),
('O sucesso come�a com uma escolha: tentar.','Sucesso'),
('N�o desista, pois cada passo leva voc� mais perto do sucesso','Persist�ncia'),
('Seja o arquiteto do seu pr�prio destino','Distino'),
('Alegria � escolha, escolha ser feliz','Positividade'),
('N�o se deixe abater pelas dificuldades, elas s�o oportunidades de crescimento','Supera��o'),
('A gratid�o � um jardim que floresce dentro de n�s','Jardim'),
('Gratid�o por nada ser em v�o. Um passo de cada vez e a vida se torna uma evolu��o','Evolu��o'),
('Para ser grato, basta ampliar a vis�o e perceber que a felicidade vai al�m do que se v�','Agrade�a '),
('Use a gratid�o como um manto e assim ela ira alimentar cada canto da sua vida','Amor');

SELECT * FROM MensagensCurtas
SELECT TOP 1 * FROM MensagensCurtas ORDER BY NEWID()


create table Historias(
id int primary key identity,
historia nvarchar (MAX),
imagens nvarchar(150),
)

insert into Historias values 
('O garoto Bruce Wayne - filho �nico do casal de milion�rios Thomas e Martha Wayne - tem seus pais assassinados, no local conhecido como "Beco do Crime", por um ladr�o que queria assalt�-los (logo ap�s os tr�s terem sa�do de um cinema). Com muita dor devido ao ocorrido, o garoto faz um juramento: ele iria se dedicar a lutar contra o crime, evitando, assim, que outros passassem pelo que ele passou. Para isso ele viajou pelo mundo, aprendendo todas as t�cnicas de luta, treinando seu corpo at� quase a perfei��o f�sica, tornou-se um mestre em Qu�mica (e usando-a para tornar-se o maior detetive do mundo, um verdadeiro g�nio da investiga��o). Ao voltar � Gotham City, assumindo os neg�cios da fam�lia nas Empresas Wayne, passa por um f�til playboy arrogante, para que, durante as noites, se torne um vigilante da Justi�a. Para isso, usa a fortuna que tem para adquirir - ou criar - o que h� de melhor na tecnologia existente, utilizando-as em sua luta contra o crime. E, como ponto crucial, cria um uniforme que lhe d� uma identidade secreta - protegendo as pessoas que lhe eram pr�ximas - criando o BATMAN, um super her�i soturno que amedronta a noite dos criminosos de Gotham City. ', 'https://cdnb.artstation.com/p/assets/images/images/043/048/041/20211105145728/smaller_square/farid-sepehr-dark-knight-01.jpg?1636142248')

insert into Historias values
('Sempre detestei dias chuvosos, mas em uma viagem solit�ria, preso em um pequeno vilarejo, a chuva incessante me for�ou a desacelerar.
Sentado na janela, observando as gotas escorrendo pelo vidro, comecei a apreciar a tranquilidade daquela pausa.
A chuva me ensinou a beleza da simplicidade e a import�ncia de estar presente no momento',
'https://images.impresa.pt/sicnot/2024-09-23-chuva-aviso-amarelo-828a003a/original&#39;'),

('Meu av�, com suas m�os calejadas e um sorriso que iluminava qualquer ambiente, sempre me transmitia uma sensa��o de seguran�a e aconchego.
Lembro-me de quando ca� da bicicleta e me machuquei. Seus bra�os fortes me envolveram em um abra�o que curou todas as minhas dores.
A gratid�o que sinto por ele � imensa',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQdWLvYe34_h9Jw4BQ1UbAnrjyUf0_1FfctA&s&#39;'),

('Minha av�, mesmo com a voz rouca pela idade, cantava as mais belas can��es de ninar.
Suas melodias me embalavam para o sono e me transportavam para um mundo m�gico.
Hoje, cada vez que ou�o uma dessas can��es, me sinto acolhido e relembro com carinho os momentos que passamos juntas',
'https://th.bing.com/th/id/OIP.au3dV_pX1fTTXZDfrcUefwHaLL?w=116&h=180&c=7&r=0&o=5&dpr=1.3&pid=1&#39;'),


('Em meio ao caos de um inc�ndio, um bombeiro destemido entrou em um pr�dio em chamas para salvar uma fam�lia.
Sua coragem e altru�smo me inspiraram a ser uma pessoa melhor. Agrade�o a todos os profissionais que colocam suas vidas em risco para proteger os outros',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTmTs3B9C9TnDPZ0LqsBalNGIKlv1Rw6pcyg&s&#39;'),

('O Volunt�rio An�nimo: Durante uma campanha de doa��o de alimentos, conheci um homem que, semana ap�s semana, entregava cestas b�sicas �s fam�lias carentes.
Sua generosidade me tocou profundamente e me fez perceber que posso fazer a diferen�a na vida das pessoas ao meu redor',
'https://th.bing.com/th/id/OIP.Lx6jNuMBRS7pWyIPxEBw6gHaED?rs=1&pid=ImgDetMain
'),

('Minha professora do ensino m�dio tinha uma paix�o contagiante pelo aprendizado.
Ela nos incentivava a questionar tudo e a buscar o conhecimento. Gra�as a ela, descobri minha voca��o e me tornei a pessoa que sou hoje.',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfhogcouHbL9-0mKSoTB_OOxqaF6RYXrDbOQ&s&#39;'),

('Em uma pequena vila, havia uma �rvore m�gica que realizava os desejos de quem a abra�asse.
Um menino, ao inv�s de pedir riquezas ou fama, desejou que todos no mundo pudessem sentir a alegria de um abra�o sincero',
'https://th.bing.com/th/id/OIP.gkaxgHuX42_Gtp6jFRnT_AHaGQ?rs=1&pid&#39;'),

('Um livro antigo, com p�ginas amareladas e letras elegantes, contava a hist�ria de um mundo onde todos viviam em harmonia e gratid�o.
Ao ler esse livro, aprendi a valorizar as pequenas coisas da vida e a import�ncia de cultivar relacionamentos saud�veis',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiV9v9Wf1jPsDJiUQ1jw37bPRhNQZFuUbTNw&s&#39;'),

('A Ilha da Gratid�o: Em uma ilha distante, as pessoas viviam em perfeita felicidade.
Todos os dias, ao amanhecer, eles se reuniam para agradecer por tudo o que tinham.
A ilha da gratid�o era um lugar m�gico, onde os problemas eram superados com facilidade e a alegria era contagiante',
'https://th.bing.com/th/id/OIP.6CTbhTP4hnAc_nVw_TggdgHaFe?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7&#39;'),

('Um menino de 8 anos, ao encontrar uma carteira com dinheiro no ch�o, hesitou em ficar com o achado.
Lembrou-se da li��o da m�e sobre honestidade e decidiu entregar � pol�cia.
Ao reencontrar o dono da carteira, um senhor idoso, viu a alegria e o al�vio no rosto do homem.
A gratid�o do senhor foi a maior recompensa para o menino, que aprendeu que um pequeno ato de honestidade pode gerar grande felicidade',
'https://th.bing.com/th/id/OIP.QR541bzE7iXdb2_9YvrLlQHaHG?w=621&h=595&rs=1&pid=ImgDetMain&#39;'),

('Uma jovem que havia perdido o emprego e estava passando por dificuldades financeiras, recebeu uma cesta b�sica de um grupo de volunt�rios.
A surpresa e a emo��o foram t�o grandes que a jovem sentiu sua f� renovada.
Aquele gesto simples a fez perceber que n�o estava sozinha e que a bondade ainda existia no mundo.
A gratid�o a ajudou a superar o momento dif�cil e a seguir em frente com mais esperan�a',
'https://th.bing.com/th/id/R.15963a890b4bab790f8fa4fab9754c9d?rik=kurtxL4lfQwI9A&pid=ImgRaw&r=0&#39;'),

('Ap�s um inc�ndio que destruiu v�rias casas em uma pequena comunidade, os moradores se uniram para ajudar os mais necessitados.
Doa��es de roupas, alimentos e m�veis foram feitas, e muitos volunt�rios se dispuseram a reconstruir as casas.
A solidariedade e a gratid�o que surgiram desse momento dif�cil fortaleceram os la�os entre os moradores, criando uma comunidade ainda mais unida',
'https://img.freepik.com/premium-photo/connection-community-togetherness-harmony-holding-hands-cooperation-support_488220-13973.jpg?w=2000&#39;'),

('Um homem que havia sido diagnosticado com uma doen�a grave, decidiu aproveitar cada momento da vida.
Come�ou a agradecer por tudo o que tinha, por sua fam�lia, amigos e pelas pequenas coisas do dia a dia.
A gratid�o o ajudou a encontrar for�as para enfrentar o tratamento e a viver com mais leveza. Sua positividade inspirou muitas pessoas ao seu redor',
'https://s2.glbimg.com/jBCw5eVOxRx6-3-SOOTdVRmjsFE=/300x225/s.glbimg.com/jo/g1/f/original/2014/05/12/djalma-rosto.jpg&#39;'),


('Uma mulher que havia sido magoada por um amor n�o correspondido, decidiu perdoar e seguir em frente.
Ao cultivar a gratid�o pelas experi�ncias vividas, mesmo as dolorosas, ela percebeu que o amor pr�prio era fundamental para sua felicidade.
A gratid�o a libertou do passado e a permitiu construir um futuro mais feliz e saud�vel',
'https://th.bing.com/th/id/OIP.yR8oNMm7-B0KFwlHylEV-gAAAA?rs=1&pid=ImgDetMain&#39;'),

('Um casal de idosos, aposentados, decidiu dedicar parte do seu tempo a ajudar uma ONG que cuida de animais abandonados.
A cada animal resgatado e cuidado, sentiam uma imensa gratid�o por poder fazer a diferen�a na vida daqueles seres indefesos.
A gratid�o os motivava a continuar ajudando e inspirando outras pessoas a fazerem o mesmo',
'https://th.bing.com/th/id/OIP.MEZsizDzEFe7EU9OmRpf1gHaD4?w=326&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7&#39;');

select * from Historias
select * from Historias where historia like '%Amor%'
select * from MensagensCurtas

delete from Historias where id = 16