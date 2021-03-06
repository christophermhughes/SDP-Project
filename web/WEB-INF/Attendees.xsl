<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    <xsl:template match="Attendees">
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
    <xsl:template match="Attendees">
        <table>
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates />
            </tbody>
        </table>
    </xsl:template>
    <xsl:template match="Attendee">
        <tr>
            <td>
                <form action="AttendeeDetails.jsp" method="post">   
                    <input type="hidden" name="id" value="{ID}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{ID}" > 
                        <xsl:value-of select="Firstname" /> 
                    </button>                          
                </form>
                
            </td>
             <td>
                 <form action="AttendeeDetails.jsp" method="post">   
                    <input type="hidden" name="id" value="{ID}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{ID}" > 
                        <xsl:value-of select="Lastname" /> 
                    </button>                          
                </form>
            </td>
            <td>
                <form action="AttendeeDetails.jsp" method="post">   
                    <input type="hidden" name="id" value="{ID}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{ID}" > 
                        <xsl:value-of select="Phone" /> 
                    </button>                          
                </form>
            </td>
            <td>
                <form action="AttendeeDetails.jsp" method="post">   
                    <input type="hidden" name="id" value="{ID}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{ID}" > 
                        <xsl:value-of select="Email" /> 
                    </button>                          
                </form>
            </td>
            <td>
                <form action="AttendeeDetails.jsp" method="post">   
                    <input type="hidden" name="id" value="{ID}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{ID}" > 
                        <xsl:value-of select="Status" /> 
                    </button>                          
                </form>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
