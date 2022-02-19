<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <body>
                <ul> <!--unordered list-->
                    <xsl:for-each select="//track"> <!--2. Стойностите на всички track елементи, чиято дължина е по-малка от 15, както и техните дължини-->
                        <xsl:if test="string-length(.) &lt; 15">
                            <li>  <!--list-->
                                <xsl:value-of select="text()"/> 
                                <xsl:value-of select="' '"/> <!--space между текста и дължината-->
                                <xsl:value-of select="string-length(.)"/>
                            </li>
                        </xsl:if> 
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>