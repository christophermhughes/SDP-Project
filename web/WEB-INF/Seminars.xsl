<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    <xsl:template match="seminars">
        <html>
            <head>
                <style>
                    table{
                    width:50%;
                    }
                    th, td {
                    text-align:left;
                    padding: 8px;
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
                <p>Seminars </p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="seminars">
        <table>
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
                <xsl:value-of select="SeminarName" />
            </td>
            <td>
                <xsl:value-of select="SeminarTime" />
            </td>
            <td>
                <xsl:value-of select="SeminarDate" />
            </td>
            <td>
                <xsl:value-of select="SeminarLocation" />
            </td>
            <td>
                <xsl:value-of select="SeminarDesc"/>
            </td>
            <td>
                <xsl:template match="Speakers">
                <xsl:value-of select="Speaker"/>
                </xsl:template>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
