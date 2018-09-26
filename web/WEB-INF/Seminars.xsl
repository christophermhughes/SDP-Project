<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="..\style.css"/>
            </head>
            <body>
                <h2>Seminars </h2>
                <xsl:apply-templates select="Seminars"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Seminars">
        <table class="semTable" border="1" frame="void" rules="all" align="center">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Time</th>
                    <th>Date</th>
                    <th>Location</th>
                    <th>Desc</th>
                    <th>Speaker</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates />
            </tbody>
        </table>
    </xsl:template>
    
    <xsl:template match="Seminar">
        <tr>
            <td>
                <form action="SeminarDetailsAttendee.jsp" method="post">   
                    <input type="text" name="semName" value="{Name}" hidden="true"/>           
                    <input type="submit" value="{Name}"/>   <!--  <xsl:value-of select="Name" /> -->                          
                </form>
            </td>
            <td>
                <xsl:value-of select="Time" />
            </td>
            <td>
                <xsl:value-of select="Date" />
            </td>
            <td>
                <xsl:value-of select="Location" />
            </td>
            <td>
                <xsl:value-of select="Desc"/>
            </td>
            <td>
                <xsl:template match="Speakers">
                    <xsl:value-of select="Speaker"/>
                </xsl:template>
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>