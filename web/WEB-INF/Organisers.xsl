<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    <xsl:template match="Organisers">
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
    <xsl:template match="Organisers">
        <table>
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Faculty</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates />
            </tbody>
        </table>
    </xsl:template>
    <xsl:template match="Organiser">
        <tr>
            <td>
                <form action="OrganiserDetails.jsp" method="post">   
                    <input type="text" name="orgEmail" value="{email}" hidden="true"/>           
                    <input type="submit" value="{firstName}"/>   <!--  <xsl:value-of select="Name" /> -->                          
                </form>
            </td>
             <td>
                <xsl:value-of select="lastName" />
            </td>
            <td>
                <xsl:value-of select="phoneNumber" />
            </td>
            <td>
                <xsl:value-of select="email" />
            </td>
            <td>
                <xsl:value-of select="password" />
            </td>
            <td>
                <xsl:value-of select="faculty" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
