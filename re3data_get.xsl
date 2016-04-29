<?xml version="1.0" encoding="UTF-8"?>
<!-- apply to http://service.re3data.org/api/v1/repositories -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:r3d="http://www.re3data.org/schema/2-2">
<xsl:template match="/">
        <xsl:apply-templates/>
</xsl:template>  
    <xsl:template match="repository">
        <xsl:apply-templates/>
    </xsl:template>     
<xsl:template match="link">
    <xsl:value-of select="concat('http://service.re3data.org',@href)"/>
    <xsl:variable name="doc" select="document(concat('http://service.re3data.org',@href))/r3d:re3data"/>
    <xsl:apply-templates select='$doc' >
        <xsl:with-param name="identifier"><xsl:value-of select="../id"/></xsl:with-param>
    </xsl:apply-templates>
</xsl:template>    
<xsl:template match='r3d:repository'>
    <xsl:param name="identifier"></xsl:param>
    <xsl:result-document method="xml"  indent="yes"  href="re3iso/{$identifier}.xml">

 <!--   <xsl:value-of select="./r3d:repositoryName"/>
    
        <xsl:value-of select="./r3d:re3data.orgIdentifie"/>
    <r3d:re3data.orgIdentifier>r3d100000002</r3d:re3data.orgIdentifier>
    
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:repositoryName language="eng">Access to Archival Databases</r3d:repositoryName>
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:additionalName language="eng">AAD</r3d:additionalName>
    
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:repositoryURL>http://aad.archives.gov/aad/</r3d:repositoryURL>
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:repositoryIdentifier>RRID:nlx_157752</r3d:repositoryIdentifier>
        <xsl:value-of select="r3d:description"/>
    <r3d:description language="eng">You will find in the Access to Archival Databases (AAD) resource online access to records in a small selection of historic databases preserved permanently in NARA. Out of the nearly 200,000 data files in its holdings, NARA has selected approximately 475 of them for public searching through AAD. We selected these data because the records identify specific persons, geographic areas, organizations, and dates. The records cover a wide variety of civilian and military functions and have many genealogical, social, political, and economic research uses. AAD provides: Access to over 85 million historic electronic records created by more than 30 agencies of the U.S. federal government and from collections of donated historical materials.Both free-text and fielded searching options. The ability to retrieve, print, and download records with the specific information that you seek. Information to help you find and understand the records.</r3d:description>
    
    <xsl:value-of select="./r3d:repositoryName"/>
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:type>disciplinary</r3d:type>
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:size updated=""/>
    
        <xsl:value-of select="./r3d:startDate"/>
    <r3d:startDate>1985</r3d:startDate>
    
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:endDate/>
   
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:repositoryLanguage>eng</r3d:repositoryLanguage>
    <r3d:repositoryLanguage>spa</r3d:repositoryLanguage>
    
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:subject subjectScheme="DFG">102 History</r3d:subject>
    <r3d:subject subjectScheme="DFG">11 Humanities</r3d:subject>
    <r3d:subject subjectScheme="DFG">1 Humanities and Social Sciences</r3d:subject>
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:missionStatementURL/>
     
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:contentType contentTypeScheme="parse">Structured text</r3d:contentType>
    <r3d:contentType contentTypeScheme="parse">Standard office documents</r3d:contentType>
    <r3d:contentType contentTypeScheme="parse">Images</r3d:contentType>
    <r3d:contentType contentTypeScheme="parse">other</r3d:contentType>
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:providerType>dataProvider</r3d:providerType>
    <xsl:value-of select="./r3d:repositoryName"/>
    <r3d:keyword>US History</r3d:keyword>
    
        <r3d:institution>
            <xsl:value-of select="r3d:institutionName"/>
            <r3d:institutionName language="eng">The U.S. National Archives and Records Administration</r3d:institutionName>
            <r3d:institutionAdditionalName language="eng">National Archives</r3d:institutionAdditionalName>
            <r3d:institutionAdditionalName language="eng">NARA</r3d:institutionAdditionalName>
            <r3d:institutionCountry>USA</r3d:institutionCountry>
            <r3d:responsibilityType>general</r3d:responsibilityType>
            <r3d:institutionType>non-profit</r3d:institutionType>
            <r3d:institutionURL>http://www.archives.gov/</r3d:institutionURL>
            <r3d:responsibilityStartDate></r3d:responsibilityStartDate>
            <r3d:responsibilityEndDate></r3d:responsibilityEndDate>
            <r3d:institutionContact>http://www.archives.gov/contact/</r3d:institutionContact>
        </r3d:institution>
        <r3d:institution>
            <r3d:institutionName language="eng">The USA.gov</r3d:institutionName>
            <r3d:institutionCountry>USA</r3d:institutionCountry>
            <r3d:responsibilityType>general</r3d:responsibilityType>
            <r3d:institutionType>non-profit</r3d:institutionType>
            <r3d:institutionURL>http://www.usa.gov/</r3d:institutionURL>
            <r3d:responsibilityStartDate></r3d:responsibilityStartDate>
            <r3d:responsibilityEndDate></r3d:responsibilityEndDate>
            <r3d:institutionContact>http://www.usa.gov/Contact.shtml</r3d:institutionContact>
        </r3d:institution>
        <r3d:policy>
            <r3d:policyName>Privacy and Use</r3d:policyName>
            <r3d:policyURL>http://www.archives.gov/global-pages/privacy.html</r3d:policyURL>
        </r3d:policy>
        <r3d:databaseAccess>
            <r3d:databaseAccessType>open</r3d:databaseAccessType>
        </r3d:databaseAccess>
        <r3d:dataAccess>
            <r3d:dataAccessType>open</r3d:dataAccessType>
        </r3d:dataAccess>
        <r3d:dataLicense>
            <r3d:dataLicenseName>Copyrights</r3d:dataLicenseName>
            <r3d:dataLicenseURL>http://www.archives.gov/global-pages/privacy.html#copyright</r3d:dataLicenseURL>
        </r3d:dataLicense>
        <r3d:dataUpload>
            <r3d:dataUploadType>restricted</r3d:dataUploadType>
            <r3d:dataUploadRestriction>other</r3d:dataUploadRestriction>
        </r3d:dataUpload>
        <r3d:software>
            <r3d:softwareName>unknown</r3d:softwareName>
        </r3d:software>
        <r3d:versioning>no</r3d:versioning>
        <r3d:pidSystem>none</r3d:pidSystem>
        <r3d:citationGuidelineURL></r3d:citationGuidelineURL>
        <r3d:enhancedPublication></r3d:enhancedPublication>
        <r3d:qualityManagement>unknown</r3d:qualityManagement>
        <r3d:syndication syndicationType="RSS">http://www.archives.gov/social-media/rss-feeds.html</r3d:syndication>
        <r3d:remarks></r3d:remarks>
        <r3d:entryDate>2012-07-04</r3d:entryDate>
        <r3d:lastUpdate>2015-04-13</r3d:lastUpdate>
      
        <xsl:copy-of select="."/>
   -->     
        <gmd:MD_Metadata xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gco="http://www.isotc211.org/2005/gco"
                 xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:gml="http://www.opengis.net/gml"
                 xmlns:xlink="http://www.w3.org/1999/xlink">

    <gmd:fileIdentifier>
        <gco:CharacterString><xsl:value-of select="$identifier"/></gco:CharacterString>
    </gmd:fileIdentifier>
    <gmd:language>
        <gco:CharacterString>en</gco:CharacterString>
    </gmd:language>

    
    <gmd:hierarchyLevel>
        <gmd:MD_ScopeCode codeSpace="ISOTC211/19115" codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_ScopeCode"
        codeListValue="service">service</gmd:MD_ScopeCode>
    </gmd:hierarchyLevel>
   
    <gmd:contact>
        <gmd:CI_ResponsibleParty>
            <gmd:organisationName>
                <gco:CharacterString>Earthcube CINERGI Metadata Pipeline</gco:CharacterString>
            </gmd:organisationName>
            <gmd:positionName>
                <gco:CharacterString>CINERGI Metadata Contact</gco:CharacterString>
            </gmd:positionName>

            <gmd:contactInfo>
                <gmd:CI_Contact>
                    <gmd:address>
                        <gmd:CI_Address>
                            <gmd:electronicMailAddress>
                                <gco:CharacterString>metadata@earthcube.org</gco:CharacterString>
                            </gmd:electronicMailAddress>
                        </gmd:CI_Address>
                    </gmd:address>
                </gmd:CI_Contact>
            </gmd:contactInfo>
            <gmd:role>
                <gmd:CI_RoleCode codeSpace="ISOTC211/19115"
                                 codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_RoleCode"
                                 codeListValue="pointOfContact">pointOfContact
                </gmd:CI_RoleCode>
            </gmd:role>
        </gmd:CI_ResponsibleParty>
    </gmd:contact>

    <gmd:dateStamp gco:nilReason="unknown"/>
    <!--
    <gmd:metadataStandardName>
        <gco:CharacterString>ISO 19139/19115 Metadata for Datasets</gco:CharacterString>
    </gmd:metadataStandardName>
    -->

    <gmd:metadataStandardVersion>
        <gco:CharacterString>2003</gco:CharacterString>
    </gmd:metadataStandardVersion>
            
            <gmd:dataSetURI>
                <gco:CharacterString><xsl:value-of select="./r3d:repositoryURL"/></gco:CharacterString>
            </gmd:dataSetURI>

            <xsl:if test="./r3d:repositoryName">
    <gmd:identificationInfo>
        <gmd:MD_DataIdentification>
            <gmd:citation>
                <gmd:CI_Citation>
                    <gmd:title>
                        <gco:CharacterString><xsl:value-of select="./r3d:repositoryName"/></gco:CharacterString>
                    </gmd:title>
                    <xsl:choose>
                        <xsl:when test="./r3d:startDate and ./r3d:startDate != ''">
                    <gmd:date>
                        <gmd:CI_Date>
                           
                            
                       
             
                                <gmd:date>
                                    <gco:Date><xsl:value-of select="./r3d:startDate"/></gco:Date>
                                </gmd:date>
                            

                            <gmd:dateType>
                                <gmd:CI_DateTypeCode codeSpace="ISOTC211/19115"
                                                     codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_DateTypeCode"
                                                     codeListValue="publication">publication
                                </gmd:CI_DateTypeCode>
                            </gmd:dateType>
                        </gmd:CI_Date>
                    </gmd:date>
                        </xsl:when>
                        <xsl:otherwise>
                            
                            <gmd:date gco:nilReason="unknown"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </gmd:CI_Citation>
            </gmd:citation>

            <xsl:choose>
                <xsl:when test="./r3d:description">
            <gmd:abstract>
                <gco:CharacterString><xsl:value-of select="r3d:description"/></gco:CharacterString>
            </gmd:abstract>
                </xsl:when>
