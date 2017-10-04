<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <html>
            <head><title>Herbs</title></head>
            <body>
                <table><tr>
                    <th>Herb</th>
                    <th>Place</th>
                    <th>Place ID</th>
                    <th>Quote</th>
                    <th>Source</th>
                </tr>
                    <xsl:apply-templates select="//geo"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="geo">
        <tr>
            <td><xsl:value-of select="./ancestor::herb/@name"/></td>
            <td><xsl:value-of select="."/></td>
            <td><xsl:value-of select="./@ref"/></td>
            <td><xsl:value-of select="./ancestor::quote"/></td>
            <td><xsl:if test="./ancestor::s"><xsl:text>神农本草经集注</xsl:text></xsl:if>
                <xsl:if test="./ancestor::x"><xsl:text>新修本草</xsl:text></xsl:if>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>