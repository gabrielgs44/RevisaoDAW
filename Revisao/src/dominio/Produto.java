package dominio;

public class Produto {
	private String descricao;
	private int quantidade;
	private float preco;
	
	public Produto(String descricao, int quantidade, float preco) {
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.preco = preco;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}
	
	

}
