<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="catalog/cd">
        <cd>
            <title>
                <xsl:copy-of select="title"/> <!--1. Стойността на под-елемента title, като използвам елементът <xsl:copy-of>-->
            </title>
            <tracklist>
                <xsl:copy-of select="tracklist"/> <!--2. Под-елемента tracklist заедно с цялата негова структура, като използвам елементът <xsl:copy-of>-->
            </tracklist>
        </cd>
    </xsl:template>
</xsl:stylesheet>
