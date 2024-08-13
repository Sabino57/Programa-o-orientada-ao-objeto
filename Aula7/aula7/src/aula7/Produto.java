
package aula7;
public class Produto {
    private int codigo;
    private String descricao;
    private double valorunitario;
    private double quantidadevendida;
    private double totalvendas;

    public Produto(int codigo, String descricao, double valorunitario, double quantidadevendida) {
        this.codigo = codigo;
        this.descricao = descricao;
        this.valorunitario = valorunitario;
        this.quantidadevendida = quantidadevendida;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValorunitario() {
        return valorunitario;
    }

    public void setValorunitario(double valorunitario) {
        this.valorunitario = valorunitario;
    }

    public double getQuantidadevendida() {
        return quantidadevendida;
    }

    public void setQuantidadevendida(double quantidadevendida) {
        this.quantidadevendida = quantidadevendida;
    }
    public void CalcularTotalVendas(){
        totalvendas = quantidadevendida*valorunitario;
    }
    public double getTotalvendas() {
        return totalvendas;
    }
    
    
}
