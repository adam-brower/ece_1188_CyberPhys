/*
 * InputOutput_external.c
 *
 *  Created on: Jan 23, 2024
 *      Author: adambrower
 */


#include <stdint.h>
#include "msp.h"

void Port4_Init(void){
    P4->SEL0 &= ~0x12;
    P4->SEL1 &= ~0x12;   // 1) configure P4.4  P4.1 as GPIO
    P4->DIR &= ~0x12;    // 2) make P4.4 and P4.1 in
    P4->REN |= 0x00;     // 3) enable pull resistors on P1.4 and P1.1
    P4->OUT &= ~0x12;     //    P1.4 and P1.1 are pull-down
}

uint8_t Port4_Input(void){
  return (P4->IN&0x12);   // read P4.4, P4.1 inputs
}

void Port6_Init(void){
    P6->SEL0 &= ~0x03;
    P6->SEL1 &= ~0x03;    // 1) configure P6.1 P6.0 as GPIO
    P6->DIR |= 0x03;      // 2) make P6.1 P6.0 out
    P6->DS |= 0x03;       // 3) activate increased drive strength
    P6->OUT &= ~0x03;     //    all LEDs off
}

void Port6_Output(uint8_t data){  // write two outputs bits of P6
  P6->OUT = (P6->OUT&0x03)|data;
}

int main(void){
    uint8_t status;

    Port4_Init();                    // initialize P4.1 and P1.4 and make them inputs (P4.1 and P4.4 built-in buttons)
    Port6_Init();                    // initialize P6.1 P6.0 and make them outputs (P6.1 P6.0 built-in LEDs)

    while(1){
        status = Port4_Input();
        switch(status){                 // switches are negative logic on P4.1 and P4.4
            case 0x10:                    // SW1 pressed
                Port6_Output(0x01);
                break;
            case 0x02:                    // SW2 pressed
                Port6_Output(0x02);
                break;
            case 0x00:                    // both switches pressed
                Port6_Output(0x03);
                break;
            case 0x12:                    // neither switch pressed
                Port6_Output(0x00);
                break;
        }
    }
}