<xsl:otherwise>
            <gmd:abstract gco:nilReason="unknown"/>
</xsl:otherwise>
            </xsl:choose> 

            <xsl:for-each select=" r3d:institution">
                
                <!-- also  r3d:repositoryContact -->
            <gmd:pointOfContact>
                <gmd:CI_ResponsibleParty>
                    <xsl:if test="r3d:institutionName">
                  <!--  <gmd:individualName>
                        <gco:CharacterString>{{ row['Resource steward person#info'] }}</gco:CharacterString>
                    </gmd:individualName>
                    -->
                   
                    <gmd:organisationName>
                        <gco:CharacterString><xsl:value-of select="r3d:institutionName"/></gco:CharacterString>
                    </gmd:organisationName>
                    </xsl:if>
                    <!--multiple r3d:institutionContact -->
               <!--     {% if row['Resource POC e-mail#info'] or row['Resource POC voice phone#info'] %}

                    <gmd:contactInfo>
                        <gmd:CI_Contact>
                            {% if row['Resource POC voice phone#info'] %}
                            <gmd:phone>
                                <gmd:CI_Telephone>
                                    <gmd:voice>
                                        <gco:CharacterString>{{ row['Resource POC voice phone#info'] }}
                                        </gco:CharacterString>
                                    </gmd:voice>
                                </gmd:CI_Telephone>
                            </gmd:phone>
                            {% endif %}
                            {% if row['Resource POC e-mail#info'] %}
                            <gmd:address>
                                <gmd:CI_Address>
                                    <gmd:electronicMailAddress>
                                        <gco:CharacterString>{{ row['Resource POC e-mail#info'] }}</gco:CharacterString>
                                    </gmd:electronicMailAddress>

                                </gmd:CI_Address>
                            </gmd:address>
                            {% endif %}
                        </gmd:CI_Contact>
                    </gmd:contactInfo>
                    {% endif %}
                    -->
                    <!-- need to do some r3d:responsibilityType -->
                    <gmd:role>
                        <gmd:CI_RoleCode codeSpace="ISOTC211/19115"
                                         codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_RoleCode"
                                         codeListValue="custodian">custodian
                        </gmd:CI_RoleCode>
                    </gmd:role>
                </gmd:CI_ResponsibleParty>
            </gmd:pointOfContact>
            </xsl:for-each>

            <xsl:for-each-group select="r3d:subject" group-by="@subjectScheme" >
            <gmd:descriptiveKeywords>
                <gmd:MD_Keywords>
                    <xsl:variable name='subject' select="current-grouping-key()"/>
                    <xsl:for-each select="//r3d:subject[@subjectScheme=$subject]">
                                          
                    <gmd:keyword>
                        <gco:CharacterString><xsl:value-of select="."/>
                            
                        </gco:CharacterString>
                    </gmd:keyword>

                    </xsl:for-each>
                    <gmd:type>
                        <gmd:MD_KeywordTypeCode codeSpace="ISOTC211/19115"
                                                codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_KeywordTypeCode"
                                                codeListValue="theme">theme
                        </gmd:MD_KeywordTypeCode>
                    </gmd:type>
                    <gmd:thesaurusName>
                        <gmd:CI_Citation>
                            <gmd:title>
                                <gco:CharacterString><xsl:value-of select="$subject"/></gco:CharacterString>
                            </gmd:title>
                            <gmd:date gco:nilReason="unknown">

                            </gmd:date>
                        </gmd:CI_Citation>
                    </gmd:thesaurusName>
                </gmd:MD_Keywords>
            </gmd:descriptiveKeywords>
            </xsl:for-each-group>

            <xsl:if test="r3d:keyword">
            <gmd:descriptiveKeywords>
                <gmd:MD_Keywords>

                    <xsl:for-each select="r3d:keyword">
                    <gmd:keyword>
                        <gco:CharacterString><xsl:value-of select="."></xsl:value-of></gco:CharacterString>
                    </gmd:keyword>
                    </xsl:for-each>
                    <gmd:type>
                        <gmd:MD_KeywordTypeCode codeSpace="ISOTC211/19115"
                                                codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_KeywordTypeCode"
                                                codeListValue="place">theme</gmd:MD_KeywordTypeCode>
                    </gmd:type>
                </gmd:MD_Keywords>
            </gmd:descriptiveKeywords>
          </xsl:if>


           <xsl:if test="false()" >
            <gmd:descriptiveKeywords>
                <gmd:MD_Keywords>

                    {% for item in row['Subjects#multi'] .split(',') %}
                    <gmd:keyword>
                        <gco:CharacterString>{{ item|trim }}</gco:CharacterString>
                    </gmd:keyword>
                    {% endfor %}
                    <gmd:type>
                        <gmd:MD_KeywordTypeCode codeSpace="ISOTC211/19115"
                                                codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_KeywordTypeCode"
                                                codeListValue="theme">theme
                        </gmd:MD_KeywordTypeCode>
                    </gmd:type>

                    <gmd:thesaurusName>
                        <gmd:CI_Citation>
                            <gmd:title>
                                <gco:CharacterString>re3 Themes</gco:CharacterString>
                            </gmd:title>
                            <gmd:date>
                                <gmd:CI_Date>
                                    <gmd:date>
                                        <gco:Date>2015-01-01</gco:Date>
                                    </gmd:date>
                                    <gmd:dateType>
                                        <gmd:CI_DateTypeCode codeListValue="publication" codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_DateTypeCode"
                                                />
                                    </gmd:dateType>
                                </gmd:CI_Date>
                            </gmd:date>
                        </gmd:CI_Citation>
                    </gmd:thesaurusName>
                </gmd:MD_Keywords>
            </gmd:descriptiveKeywords>
           </xsl:if>

            <xsl:if test="r3d:dataUpload">
            <gmd:descriptiveKeywords>
                <gmd:MD_Keywords>

                    <xsl:for-each select="r3d:dataUpload">
                        <xsl:if test="./r3d:dataUploadType  and ./r3d:dataUploadType !=''">
                        <gmd:keyword>
                            <gco:CharacterString><xsl:value-of select="./r3d:dataUploadType"/></gco:CharacterString>
                        </gmd:keyword>
                        </xsl:if>
                        <xsl:if test="./dataUploadRestriction  and ./dataUploadRestriction !=''">
                        <gmd:keyword>
                            <gco:CharacterString><xsl:value-of select="./dataUploadRestriction"/></gco:CharacterString>
                        </gmd:keyword>
                        </xsl:if>  
                    </xsl:for-each>
                    <gmd:type>
                        <gmd:MD_KeywordTypeCode codeSpace="ISOTC211/19115"
                                                codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_KeywordTypeCode"
                                                codeListValue="theme">theme
                        </gmd:MD_KeywordTypeCode>
                    </gmd:type>

                    <gmd:thesaurusName>
                        <gmd:CI_Citation>
                            <gmd:title>
                                <gco:CharacterString>re3 Deposit</gco:CharacterString>
                            </gmd:title>
                            <gmd:date>
                                <gmd:CI_Date>
                                    <gmd:date>
                                        <gco:Date>2015-01-01</gco:Date>
                                    </gmd:date>
                                    <gmd:dateType>
                                        <gmd:CI_DateTypeCode codeListValue="publication" codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_DateTypeCode"
                                                />
                                    </gmd:dateType>
                                </gmd:CI_Date>
                            </gmd:date>
                        </gmd:CI_Citation>
                    </gmd:thesaurusName>
                </gmd:MD_Keywords>
            </gmd:descriptiveKeywords>
            </xsl:if>

    <!--                  {% if row['Reuse'] %}
            <gmd:descriptiveKeywords>
                <gmd:MD_Keywords>

                    {% for item in row['Reuse'] .split(';') %}
                    <gmd:keyword>
                        <gco:CharacterString>{{ item|trim }}</gco:CharacterString>
                    </gmd:keyword>
                    {% endfor %}
                    <gmd:type>
                        <gmd:MD_KeywordTypeCode codeSpace="ISOTC211/19115"
                                                codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_KeywordTypeCode"
                                                codeListValue="theme">theme
                        </gmd:MD_KeywordTypeCode>
                    </gmd:type>

                    <gmd:thesaurusName>
                        <gmd:CI_Citation>
                            <gmd:title>
                                <gco:CharacterString>re3 Reuse</gco:CharacterString>
                            </gmd:title>
                            <gmd:date>
                                <gmd:CI_Date>
                                    <gmd:date>
                                        <gco:Date>2015-01-01</gco:Date>
                                    </gmd:date>
                                    <gmd:dateType>
                                        <gmd:CI_DateTypeCode codeListValue="publication" codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_DateTypeCode"
                                                />
                                    </gmd:dateType>
                                </gmd:CI_Date>
                            </gmd:date>
                        </gmd:CI_Citation>
                    </gmd:thesaurusName>
                </gmd:MD_Keywords>
            </gmd:descriptiveKeywords>
            {% endif %}
            -->
            <!-- https://geo-ide.noaa.gov/wiki/index.php?title=ISO_Constraints -->
            <gmd:resourceConstraints>
                <gmd:MD_Constraints>
                    <gmd:useLimitation>
                        <gco:CharacterString>Disclaimer - While every effort has been made to ensure that these data are 
                            accurate and reliable within the limits of the current state of the art, NOAA cannot assume liability for any 
                            damages caused by any errors or omissions in the data, nor as a result of the failure of the data to 
                            function on a particular system. NOAA makes no warranty, expressed or implied, nor does the fact 
                            of distribution constitute such a warranty.</gco:CharacterString>
                    </gmd:useLimitation>
                    
                </gmd:MD_Constraints>
            </gmd:resourceConstraints>
            <gmd:resourceConstraints>
                <gmd:MD_LegalConstraints>
                    <gmd:accessConstraints>
                        <gmd:MD_RestrictionCode codeList="http://www.ngdc.noaa.gov/metadata/published/xsd/schema/resources/
                            Codelist/gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions">otherRestrictions</gmd:MD_RestrictionCode>
                    </gmd:accessConstraints>
                    <gmd:useConstraints>
                        <gmd:MD_RestrictionCode codeList="http://www.ngdc.noaa.gov/metadata/published/xsd/schema/resources/
                            Codelist/gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions">otherRestrictions</gmd:MD_RestrictionCode>
                    </gmd:useConstraints>
                    <gmd:otherConstraints>
                        <gco:CharacterString>WMO Essential</gco:CharacterString>
                    </gmd:otherConstraints>
                </gmd:MD_LegalConstraints>
            </gmd:resourceConstraints>
   
            
            
            <xsl:for-each select="r3d:repositoryLanguage">
                

            <gmd:language>
                <gco:CharacterString><xsl:value-of select="."></xsl:value-of></gco:CharacterString>
            </gmd:language>
            </xsl:for-each>
            <!-- <r3d:type> ??? -->
            <!--
            <gmd:topicCategory>
                <gmd:MD_TopicCategoryCode>society</gmd:MD_TopicCategoryCode>
            </gmd:topicCategory>
