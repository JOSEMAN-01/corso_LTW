<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

    <xsl:template match="/*">
        <html>
            <body>
                <ol>
                    <li>
                    Contenuto testuale di <xsl:value-of select="name()"/>
                        <ul>
                            <xsl:apply-templates select="text()"/><!--Seleziona tutti gli elementi figli che sono testo??-->
                        </ul>
                    </li>
                    <xsl:apply-templates select="*"/>
                </ol>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="*">
        <li>
        Contenuto testuale di <xsl:value-of select="name()"/>
            <ul>
                <xsl:apply-templates select="text()"/>
            </ul>
        </li>
        <xsl:apply-templates select="*"/>
    </xsl:template>
    
    <xsl:template match="text()"> <!--Matcha solo i nodi che sono testo-->
        <li><xsl:copy/></li>
    </xsl:template>
    
</xsl:stylesheet>