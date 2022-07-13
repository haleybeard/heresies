<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:output method="xml" encoding="utf-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title>The Heresies Project</title>
                </titleStmt>
                <publicationStmt>
                    <p>A Bucknell Production</p>
                </publicationStmt>
                <sourceDesc>
                    <p>Information about the source</p>
                </sourceDesc>
            </fileDesc>
        </teiHeader>
        <xsl:apply-templates/>
    </xsl:template>
        
        <xsl:template match="tei:fileDesc"/>
        
    
    <!-- for recursing through a directory
    <xsl:template match="list">
        <xsl:for-each select="item">
            <xsl:variable name="dir" select="@dir"/>
            <xsl:for-each select="collection(iri-to-uri(concat(@dir, '?select=*.xml')))">
                <xsl:variable name="outpath"
                    select="concat($dir, 'withHeader/', substring-before(tokenize(document-uri(.), '/')[last()], '.xml'))"/>
                <xsl:result-document href="{concat($outpath, '.xml')}">
                    <xsl:apply-templates select="tei:TEI/tei:text"/>
                </xsl:result-document>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template> -->
    
   <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    
</xsl:stylesheet>