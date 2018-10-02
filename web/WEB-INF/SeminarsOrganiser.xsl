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
                    <th>Description</th>
                    <th>Speakers</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Duration</th>
                    <th>Venue</th>
                    <th>Contact</th>
                  
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
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="name" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="description" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="speakers" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="date" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="time" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="duration" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="venue" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="organiserEmail" /> 
                    </button>                           
                </form>
            </td>
            
        </tr>
    </xsl:template>
    
</xsl:stylesheet>