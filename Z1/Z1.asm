//Poni¿ej podaj swoje dane
//Weronika Filipiak
//97597
//4.2
//3
//Cw2Z1
///////////////////////

.include "m32def.inc"

		.org 0x00
		jmp main

		.org 0x100
main:					;program glowny
						; ciag instrukcji inicjalizacyjnych
						sbi DDRA, 0; Ustawiam tryb linii z ktora podlaczona jest dioda jako wyjscie
						sbi DDRA, 1; Ustawiam tryb linii z ktora polaczony jest button jako wejscie
						sbi PORTA, 1; Podciagam do zasilania linii z ktara podlaczony jest button

loop:; poczatek petli glownej
						; instrukcje petli glownej
						sbic PINA, 1; Jezeli button jest wcisniety to nastepny rozkaz bedzie pominiety
						sbi PORTA, 0; Zaswiec diode

						sbis PINA, 1; Jezeli button jest niewcisniety to nastepny rozkaz bedzie pominiety
						cbi PORTA, 0; Zgas diode
		rjmp loop; powrot na poczatek petli glownej