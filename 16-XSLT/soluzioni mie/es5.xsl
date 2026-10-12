<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/*">
    <html>
    <body>
    <ol>
    <xsl:apply-templates select="*"/>
    </ol>
    </body>
    </html>
    </xsl:template>

    <xsl:template match="*">
        <li>
        <xsl:apply-templates select="NOME"/>
        <xsl:apply-templates select="VOTO"/>
        </li>
    </xsl:template>

    <xsl:template match="NOME">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="VOTO">
        <!--Come posso confrontare il valore del tag VOTO ????-->
        <xsl:if test="VOTO>=60">


        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>