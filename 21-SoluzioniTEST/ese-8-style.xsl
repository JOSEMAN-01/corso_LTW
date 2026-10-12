<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml"/>

  <xsl:template match="/*">
    <xsl:element name="root">
      <xsl:attribute name="nomeroot"> 
        <xsl:value-of select="name()"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="/*/*">
    <xsl:element name="{name()}">
    </xsl:element>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="/*/*/*">
    <xsl:element name="nipote">
    </xsl:element>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="/*/*/*/*">
    <xsl:element name="pronipote">
      <xsl:element name="nomePronipote"> 
        <xsl:value-of select="name()"/>
      </xsl:element>
    </xsl:element>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="*">
    <xsl:element name="{name()}">
    </xsl:element>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="text()"/>

</xsl:stylesheet>