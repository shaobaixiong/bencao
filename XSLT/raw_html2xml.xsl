<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <!--先通过regex把html转成<h1><box><h2></h2><content></content></box></h1>结构的xml-->
    <!--</h2>;\0<content>;<h2;</content>\0;<h2;<box>\0;</content>;\0</box>;-->
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <herbs>
            <xsl:apply-templates select="//box"/>
        </herbs>
    </xsl:template>
    <xsl:template match="box">
        <herb>
            <xsl:attribute name="name"><xsl:value-of select="h2"/></xsl:attribute>
            <xsl:apply-templates select="content"/>
        </herb>
    </xsl:template>
</xsl:stylesheet>