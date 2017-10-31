<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
       <html>
           <head><title>Text</title></head>
           <body>
               <xsl:for-each select="//herb">
                   <h1><xsl:value-of select="./@name"/></h1>
                   <h2>神农本草经</h2>
                   <p><xsl:copy-of select="./sy"/></p>
                   <h2>神农本草经集注</h2>
                   <p><xsl:copy-of select="./s"/></p>
                   <h2>新修本草</h2>
                   <p><xsl:copy-of select="./x"/></p>
                   <hr/>
               </xsl:for-each>
           </body>
       </html>
    </xsl:template>
</xsl:stylesheet>