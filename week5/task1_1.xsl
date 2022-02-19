<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <body>
                <ul> <!--unordered list-->
                    <xsl:for-each select="//track"> <!--1. Стойностите на всички track елементи, които имат стойност на атрибута length '4:04'-->
                        <xsl:if test="@length='4:04'">
                            <li> <!--list-->
                                <xsl:value-of select="text()"/>
                            </li>
                        </xsl:if> 
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>