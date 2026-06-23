 .INCLUDE "M32ADEF.INC"
 .ORG 0 JMP Main
 //////////////////////////////////////////////////////////////////
 //Interrupt service routine 0
 .ORG 0x02
 SBI PORTC, PINC0 //This statement written at location 2 of memory
 RETI // Return Interrupt
 /////////////////////////////////////////////////////////////////
 .ORG 0x04
 CBI PORTC, PINC0
 RETI
 ////////////////////////////////////////////////////////////////
 //Main routine
 // I/O Settings
 .ORG 10
 Main:
 LDI R16, HIGH(RAMEND) OUT SPH,R16 LDI R16, LOW(RAMEND) OUT SPL,R16
 SBI DDRC, PINC0
 CBI DDRD, PIND2 SBI PORTD, PIND2
 CBI DDRD, PIND3
 //Interrupt settings
 LDI R16, 0b1100_0000 OUT GICR, R16 // Setting first two bits of gicr register 1 as 1 so that INT0 and INT1 are ON
 LDI R16, 0b0000_1111 OUT MCUCR, R16
 SEI 
 Loop: JMP Loop




