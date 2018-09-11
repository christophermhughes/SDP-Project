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
    <xsl:template match="Seminars">
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
                <xsl:value-of select="Name" />
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
