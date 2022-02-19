<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:for-each select="//track"> 
                    <xsl:sort select="." order="ascending"/> <!-- 1. В нарастващ ред -->
                    <li><xsl:value-of select="text()"/></li>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>