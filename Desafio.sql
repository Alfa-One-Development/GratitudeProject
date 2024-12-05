create database DesafioGratitude
use DesafioGratitude

create table MensagensCurtas(
id int primary key identity,
mensagem nvarchar(MAX),
tema varchar(100),
)

SELECT * FROM historias WHERE historia like '%@Amor%'


insert into MensagensCurtas values
('Quando eu achava que era o fim, o senhor me mostrou que era o recomeço.','Inspiração pela fé'),
('Aceite-se como você foi projetado','Aceitação '),
('Se não tiver tudo, gratidão. Se tiver tudo, gratidão','Agradeça'),
('O melhor agradecimento não passa pela palavra mais sim pelas ações','Agradecimento pela ação'),
('A gratidão é a poesia da alma','Gratidão'),
('Agradeço pelo tempos mais difíceis, eles que me fizeram mias forte','Força'),
('A gratidão é a memória do coração','Coração'),
('O melhor agradecimento não passa pela palavra mais sim pelas ações','ações'),
('Em um coração onde mora a gratidão, também habitara a felicidade','Onde tem gratidão'),
('Para encontrar a felicidade, encontre a gratidão','Felicidade pela gratidão'),
('Se um sujeito não é grato pelo que tem, ele não vai ser grato pelo que ele vai receber','Agradeça pelo que tem'),
('Uma alma feliz não fica com inveja da felicidade alheia','Inveja'),
('A gratidão é a chave que abre as portas da felicidade',' A chave para a felicidade'),
('Vim de agradecer pelas perdas(necessárias) e pelos ganhos(merecidos)','Tempo'),
('Sentir gratidão e não expressa-la é como embrulhar um presente e não entregar','Conceito de gratidão'),
('A felicidade de uma pessoa depende da sua gratidão','Amor'),
('Quem planta fé e gratidão, colhe sucesso e afeição','Plantio da gratidão'),
('Não espere pelo momento certo, crie-o','Motivação'),
('Cada queda é uma oportunidade para aprender e se levantar mais forte.','Resiliência'),
('Você é capaz de realizar mais do que imagina','Autoconfiança'),
('A vida é um presente, abra-o com sorriso e gratidão','Positividade'),
('O sucesso começa com uma escolha: tentar.','Sucesso'),
('Não desista, pois cada passo leva você mais perto do sucesso','Persistência'),
('Seja o arquiteto do seu próprio destino','Distino'),
('Alegria é escolha, escolha ser feliz','Positividade'),
('Não se deixe abater pelas dificuldades, elas são oportunidades de crescimento','Superação'),
('A gratidão é um jardim que floresce dentro de nós','Jardim'),
('Gratidão por nada ser em vão. Um passo de cada vez e a vida se torna uma evolução','Evolução'),
('Para ser grato, basta ampliar a visão e perceber que a felicidade vai além do que se vê','Agradeça '),
('Use a gratidão como um manto e assim ela ira alimentar cada canto da sua vida','Amor');

SELECT * FROM MensagensCurtas
SELECT TOP 1 * FROM MensagensCurtas ORDER BY NEWID()


create table Historias(
id int primary key identity,
historia nvarchar (MAX),
imagens nvarchar(150),
)

insert into Historias values 
('O garoto Bruce Wayne - filho único do casal de milionários Thomas e Martha Wayne - tem seus pais assassinados, no local conhecido como "Beco do Crime", por um ladrão que queria assaltá-los (logo após os três terem saído de um cinema). Com muita dor devido ao ocorrido, o garoto faz um juramento: ele iria se dedicar a lutar contra o crime, evitando, assim, que outros passassem pelo que ele passou. Para isso ele viajou pelo mundo, aprendendo todas as técnicas de luta, treinando seu corpo até quase a perfeição física, tornou-se um mestre em Química (e usando-a para tornar-se o maior detetive do mundo, um verdadeiro gênio da investigação). Ao voltar à Gotham City, assumindo os negócios da família nas Empresas Wayne, passa por um fútil playboy arrogante, para que, durante as noites, se torne um vigilante da Justiça. Para isso, usa a fortuna que tem para adquirir - ou criar - o que há de melhor na tecnologia existente, utilizando-as em sua luta contra o crime. E, como ponto crucial, cria um uniforme que lhe dá uma identidade secreta - protegendo as pessoas que lhe eram próximas - criando o BATMAN, um super herói soturno que amedronta a noite dos criminosos de Gotham City. ', 'https://cdnb.artstation.com/p/assets/images/images/043/048/041/20211105145728/smaller_square/farid-sepehr-dark-knight-01.jpg?1636142248')

