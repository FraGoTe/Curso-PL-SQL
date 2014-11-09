PL / SQL = PL (IF / LOOPS) + SQL ( SELECT * FROM ...)
=====================================================
>Bloque Estructura
	* Anónimos
	* Nombres
		-> Funciones
		-> Procedures
		-> Packages
			* Privados
			* Publicos
	* Sentencias (IF / ELSE / LOOPS)
		Existen 2 motores uno para PL/SQL y otro engine para las sentencias  SQL
		cada vez que se hace un select se sale del motro PL/SQL a SQL, es mejor utilizar
		colecciones en vez de cursores (Optimización 10 / 1)
		-> Manejo de flujo lógicos/datos
		-> Reutilizables
	* Rendimiento / Estabilidad
	*Integración