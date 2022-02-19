<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
          <xsl:param name="param_1" select="'1. В нарастващ ред:'"/> <!--дефиниция на параметъра param_1-->
          <xsl:param name="param_2" select="'2. В намаляващ ред:'"/> <!--дефиниция на параметъра param_2-->
          <xsl:param name="param_3" select="'3. В нарастващ ред в следния формат: track_1, track_2,...,track_n:'"/> <!--дефиниция на параметъра param_3-->
            <html>
                <body>
                    <li><xsl:value-of select="$param_1"/></li> <!--изваждане на стойността на param_1-->
                        <xsl:for-each select="//track"> 
                            <xsl:sort select="." order="ascending"/> 
                            <li><xsl:value-of select="text()"/></li>
                        </xsl:for-each>
                    <li><xsl:value-of select="$param_2"/></li> <!--изваждане на стойността на param_2-->
                        <xsl:for-each select="//track">
                            <xsl:sort select="." order="descending"/> 
                            <li><xsl:value-of select="text()"/></li>
                        </xsl:for-each>
                    <li><xsl:value-of select="$param_3"/></li> <!--изваждане на стойността на param_3-->
                        <xsl:for-each select="//track"> 
                            <xsl:sort select="." order="ascending"/> 
                            <xsl:value-of select="text()"/>
                            <xsl:value-of select="'_'"/>
                            <xsl:number value="position()"/> 
                            <xsl:if test="position() != last()"> 
                                <xsl:value-of select="', '"/>
                            </xsl:if>
                        </xsl:for-each>
                </body>
            </html>
    </xsl:template>
</xsl:stylesheet>