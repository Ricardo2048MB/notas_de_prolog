/*


Ejercicio
Gestión de Inventario de una Tienda de electrónica

Imagina que tienes una tienda de electrónica donde vendes diferentes tipos de 
dispositivos y cada uno tiene ciertos accesorios compatibles. Además, cada 
producto tiene un precio asignado.

Deberás utilizar mínimo 5 listas y cada una de ellas con mínimo 8 elementos

Ejemplo:
	producto(laptop, [mouse, teclado, cargador, monitor_externo]).
	precio(laptop, [15000,900]).
	color(laptop,[negro,azul]).

 Implementa las reglas necesarias para poder satisfacer las consultas propuestas

Tu tarea es escribir consultas en Prolog para verificar:
1.	Qué accesorios son compatibles con un determinado dispositivo. [Hecho]
2.	Cuál es el precio de un producto en la tienda. [Hecho]
3.	Si un accesorio es compatible con un dispositivo específico. [Hecho]
4.	Los colores disponibles por cada producto [Hecho]


*/


%Recursividad
pertenece(X,[X|_]).%Regla de parada
pertenece(X,[_|T]):-pertenece(X,T).%Aquí se ejecuta primero pertenece pero 
%con T siendo la lista que es la cola (es decir, aquí está la recursividad).


compatibles(['RAM DDR4 32 GB Hello Kitty',
			'Reloj RGB Casio','Ventiladores de enfriamiento snowman',
			'USB HUB 4 puertos Pulptastic',
			'Lector multi-tarjetas Rockman',
			'Cable HDMI trenzado Premium 8K Eyesight',
			'Cable de fibra óptica 10g Transmisión Pd60w Tipo-C a C Linkman',
			'Panel de botones de superposición gráfica Anchor'],
			'Computadora gamer ASUS ROG').


compatibles(['RAM DDR4 32 GB Halo',
			'Reloj RGB Ferrari',
			'Ventiladores de enfriamiento Olaf',
			'USB HUB 4 puertos YameteKudasai',
			'Lector multi-tarjetas Ozzyman',
			'Cable HDMI trenzado Premium 8K IC2',
			'Cable de fibra óptica 10g Transmisión Pd60w Tipo-C a C Oh-my-link',
			'Panel de botones de superposición gráfica Anchovy'],
			'Computadora gamer Alienware').


compatibles(['RAM DDR4 32 GB Corsair','Reloj RGB Senheiser',
			'Ventiladores de enfriamiento Elsational',
			'USB HUB 4 puertos Hubington',
			'Lector multi-tarjetas AWL',
			'Cable HDMI trenzado Premium 8K Blindshot',
			'Cable de fibra óptica 10g Transmisión Pd60w Tipo-C a C Enocman',
			'Panel de botones de superposición gráfica Vault-tec'],
			'Computadora gamer Acer Predator').


compatibles(['RAM DDR4 32 GB Steelers',
			'Reloj RGB Holcim',
			'Ventiladores de enfriamiento Mr. Freeze',
			'USB HUB 4 puertos Spicy Horse',
			'Lector multi-tarjetas 4x4',
			'Cable HDMI trenzado Premium 8K AIWA',
			'Cable de fibra óptica 10g Transmisión Pd60w Tipo-C a C Xenomorph',
			'Panel de botones de superposición gráfica Anchor premium'],
			'Computadora gamer Lenovo Legion').


compatibles(['RAM DDR4 32 GB Avengers',
			'Reloj RGB Alnitak',
			'Ventiladores de enfriamiento Dr. Snowflake',
			'USB HUB 4 puertos Havok',
			'Lector multi-tarjetas Wildboar',
			'Cable HDMI trenzado Premium 8K Oleico',
			'Cable de fibra óptica 10g Transmisión Pd60w Tipo-C a C Thunderbolt',
			'Panel de botones de superposición gráfica Holland'],
			'Computadora gamer HP Omen').


compatible(Accesorio,Producto):-
compatibles(Accesorios,Producto),
pertenece(Accesorio,Accesorios).


colores_disponibles(['Rojo',
					'Naranja',
					'Amarillo',
					'Verde',
					'Azul',
					'Añil mendicante',
					'Violeta',
					'Gris metálico'],
					'Computadora gamer HP Omen').


colores_disponibles(['Rojo infernal',
					'Naranja Hambriento',
					'Amarillo Cegador',
					'Verde espectral',
					'Azul petrificante',
					'Añil mate',
					'Violeta venomous',
					'Gris metálico'],
					'Computadora gamer Lenovo Legion').


colores_disponibles(['Rojo furioso',
					'Naranja voraz',
					'Amarillo amenazante',
					'Verde camuflaje',
					'Azul agilidad',
					'Añil letalidad',
					'Violeta intempestivo',
					'Gris metálico'],
					'Computadora gamer Acer Predator').


colores_disponibles(['Rojo invasión',
					'Naranja aniquilador',
					'Amarillo 51',
					'Verde Marciano',
					'Azul plasmático',
					'Añil clonación',
					'Violeta ultratecnológico',
					'Gris metálico'],
					'Computadora gamer Alienware').


colores_disponibles(['Rojo Competitivo',
					'Naranja Ambicioso',
					'Amarillo Esperanzado',
					'Verde Explorador',
					'Azul Eficiente',
					'Añil Manco',
					'Violeta E-girl',
					'Gris metálico'],
					'Computadora gamer ASUS ROG').


color_disponible(Color,Producto):-
colores_disponibles(Colores,Producto),
pertenece(Color,Colores).


lista_de_precios([['Computadora gamer HP Omen',10000],
				['Computadora gamer Lenovo Legion',11500],
				['Computadora gamer Acer Predator',12300],
				['Computadora gamer Alienware',12300],
				['Computadora gamer ASUS ROG',25300]]).


cuesta(Producto,Cantidad):-
lista_de_precios(Elementos),
pertenece(Elemento,Elementos),
Elemento=[Producto,Cantidad].


/*


Consultas para probar

%1.	Qué accesorios son compatibles con un determinado dispositivo. [Hecho]
compatibles(Accesorios,'Computadora gamer HP Omen').


%2.	Cuál es el precio de un producto en la tienda. [Hecho]
cuesta('Computadora gamer HP Omen',Precio).%**La consulta es esta**
cuesta(Producto,Precio).%Consulta alternativa


%3.	Si un accesorio es compatible con un dispositivo específico. [Hecho]
compatible('Reloj RGB Alnitak','Computadora gamer HP Omen').


%4.	Los colores disponibles por cada producto [Hecho]
colores_disponibles(Colores,Producto).


*/