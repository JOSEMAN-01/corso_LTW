<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="/">
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
      contenuto testuale di <xsl:value-of select="name()"/>:
      <ul> 
        <xsl:apply-templates select="text()"/>
      </ul>
    </li>
    <xsl:apply-templates select="*"/>
  </xsl:template>

  <xsl:template match="text()">
    <li>
      <xsl:copy/>
    </li>
  </xsl:template>
</xsl:stylesheet>
