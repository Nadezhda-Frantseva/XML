<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:for-each select="//track">
                    <ul>
                        <li>
                            <xsl:choose>
                                <!-- 1. "A big string" ако дължината на стойността на track елемента е по-голяма от 15: -->
                                <xsl:when test="string-length(.) &gt; 15"> <!-- &gt;  <=>  по-голямо (>) -->
                                    <xsl:value-of select="'A big string'"/>
                                </xsl:when>
                                <!-- 2. "A small string" ако дължината на стойността на track елемента е по-малка от 15: -->
                                <xsl:when test="string-length(.) &lt; 15"> <!-- &gt;  <=>  по-малко (<) -->
                                    <xsl:value-of select="'A small string'"/>
                                </xsl:when>
                                <!-- 3. "A medium string" ако дължината на стойността на track не отговаря на нито едно от горните условия: -->
                                <xsl:otherwise> 
                                    <xsl:value-of select="'A medium string'"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>