insert into Historias values
('Sempre detestei dias chuvosos, mas em uma viagem solitária, preso em um pequeno vilarejo, a chuva incessante me forçou a desacelerar.
Sentado na janela, observando as gotas escorrendo pelo vidro, comecei a apreciar a tranquilidade daquela pausa.
A chuva me ensinou a beleza da simplicidade e a importância de estar presente no momento',
'https://images.impresa.pt/sicnot/2024-09-23-chuva-aviso-amarelo-828a003a/original&#39;'),

('Meu avô, com suas mãos calejadas e um sorriso que iluminava qualquer ambiente, sempre me transmitia uma sensação de segurança e aconchego.
Lembro-me de quando caí da bicicleta e me machuquei. Seus braços fortes me envolveram em um abraço que curou todas as minhas dores.
A gratidão que sinto por ele é imensa',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQdWLvYe34_h9Jw4BQ1UbAnrjyUf0_1FfctA&s&#39;'),

('Minha avó, mesmo com a voz rouca pela idade, cantava as mais belas canções de ninar.
Suas melodias me embalavam para o sono e me transportavam para um mundo mágico.
Hoje, cada vez que ouço uma dessas canções, me sinto acolhido e relembro com carinho os momentos que passamos juntas',
'https://th.bing.com/th/id/OIP.au3dV_pX1fTTXZDfrcUefwHaLL?w=116&h=180&c=7&r=0&o=5&dpr=1.3&pid=1&#39;'),


('Em meio ao caos de um incêndio, um bombeiro destemido entrou em um prédio em chamas para salvar uma família.
Sua coragem e altruísmo me inspiraram a ser uma pessoa melhor. Agradeço a todos os profissionais que colocam suas vidas em risco para proteger os outros',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTmTs3B9C9TnDPZ0LqsBalNGIKlv1Rw6pcyg&s&#39;'),

