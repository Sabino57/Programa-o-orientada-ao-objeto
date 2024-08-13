/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula4;

public class Relogio {
    private int hora;
    private int minuto;
    private int segundo;
    
    //contrutor1
    public Relogio(){
        hora = 0;
        minuto = 0;
        segundo = 0;
    }
    //construtor2
    public Relogio(int h){
        hora = h;
        minuto = 0;
        segundo = 0;
    }
    //construtor3
    public Relogio(int h, int m){
        hora = h;
        minuto = m;
        segundo = 0;
    }
    //construtor4
    public Relogio(int h, int m, int s){
        hora = h;
        minuto = m;
        segundo = s;
    }
    //metodo de acesso
    public void setHora(int x){
        hora = x;
    }
    public int getHora()
    {
        return hora;
    }
    public void setMinuto(int x)
    {
        minuto = x;
    }
    public int getMinuto()
    {
        return minuto;
    }
    public void setSegundo(int x)
    {
        segundo = x;
    }
    public int getSegundo()
    {
        return segundo;
    }
}
