/*
 *    a88888b.                                          dP              
 *   d8'   `88   dP          a8888b.            dP      88              
 *   88          88 d88888P d8'   `8  88    88  88  d88888888P              
 *   88          88 88      d8        88    88  88      88              
 *   Y8.   .88   88 88      Y8        88    88  88      88              
 *    Y88888P'   db P8       Y88888P' Y888888Y  db      d888b               
 * oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
 */
 
 pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

component main = Multiplier2();
