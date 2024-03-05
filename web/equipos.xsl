<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="legacy-compat" encoding="utf-8"/>
<xsl:template match='/club_voleibol'>
<html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="tienda.xml">Tienda</a>
			<a href="equipos.xml">Equipos</a>
			<a href="partidos.xml">Partidos</a>
		</header>

		<main>
			<xsl:apply-templates select="equipo[entrenador/nombre='Julio Velasco']"/>
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
<xsl:template match="equipo" >
        <h1><a href="{entrenador/url}"><xsl:value-of select="entrenador/nombre"/></a></h1>
		<article class="equipos">
			<h4><xsl:value-of select="nombre"/></h4>
			<xsl:apply-templates select="jugadores/jugador[@titular='si']"/>
		</article>
</xsl:template>
<xsl:template match="jugador">
	<p><xsl:value-of select="@camiseta"/> - <xsl:value-of select="nombre"/></p>
</xsl:template>
</xsl:stylesheet>