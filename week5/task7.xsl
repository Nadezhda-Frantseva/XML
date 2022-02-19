<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template name="year"> <!--1. Дефиниция на шаблон с име year, който извежда стойността на year елемента-->
        <xsl:param name="yearName"/> <!--който има параматър с име yearName-->
        <b><xsl:value-of select="$yearName"/></b><br/>
    </xsl:template>
    <xsl:template name="title"> <!--2. Дефиниция на шаблон с име title, който извежда стойността на title елемента-->
        <xsl:param name="titleName"/> <!--който има параматър с име titleName-->
        <b><xsl:value-of select="$titleName"/></b><br/>
    </xsl:template>
    <xsl:template name="artist"> <!--3. Дефиниция на шаблон с име artist, който извежда стойността на artist елемента-->
        <xsl:param name="artistName"/> <!--който има параматър с име artistName-->
        <b><xsl:value-of select="$artistName"/></b><br/>
    </xsl:template>
    <xsl:template match="/">
        <html>
            <body>
                <xsl:for-each select="catalog/cd"> 
                    <tr>
                        <td>
                            <xsl:call-template name="year"> <!--1.Извикване на шаблона year-->
                                <xsl:with-param name="yearName" select="year"/>
                            </xsl:call-template>
                        </td>
                        <td>
                            <xsl:call-template name="title"> <!--1.Извикване на шаблона title-->
                                  <xsl:with-param name="titleName" select="title"/>
                            </xsl:call-template>
                        </td>
                        <td>
                            <xsl:call-template name="artist"> <!--1.Извикване на шаблона artist-->
                                  <xsl:with-param name="artistName" select="artist"/>
                            </xsl:call-template>
                        </td>
                    </tr>
                </xsl:for-each>
                <!-- XSL документа, от задача 3:-->
                <li><xsl:value-of select="'1. В нарастващ ред:'"/></li>
                    <xsl:for-each select="//track"> 
                        <xsl:sort select="." order="ascending"/> 
                        <li><xsl:value-of select="text()"/></li> 
                    </xsl:for-each>
                <li><xsl:value-of select="'2. В намаляващ ред:'"/></li>
                    <xsl:for-each select="//track">
                        <xsl:sort select="." order="descending"/> 
                        <li><xsl:value-of select="text()"/></li> 
                    </xsl:for-each>
                <li><xsl:value-of select="'3. В нарастващ ред в следния формат: track_1, track_2,...,track_n:'"/></li>
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
