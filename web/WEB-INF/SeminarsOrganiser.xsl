<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <link rel="stylesheet" type="text/css" href="..\style.css"/>
            </head>
            <body>
                <xsl:apply-templates select="Seminars"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Seminars">
        <div class="filters">
            <input type="text" id="searchLoc" placeholder="Refine location"/>
            <input type="text" id="searchDat" placeholder="Refine date"/> 
        </div>
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
        <script>
            <![CDATA[
            var $rows = $('#table tbody tr');
            $('#search').keyup(function() {
            var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
    
            $rows.show().filter(function() {
            var text = $(this.cells[6]).text().replace(/\s+/g, ' ').toLowerCase();
            return !~text.indexOf(val);
            }).hide();
            });
            ]]>
            
             <![CDATA[
            var $rows = $('#table tbody tr');
            $('#searchDat').keyup(function() {
            var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
    
            $rows.show().filter(function() {
            var text = $(this.cells[3]).text().replace(/\s+/g, ' ').toLowerCase();
            return !~text.indexOf(val);
            }).hide();
            });
            ]]>
        </script>
    </xsl:template>
    
    <xsl:template match="Seminar">
        <tr>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="name" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="description" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="speakers" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="date" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="time" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="duration" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="venue" /> 
                    </button>                           
                </form>
            </td>
            <td>
                <form action="SeminarDetailsOrganiser.jsp" method="post">   
                    <input type="hidden" name="name" value="{name}"/>  
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="organiserEmail" /> 
                    </button>                           
                </form>
            </td>
            
        </tr>
    </xsl:template>
    
</xsl:stylesheet>