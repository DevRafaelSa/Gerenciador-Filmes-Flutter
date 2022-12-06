class Filmes{
  int id;
  String urlImagem;
  String titulo;
  String genero;
  List<String> faixa_etaria;
  String duracao;
  double pontuacao;
  String descricao;
  String ano;

  Filmes(this.id, this.urlImagem, this.titulo, this.genero, this.faixa_etaria, this.duracao, this.pontuacao, this.descricao, this.ano);

  @override
  String toString() {
    return "Filme{id: $id, url da imagem: $urlImagem, título: $titulo, gênero: $genero, faixa etária: $faixa_etaria, duração: $duracao, pontuação: $pontuacao, descrição: $descricao, ano: $ano}";
  }
}
