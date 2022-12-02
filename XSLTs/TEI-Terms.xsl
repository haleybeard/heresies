<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:output method="xml" encoding="utf-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
<!--    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>-->
    
<xsl:template match="tei:teiHeader">
    <teiHeader>
        <fileDesc>
            <titleStmt>
                <title type="main">Haley notes</title>
            </titleStmt>
            <publicationStmt>
                <distributor>Bucknell University</distributor>
                <pubPlace>
                    <address>
                        <addrLine>One Dent Drive</addrLine>
                        <addrLine>Lewisburg, PA 17837</addrLine>
                    </address>
                </pubPlace>
                <availability>
                    <licence>Attribution-NonCommercial-ShareAlike 4.0 International</licence>
                </availability>
            </publicationStmt>
            <sourceDesc>
            </sourceDesc>
        </fileDesc>
    </teiHeader>
        <xsl:apply-templates/>
    </xsl:template>

<!-- Changes div structure from div1+ to div @type-->
    <xsl:template match="tei:profileDesc"/>


    
<xsl:template match="tei:note">
    <br>
    <xsl:text>Note: </xsl:text>    
    <xsl:apply-templates/>    
    </br>
</xsl:template>
 

        
 <!--   <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>-->
    

</xsl:stylesheet>