-->

            <!--
                  <gmd:extent>
                      <gmd:EX_Extent>
                          <gmd:geographicElement>
                              <gmd:EX_GeographicBoundingBox>
                                  <gmd:westBoundLongitude>
                                      <gco:Decimal>-180</gco:Decimal>
                                  </gmd:westBoundLongitude>
                                  <gmd:eastBoundLongitude>
                                      <gco:Decimal>180</gco:Decimal>
                                  </gmd:eastBoundLongitude>
                                  <gmd:southBoundLatitude>
                                      <gco:Decimal>-90</gco:Decimal>
                                  </gmd:southBoundLatitude>
                                  <gmd:northBoundLatitude>
                                      <gco:Decimal>90</gco:Decimal>
                                  </gmd:northBoundLatitude>
                              </gmd:EX_GeographicBoundingBox>
                          </gmd:geographicElement>
                          <gmd:temporalElement>
                              <gmd:EX_TemporalExtent>
                                  <gmd:extent>
                                      <gml:TimePeriod gml:id="Temporal">
                                          <gml:beginPosition>[startdate 1999-01-01]</gml:beginPosition>
                                          <gml:endPosition>[enddate - 2000-12-31]</gml:endPosition>
                                      </gml:TimePeriod>
                                  </gmd:extent>
                              </gmd:EX_TemporalExtent>
                          </gmd:temporalElement>
                      </gmd:EX_Extent>
                  </gmd:extent>
                  -->
            <!-- repeatable -->
            <gmd:supplementalInformation>
                <gco:CharacterString></gco:CharacterString>
            </gmd:supplementalInformation> 
        </gmd:MD_DataIdentification>
    </gmd:identificationInfo>
  </xsl:if>

            <!--r3d:repositoryURL
                r3d:api (multiple)
                <r3d:syndication syndicationType="RSS">http://www.globalresearchdatarepository.org/news.rss</r3d:syndication>  optional multiple 
 
                -->
                
                <xsl:if test="r3d:repositoryURL"> 
    <gmd:distributionInfo>
        <gmd:MD_Distribution>
            <gmd:distributionFormat>
                <gmd:MD_Format>
                    <gmd:name>
                        <gco:CharacterString>Resource URL</gco:CharacterString>
                    </gmd:name>
                    <gmd:version>
                        <gco:CharacterString>0.0</gco:CharacterString>
                    </gmd:version>
                </gmd:MD_Format>

            </gmd:distributionFormat>

            <gmd:transferOptions>
                <gmd:MD_DigitalTransferOptions>
                    <gmd:onLine>
                        <gmd:CI_OnlineResource>
                            <gmd:linkage>
                                <gmd:URL><xsl:value-of select="r3d:repositoryURL"/></gmd:URL>
                            </gmd:linkage>
                                                     <!--
                        <gmd:name>
                        <gco:CharacterString>CS Technical Report</gco:CharacterString>
                        </gmd:name>
                        <gmd:description>
                        <gco:CharacterString>Final Report for LCM2007 - the new UK Land Cover Map</gco:CharacterString>
                        </gmd:description>
                        -->
                            
                            <gmd:function>
                                <gmd:CI_OnLineFunctionCode
                                        codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_OnLineFunctionCode"
                                        codeListValue="download"/>
                            </gmd:function>
                        </gmd:CI_OnlineResource>
                    </gmd:onLine>
                </gmd:MD_DigitalTransferOptions>
            </gmd:transferOptions>
        </gmd:MD_Distribution>
    </gmd:distributionInfo>
                </xsl:if>

</gmd:MD_Metadata>
    </xsl:result-document>   
</xsl:template>
</xsl:stylesheet>