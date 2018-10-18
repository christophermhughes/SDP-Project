<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    <xsl:template match="Attendees">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="..\NameTags.css"/>
            </head>
            <body>
                <xsl:apply-templates select="Attendees"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Attendees">
        
        <xsl:apply-templates />      
        
    </xsl:template>
    <xsl:template match="Attendee" >
        <body style="width: 8.268in;
    margin: 0in .1875in;" >

            <div class="label" style= "  /* Avery L7163 labels */
    width: 3.302in; /* plus .6 inches from padding */
    height: 1.375in; /* plus .125 inches from padding */
    padding: .125in .3in 0;
    margin-right: .125in; /* the gutter */

    float: left;

    text-align: center;
    overflow: hidden;

    outline: 3px solid; /* outline doesn't occupy space like border does */"
            >
    
                <br/> 
                <xsl:value-of select="Firstname" />
                <xsl:text>        </xsl:text>
                <xsl:value-of select="Lastname" />

            </div>
            <div class="page-break"></div>

        </body>
        
    </xsl:template>
</xsl:stylesheet>
