<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <db><xsl:apply-templates select="//geo"/></db>
    </xsl:template>
    <xsl:template match="geo">
        <geo>
            <xsl:attribute name="name">
                <xsl:apply-templates/>
            </xsl:attribute>
            <xsl:attribute name="ID">
                <xsl:value-of select="@ref"/>
            </xsl:attribute>
            <xsl:attribute name="source">
                <xsl:if test="ancestor::sy">
                    <xsl:text>sy</xsl:text>
                </xsl:if>
                <xsl:if test="ancestor::s">
                    <xsl:text>s</xsl:text>
                </xsl:if>
                <xsl:if test="ancestor::x">
                    <xsl:text>x</xsl:text>
                </xsl:if>
            </xsl:attribute>
            <xsl:attribute name="condition">
                <xsl:value-of select="@condition"/>
            </xsl:attribute>
            <xsl:attribute name="quote">
                <xsl:value-of select="ancestor::quote"/>
            </xsl:attribute>
        </geo>
    </xsl:template>

</xsl:stylesheet>
