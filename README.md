Criação e configuração de ambiente de programação via conda modificando o .bashrc

Nos laboratórios Linux Ubuntu destinado aos alunos, se viu a necessidade da criação de um ambiente virtual para praticar programação, a princípio seria usado o próprio python venv, porém foi requisitado a instalação do conda como gerenciador de pacotes e ambientes, a estratégia usada foi modificar o arquivo .bashrc dentro da pasta /etc/skel justamente para gerar um ambiente de programação automaticamente sempre que um usuário se logasse na máquina e abrisse um terminal, assim dando total liberdade de instalação de bibliotecas e gerenciamento do ambiente, (o ambiente instalava bibliotecas específicas que foram acordadas pelas partes interessadas). porém os computadores ao passar por manutenção, apagavam todos os repositórios pertencentes a alunos nas máquinas, fazendo com que sempre que o usuário se logasse, o script rodava e baixava tudo de novo, para gerar o ambiente, era necessário cerca de 1,7GB. 

Em um dado momento, foi necessário realizar uma prova com tarefas de programação, os laboratórios consumiram demasiada internet e foi exposto um grande contra nesse método, o que ocasionou na demanda de resolver esse problema de banda e também de liberdade extrema para configuração e instalação de bibliotecas no ambiente.


Para solucionar o problema, modifiquei o script contido no .bashrc para instalar o conda localmente na máquina (/opt/anaconda3) , assim, instalando apenas uma vez o serviço, que serviria como ponto focal para todos os alunos que quisessem utilizar do ambiente de programação. .bashrc foi modificado dessa vez não para baixar, instalar e configurar os ambientes, mas sim para puxar o ambiente de programação de maneira local diretamente da máquina, já com as bibliotecas instaladas e configurações feitas.

foi realizada medidas de segurança como colocar no .bashrc a linha PIP_USER=false para impedir os alunos de instalarem de maneira indevida bibliotecas no sistema.
