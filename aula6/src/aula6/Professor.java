package aula6;
public class Professor {
    private String nome;
    private double horas;
    private double salario;
    private static double valorhora=50;
    
    // Contrutor
    public Professor(String nome, double horas){
        this.nome = nome;
        this.horas = horas;
    }
    // metodos de acesso
    
    public void setNome (String n)
    { nome = n;}
    
    public void SetHoras (double h)
    { horas = h;}
    
    public String getNome()
    { return nome;}
    
    public double getSalario()
    { return salario; }
    
    public void calcularSalario()
    {
        salario = horas*Professor.valorhora;
    }
    public double calcularImpostoRenda()
    {
        double aux;
        if (salario<1800)
        {aux = 0.1*salario;}
        else
        { aux = 0.27*salario;}
        return (aux);
    }
    
}
// fim classe professor
