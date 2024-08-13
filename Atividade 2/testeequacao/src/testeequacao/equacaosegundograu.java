package testeequacao;
public class equacaosegundograu 
{
    private double a;
    private double b;
    private double c;
    private double x1;
    private double x2;
   
    //construtor
    public equacaosegundograu(double i, double j, double k)
    {
        a = i;
        b = j;
        c = k;
    }
 
    //metodos de acesso
 
    public void setA(double x)
    {
        a = x;
    }
 
    public void setb(double x)
    {
        b = x;
    }
 
    public void setc(double x)
    {
        c = x;
    }
    public double getX1()
    {
        return x1;
    }
    public double getX2()
    {
        return x2;
    }
    //metodos para calculos
    public double calcularDelta()
    {
        double d = 0; 
        d = b*b-4*a*c;
        return d;
    }
    public void calcularX1()
    {
        x1 = (-b + Math.sqrt(calcularDelta()))/(2*a);
    }
    public void calcularX2()
    {
        x2 = (-b - Math.sqrt(calcularDelta()))/(2*a);
    }
    public void imprimir()
    {
        System.out.println("a=" +a);
        System.out.println("b=" +b);
        System.out.println("c=" +c);
        System.out.println("x1=" +x1);
        System.out.println("x2=" +x2);
    }
}
