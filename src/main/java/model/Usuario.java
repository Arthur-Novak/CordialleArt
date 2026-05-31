package model;


public class Usuario {

    private int codigo;
    private String nome;
    private String senha;
    private String email;
    private boolean ativo;

    private String telefone;
    private String datanascimento;
    private String estado;
    private String cidade;

    public Usuario(){

    }

    public Usuario(String nome, String senha, String email, boolean ativo, String telefone, String datanascimento, String estado, String cidade) {
        this.nome = nome;
        this.senha = senha;
        this.email = email;
        this.ativo = ativo;
        this.telefone = telefone;
        this.datanascimento = datanascimento;
        this.estado = estado;
        this.cidade = cidade;
    }

    public Usuario(int codigo, String nome, String senha,
                   String email, boolean ativo, String telefone, String datanascimento,
                   String estado, String cidade) {
        this.codigo = codigo;
        this.nome = nome;
        this.senha = senha;
        this.email = email;
        this.ativo = ativo;
        this.telefone = telefone;
        this.datanascimento = datanascimento;
        this.estado = estado;
        this.cidade = cidade;
    }

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

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getDatanascimento() {
        return datanascimento;
    }

    public void setDatanascimento(String datanascimento) {
        this.datanascimento = datanascimento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
}
