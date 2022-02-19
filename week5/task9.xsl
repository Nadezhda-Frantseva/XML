<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
   <xsl:template match="catalog">    
         <xsl:for-each select="cd">
            <xsl:element name="cd"> <!--Създаване на елемента cd-->     
               <xsl:element name="title"> <!--Създаване на елемента title--> 
                  <xsl:value-of select="title"/>
               </xsl:element>
               <xsl:element name="tracklist"> <!--Създаване на елемента tracklist--> 
                  <xsl:attribute name="id"> <!--Създаване на атрибута id--> 
                     <xsl:value-of select="tracklist/@num"/>
                  </xsl:attribute>
                  <xsl:for-each select="tracklist/track">
                     <xsl:element name="track"> <!--Създаване на елемента track--> 
                        <xsl:attribute name="length"> <!--Създаване на атрибута length--> 
                           <xsl:value-of select="@length"/>
                        </xsl:attribute>
                        <xsl:value-of select="text()"/>
                     </xsl:element>
                  </xsl:for-each>
               </xsl:element>
            </xsl:element>      
         </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>