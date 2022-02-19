<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="catalog/cd"> 
        <tr>
            <td>
                <xsl:apply-templates select="title"/> <!--1. неименован шаблон, селектиращ стойността на title-->
                    <xsl:for-each select="title/@*"> <!--селектиране на атрибутите на title-->
                        <attribute_name> <!--името на атрибута-->
                            <xsl:value-of select="name()"/> 
                        </attribute_name>
                        <attribute_value> <!--стойността на атрибута-->
                            <xsl:value-of select="."/>
                        </attribute_value>
                    </xsl:for-each>
            </td>
            <td>
                <xsl:apply-templates select="year"/> <!--2. неименован шаблон, селектиращ стойността на year-->
                    <xsl:for-each select="year/@*"> <!--селектиране на атрибутите на year-->
                        <attribute_name> <!--името на атрибута-->
                            <xsl:value-of select="name()"/> 
                        </attribute_name> 
                        <attribute_value>  <!--стойността на атрибута-->
                            <xsl:value-of select="."/>
                        </attribute_value>
                    </xsl:for-each>
            </td>
            <td>
                <ol>
                    <xsl:apply-templates select="tracklist/track" mode="withoutAttributes"/> <!--3. неименован шаблон с атрибута mode="withoutAttributes", селектиращ: 3. Стойностите на елемента track без неговите атрибути-->
                     <xsl:apply-templates select="tracklist/track" mode="withAttributes"/> <!--3. неименован шаблон с атрибута mode="withAttributes", селектиращ: 4. Стойностите на елемента track заедно с неговите атрибути-->
                </ol>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="catalog/cd/tracklist/track" mode="withAttributes"> 
        <li>
            <xsl:apply-templates select="text()"/>
                <xsl:for-each select="@*"> <!--селектиране на атрибутите на track-->
                    <attribute_name> <!--името на атрибута-->
                        <xsl:value-of select="name()"/> 
                    </attribute_name> 
                    <attribute_value>  <!--стойността на атрибута-->
                        <xsl:value-of select="."/>
                    </attribute_value>
                </xsl:for-each>
        </li>
    </xsl:template>
    <xsl:template match="catalog/cd/tracklist/track" mode="withoutAttributes"> <!--без атрибутите-->
        <li>
            <xsl:apply-templates select="text()"/>
        </li>
    </xsl:template>
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="catalog/cd"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>