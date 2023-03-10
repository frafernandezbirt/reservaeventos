<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match='/'>
<html lang="es">
    <body>

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>Reserva Restaurantes</title>
	</head>

    	<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>

		<main>
			<xsl:for-each select="reservaeventos/restaurante">
				<xsl:variable name="meson" select="nombrerestaurante"/>
				<h1><a href="{informacion}"><xsl:value-of select="$meson"/></a> - <xsl:value-of select="ciudad"/></h1>
				<article class="restaurante">
					<xsl:for-each select="menu">
						<h3><xsl:value-of select="@tipo"/></h3>
						<xsl:for-each select="plato">
							<p><xsl:value-of select="."/></p>
						</xsl:for-each>						
					</xsl:for-each>
				</article>
			</xsl:for-each>
			
		</main>

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>