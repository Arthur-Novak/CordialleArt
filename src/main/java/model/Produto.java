package model;

public class Produto {

    private int codigo;
    private String nome;
    private String descricao;
    private double preco;



    public Produto() {
    }

    // Construtor sem o código (usado na hora de CADASTRAR um produto novo no banco)
    public Produto(String nome, String descricao, double preco) {
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;

    }

    // Construtor completo (usado na hora de BUSCAR os produtos do banco de dados)
    public Produto(int codigo, String nome, String descricao, double preco) {
        this.codigo = codigo;
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;


    }

    // --- Getters e Setters ---

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }




}