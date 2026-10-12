<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/*">
        <xsl:element name="{name()}">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="*">
        <xsl:element name="nuovo">
            <xsl:attribute name="{name()}"/><!-- Correzione:Questo è il nome dell'attributo, non il VALORE dell'attributo -->
            <xsl:copy-of select="node()|text()|comment()"></xsl:copy-of><!--Correzione: NON serve-->
            <xsl:apply-templates select="*"/>
        </xsl:element>
    </xsl:template>
    |
</xsl:stylesheet>