<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/*">
        <xsl:element name="{name()}">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="*">
        <xsl:element name="{name()}">
        </xsl:element>
        <xsl:apply-templates/><!--Perché non ci mettiamo select="*" ??-->
    </xsl:template>
    |
</xsl:stylesheet>