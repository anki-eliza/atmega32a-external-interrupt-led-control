# ATmega32A External Interrupt LED Control

## Overview

This project demonstrates the use of external interrupts INT0 and INT1 on the ATmega32A microcontroller using AVR Assembly Language.

The LED connected to PC0 is controlled entirely through interrupt service routines.

## Features

- AVR Assembly implementation
- External Interrupt INT0
- External Interrupt INT1
- Interrupt-driven LED control
- SimulIDE simulation

## Hardware Components

- ATmega32A
- 2 Push Buttons
- LED
- Resistor(s)

## Working Principle

### INT0

When INT0 (PD2) is triggered:

- Interrupt Service Routine executes
- LED connected to PC0 turns ON

### INT1

When INT1 (PD3) is triggered:

- Interrupt Service Routine executes
- LED connected to PC0 turns OFF

## Circuit Diagram

![Circuit](images/interrupt.png)

## Running the Simulation

1. Open SimulIDE.
2. Open:

   simulation/interrupt_demo.sim1

3. Double-click the ATmega32A.
4. Load the generated HEX file.
5. Start simulation.
6. Press INT0 button to turn LED ON.
7. Press INT1 button to turn LED OFF.

## Source Code

code/main.asm

## Author

Ankita Mandal
