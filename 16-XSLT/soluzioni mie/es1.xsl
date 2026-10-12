<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/*">
        <html>
            <body>
                <ul>
                    <li><xsl:value-of select="name()"/></li><!--Estrai SOLO il nome del nodo-->
                     <!--
                    Il comportamento di default di "apply-templates" è 
                    <xsl:apply-templates select="* | text() | comment() | processing-instruction()"/>
                    -->
                    <xsl:apply-templates select="*"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="*">
        <li><xsl:value-of select="name()"/></li>
        <xsl:apply-templates select="*"/>
    </xsl:template>
</xsl:stylesheet>