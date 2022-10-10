import java.util.Scanner;
class Complex{
      private double re;
      private double im;
      private String id; // For identifying
      
      private Scanner sc = new Scanner (System.in);
      
      // Constructors
      public Complex () {
            this.re = 0.0;
            this.im = 0.0;
      }
      public Complex (String id) {
            this.re = 0.0;
            this.im = 0.0;
            this.id = id;
      }
      public Complex (double re, double im) {
            this.re = re;
            this.im = im;
            this.id = "";
      }
      
      // Setters
      public void setReal (double re) {
            this.re = re;
      }
      public void setImaginary (double im) {
            this.im = im;
      }
      public void setID (String id) {
            this.id = id;
      }
      
      public void input () {
            System.out.print("\n\tEnter Real (" + this.id + ") : ");
            this.re = sc.nextDouble();
            System.out.print("\n\tEnter Imaginary (" + this.id + ") : ");
            this.im = sc.nextDouble();
      }
      
      @Override
      public String toString () {
            return ("\t" + this.id + " = " + this.re + ((this.im < 0)?" ":" +") + this.im + "i.\n");
      }
      
      // add and substract
      public static Complex add (Complex a, Complex b) {
            Complex s = new Complex (a.re + b.re, a.im + b.im);
            return s;
      }
      public static Complex substract (Complex a, Complex b) {
            Complex d = new Complex (a.re - b.re, a.im - b.im);
            return d;
      }
      
}

public class W3P1 {
      public static void main (String [] args) {
            Complex a = new Complex ("A");
            Complex b = new Complex ("B");
            a.input();
            b.input();
            
            Complex s = Complex.add (a, b);
            s.setID ("A + B");
            
            Complex d = Complex.substract (a, b);
            d.setID ("A - B");
            
            System.out.println ("" + a + b + s + d);
      }
}