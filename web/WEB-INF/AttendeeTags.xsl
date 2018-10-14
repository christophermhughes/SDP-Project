<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    <xsl:template match="Attendees">
        <html>
            <head>
              <style>
                    .table{
                    width:50%;
                    background-color: white;
                    }
                    th, td {
                    text-align:left;
                    padding: 8px;
                   background-color: white;
                  border-style: solid;
                     border-color: black;
                    }
                    th {
                    background-color: #4CAF50;
                    color: white;
                    font-weight:bold;
                    }
                    h2,p{
                    background-color: #4CAF50;
                    width:50%;
                    font-weight:bold;
                    }					
                </style>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Attendees">
        <table>
                <xsl:apply-templates />      
        </table>
    </xsl:template>
    <xsl:template match="Attendee" >
        <table style=" background-color: white;
                    padding-top: 30px;
                    padding-right: 200px;
                    padding-bottom: 80px;
                    padding-left: 200px;
                    text-align:center;
             ">
        <tr style="outline: solid;
                   outline-color: grey;">
            <td style="padding:50px 25px 50px 100px;
                       font-size: 30px;">
                <xsl:value-of select="Firstname" />
            </td >
             <td style="padding:50px 100px 50px 25px;
                        font-size: 30px;">
                <xsl:value-of select="Lastname" />
            </td>
        </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>
