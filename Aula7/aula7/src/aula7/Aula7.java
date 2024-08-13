
package aula7;
public class Aula7 {
    public static void main(String[] args) {
        Produto prod = new Produto (10, "Mouse", 50, 3);
        Produto prod1 = new Produto (201, "Teclado", 80, 6);
        
        prod.CalcularTotalVendas();
        System.out.println("Total vendas: " +prod.getTotalvendas());
        prod1.CalcularTotalVendas();
        System.out.println("Total vendas produto 2: " +prod1.getTotalvendas());
    }
}
