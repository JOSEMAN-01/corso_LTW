<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/><!--Non necessario-->

  <xsl:key name="autori" match="libro/autore" use="."/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Bibliografia</title>
      </head>
      <body>
        <h1>Elenco dei libri</h1>
        <ul>
          <xsl:for-each select="bibliografia/libro">
            <li>
              <strong><xsl:value-of select="titolo"/></strong> di 
              <xsl:value-of select="autore"/> 
              (Editore: <xsl:value-of select="editore"/>, Anno: 
              <xsl:value-of select="anno"/>)
            </li>
          </xsl:for-each>
        </ul>

        <h2>Autori (senza ripetizioni)</h2>
        <ul>
          <!--Non capisco l'XPath di questo select-->
          <xsl:for-each select="bibliografia/libro/autore[generate-id() = generate-id(key('autori', .)[1])]">
            <li><xsl:value-of select="."/></li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>