<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
       <db><xsl:apply-templates select="//geo"/></db>
    </xsl:template>
    <xsl:template match="geo">
        <text_db>
            <xsl:attribute name="herb_name">
                <xsl:value-of select="./ancestor::herb/@name"/>
            </xsl:attribute>
            <xsl:attribute name="location">
                <xsl:value-of select="."/>
            </xsl:attribute>
            <xsl:attribute name="id">
                <xsl:value-of select="./@ref"/>
            </xsl:attribute>
            <xsl:attribute name="quote">
                <xsl:value-of select="./ancestor::quote"/>
            </xsl:attribute>
            <xsl:attribute name="herb_source">
                <xsl:if test="./ancestor::s"><xsl:text>神农本草经集注</xsl:text></xsl:if>
                <xsl:if test="./ancestor::x"><xsl:text>新修本草</xsl:text></xsl:if>
            </xsl:attribute>
        </text_db>
    </xsl:template>
</xsl:stylesheet>