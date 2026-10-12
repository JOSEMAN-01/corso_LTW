<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/*">
        <xsl:element name="root">
            <xsl:attribute name="nomeRoot">
                <xsl:value-of select="name()"></xsl:value-of>
            </xsl:attribute>
            <xsl:apply-templates></xsl:apply-templates>
        </xsl:element>
    </xsl:template>

    <!--Lavoro sui figli di primo livello-->
    <xsl:template match="/*|/*/*">
        <xsl:element name="{nome()}">
            <xsl:apply-templates></xsl:apply-templates>
        </xsl:element>
    </xsl:template>

    <!--Lavoro sui nipoti-->
    <xsl:template match="/*|/*/*/*">
        <!--Come posso portare creare un nuovo elemento e metterlo nella radice?? Come posso salire sui livelli superiori??-->
    </xsl:template>
</xsl:stylesheet>