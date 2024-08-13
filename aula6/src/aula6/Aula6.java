
package aula6;
public class Aula6 {
    public static void main(String[] args) {
       Professor prof = new Professor ("Jose", 150);
       prof.calcularSalario();
        System.out.println("Nome.. " +prof.getNome());
        System.out.println("Salario... " +prof.getSalario());
    }
    
}
