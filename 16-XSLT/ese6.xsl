<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="/*">
    <html>
      <body>
        Lista degli autori:
        <ol>
          <xsl:for-each select="voce">
            <xsl:for-each select="nomeAutore">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </xsl:for-each>
        </ol>
        Lista dei titoli e anni:
        <ul>
          <xsl:apply-templates select="voce"/>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="voce">
    <li>
      <xsl:value-of select="titolo"/>
      -
      <xsl:value-of select="anno"/>
    </li>
  </xsl:template>

</xsl:stylesheet>
