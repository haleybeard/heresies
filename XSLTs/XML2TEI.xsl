<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
 
 <!-- This exports the .xml type -->
    <xsl:output method="xml" encoding="utf-8" indent="yes"/>
<!--     <xsl:strip-space elements="*"/>-->

    <xsl:template match="/">
        <xsl:processing-instruction name="xml-model"> 
            href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0" 
        href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml"
	schematypens="http://purl.oclc.org/dsdl/schematron"
        </xsl:processing-instruction>
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- This replaces the default teiHeader with the Heresies Project teiHeader -->
    <xsl:template match="tei:teiHeader">
        <teiHeader xmlns="http://www.tei-c.org/ns/1.0">
            <fileDesc>
                <titleStmt>
                    <title>[ESSAY TITLE]</title>
                    <author>[ESSAY AUTHOR]</author>
                    
                    <respStmt>
                        <persName>Haley Beardsley</persName>
                        <resp>Editor, encoder</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Erica Delsandro</persName>
                        <resp>Investigator, editor</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Margaret Hunter</persName>
                        <resp>Editor</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Diane Jakacki</persName>
                        <resp>Invesigator, encoder</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Sophie McQuaide</persName>
                        <resp>Editor</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Olivia Martin</persName>
                        <resp>Editor, encoder</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Bri Perea</persName>
                        <resp>Editor</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Roger Rothman</persName>
                        <resp>Investigator, editor</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Kaitlyn Segreti</persName>
                        <resp>Editor</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Maggie Smith</persName>
                        <resp>Editor</resp>
                    </respStmt>
                    <respStmt>
                        <persName>Maya Wadhwa</persName>
                        <resp>Editor</resp>
                    </respStmt>
                    <funder>Bucknell University Humanities Center</funder>
                    <funder>Bucknell University Office of Undergraduate Research</funder>
                    <funder>The Mellon Foundation</funder>
                    <funder>National Endowment for the Humanities</funder>
                </titleStmt>
                <publicationStmt>
                    <distributor>
                        <name>Bucknell University</name>
                        <address>
                            <street>One Dent Drive</street>
                            <settlement>Lewisburg</settlement>
                            <region>Pennsylvania</region>
                            <postCode>17837</postCode>
                        </address>
                    </distributor>
                    <availability>
                        <licence>Bucknell Heresies Project: Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)</licence>
                        <licence>Heresies journal: © Heresies Collective</licence>
                    </availability>
                </publicationStmt>
                <sourceDesc>
                    <biblStruct>
                        <analytic><title>[ISSUE TITLE]</title></analytic>
                        <monogr>
                            <imprint>
                                <publisher>HERESIES: A Feminist Publication on Art and Politics</publisher>
                                <pubPlace>
                                    <address>
                                        <name>Heresies</name>
                                        <postBox>P.O. Boxx 766, Canal Street Station</postBox>
                                        <settlement>New York</settlement>
                                        <region>New York</region>
                                        <postCode>10013</postCode>
                                    </address>
                                </pubPlace>
                            </imprint>
                        </monogr>
                    </biblStruct>
                </sourceDesc>
            </fileDesc>
        </teiHeader>
        <xsl:apply-templates/>
    </xsl:template>

<!-- This removes the duplicated fileDesc structure (which is now managed by the above -->
        <xsl:template match="tei:fileDesc"/>
 
<!-- This strips out the lb tags that are auto-generated by Transkribus -->
    <xsl:template match="tei:lb"/>
    
    

    
   <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    
</xsl:stylesheet>