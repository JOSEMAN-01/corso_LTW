<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:template match="/">
		<ul>
			<xsl:for-each select="/studenti/studente">
				<li>
					<xsl:value-of select="nome" /> -<!--Qui c'è uno spazio ed un trattino-->
					<xsl:choose>
						<xsl:when test="voto &gt;= 60">
							Promosso
						</xsl:when>
						<xsl:otherwise>
							Bocciato
						</xsl:otherwise>
					</xsl:choose>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>