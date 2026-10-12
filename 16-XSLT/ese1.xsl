<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
    <body>
    <ul>
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