('O Voluntário Anônimo: Durante uma campanha de doação de alimentos, conheci um homem que, semana após semana, entregava cestas básicas às famílias carentes.
Sua generosidade me tocou profundamente e me fez perceber que posso fazer a diferença na vida das pessoas ao meu redor',
'https://th.bing.com/th/id/OIP.Lx6jNuMBRS7pWyIPxEBw6gHaED?rs=1&pid=ImgDetMain
'),

('Minha professora do ensino médio tinha uma paixão contagiante pelo aprendizado.
Ela nos incentivava a questionar tudo e a buscar o conhecimento. Graças a ela, descobri minha vocação e me tornei a pessoa que sou hoje.',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfhogcouHbL9-0mKSoTB_OOxqaF6RYXrDbOQ&s&#39;'),

('Em uma pequena vila, havia uma árvore mágica que realizava os desejos de quem a abraçasse.
Um menino, ao invés de pedir riquezas ou fama, desejou que todos no mundo pudessem sentir a alegria de um abraço sincero',
'https://th.bing.com/th/id/OIP.gkaxgHuX42_Gtp6jFRnT_AHaGQ?rs=1&pid&#39;'),

('Um livro antigo, com páginas amareladas e letras elegantes, contava a história de um mundo onde todos viviam em harmonia e gratidão.
Ao ler esse livro, aprendi a valorizar as pequenas coisas da vida e a importância de cultivar relacionamentos saudáveis',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiV9v9Wf1jPsDJiUQ1jw37bPRhNQZFuUbTNw&s&#39;'),

('A Ilha da Gratidão: Em uma ilha distante, as pessoas viviam em perfeita felicidade.
Todos os dias, ao amanhecer, eles se reuniam para agradecer por tudo o que tinham.
A ilha da gratidão era um lugar mágico, onde os problemas eram superados com facilidade e a alegria era contagiante',
'https://th.bing.com/th/id/OIP.6CTbhTP4hnAc_nVw_TggdgHaFe?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7&#39;'),

('Um menino de 8 anos, ao encontrar uma carteira com dinheiro no chão, hesitou em ficar com o achado.
Lembrou-se da lição da mãe sobre honestidade e decidiu entregar à polícia.
Ao reencontrar o dono da carteira, um senhor idoso, viu a alegria e o alívio no rosto do homem.
A gratidão do senhor foi a maior recompensa para o menino, que aprendeu que um pequeno ato de honestidade pode gerar grande felicidade',
'https://th.bing.com/th/id/OIP.QR541bzE7iXdb2_9YvrLlQHaHG?w=621&h=595&rs=1&pid=ImgDetMain&#39;'),

('Uma jovem que havia perdido o emprego e estava passando por dificuldades financeiras, recebeu uma cesta básica de um grupo de voluntários.
A surpresa e a emoção foram tão grandes que a jovem sentiu sua fé renovada.
Aquele gesto simples a fez perceber que não estava sozinha e que a bondade ainda existia no mundo.
A gratidão a ajudou a superar o momento difícil e a seguir em frente com mais esperança',
'https://th.bing.com/th/id/R.15963a890b4bab790f8fa4fab9754c9d?rik=kurtxL4lfQwI9A&pid=ImgRaw&r=0&#39;'),

('Após um incêndio que destruiu várias casas em uma pequena comunidade, os moradores se uniram para ajudar os mais necessitados.
Doações de roupas, alimentos e móveis foram feitas, e muitos voluntários se dispuseram a reconstruir as casas.
A solidariedade e a gratidão que surgiram desse momento difícil fortaleceram os laços entre os moradores, criando uma comunidade ainda mais unida',
'https://img.freepik.com/premium-photo/connection-community-togetherness-harmony-holding-hands-cooperation-support_488220-13973.jpg?w=2000&#39;'),

('Um homem que havia sido diagnosticado com uma doença grave, decidiu aproveitar cada momento da vida.
Começou a agradecer por tudo o que tinha, por sua família, amigos e pelas pequenas coisas do dia a dia.
A gratidão o ajudou a encontrar forças para enfrentar o tratamento e a viver com mais leveza. Sua positividade inspirou muitas pessoas ao seu redor',
'https://s2.glbimg.com/jBCw5eVOxRx6-3-SOOTdVRmjsFE=/300x225/s.glbimg.com/jo/g1/f/original/2014/05/12/djalma-rosto.jpg&#39;'),


('Uma mulher que havia sido magoada por um amor não correspondido, decidiu perdoar e seguir em frente.
Ao cultivar a gratidão pelas experiências vividas, mesmo as dolorosas, ela percebeu que o amor próprio era fundamental para sua felicidade.
A gratidão a libertou do passado e a permitiu construir um futuro mais feliz e saudável',
'https://th.bing.com/th/id/OIP.yR8oNMm7-B0KFwlHylEV-gAAAA?rs=1&pid=ImgDetMain&#39;'),

('Um casal de idosos, aposentados, decidiu dedicar parte do seu tempo a ajudar uma ONG que cuida de animais abandonados.
A cada animal resgatado e cuidado, sentiam uma imensa gratidão por poder fazer a diferença na vida daqueles seres indefesos.
A gratidão os motivava a continuar ajudando e inspirando outras pessoas a fazerem o mesmo',
'https://th.bing.com/th/id/OIP.MEZsizDzEFe7EU9OmRpf1gHaD4?w=326&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7&#39;');

select * from Historias
select * from Historias where historia like '%Amor%'
select * from MensagensCurtas

delete from Historias where id = 16