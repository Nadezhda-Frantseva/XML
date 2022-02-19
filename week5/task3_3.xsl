<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:for-each select="//track"> <!--3. В нарастващ ред в следния формат: track_1, track_2,...,track_n -->
                    <xsl:sort select="." order="ascending"/> <!--В нарастващ ред-->
                    <xsl:value-of select="text()"/>
                    <xsl:value-of select="'_'"/> <!-- дадения формат от условието: _-->
                    <xsl:number value="position()"/> <!-- дадения формат от условието: позицията-->
                    <xsl:if test="position() != last()"> <!-- проверка да не сме на края на редицата -->
                        <xsl:value-of select="', '"/> <!-- ако не сме - добавяме , и space-->
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>