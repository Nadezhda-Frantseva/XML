<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <body>
                <li><xsl:value-of select="'1. В нарастващ ред:'"/></li>
                    <xsl:for-each select="//track"> 
                        <xsl:sort select="." order="ascending"/> 
                        <xsl:variable name="var_1" select="text()"/> <!--дефиниция на константата var_1-->
                        <li><xsl:value-of select="$var_1"/></li> <!--изваждане на стойността на var_1-->
                    </xsl:for-each>
                <li><xsl:value-of select="'2. В намаляващ ред:'"/></li>
                    <xsl:for-each select="//track">
                        <xsl:sort select="." order="descending"/> 
                        <xsl:variable name="var_2" select="text()"/> <!--дефиниция на константата var_2-->
                        <li><xsl:value-of select="$var_2"/></li> <!--изваждане на стойността на var_2-->
                    </xsl:for-each>
                <li><xsl:value-of select="'3. В нарастващ ред в следния формат: track_1, track_2,...,track_n:'"/></li>
                     <xsl:for-each select="//track"> 
                        <xsl:sort select="." order="ascending"/> 
                        <xsl:variable name="var_3" select="text()"/> <!--дефиниция на константата var_3-->
                        <xsl:value-of select="$var_3"/> <!--изваждане на стойността на var_3-->
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
