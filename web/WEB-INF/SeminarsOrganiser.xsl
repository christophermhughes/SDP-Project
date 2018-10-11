<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <link rel="stylesheet" type="text/css" href="..\style.css?v=1"/>
                <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
                <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
                <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
                <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
        <table id="table" class="semTable" border="1" frame="void" rules="all" align="center">
            <thead>
                <tr class="headerRow">
                    <th>Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Venue</th>     
                  
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
                    <button class="semTBtn" onclick="form.submit()" value="{name}" > 
                        <xsl:value-of select="name" /> 
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
                        <xsl:value-of select="venue" /> 
                    </button>                           
                </form>
            </td>
            
        </tr>
         <script>
            <![CDATA[
            var $rows = $('#table tbody tr');
            $('#searchLoc').keyup(function() {
            var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
    
            $rows.show().filter(function() {
            var text = $(this.cells[3]).text().replace(/\s+/g, ' ').toLowerCase();
            return !~text.indexOf(val);
            }).hide();
            });
            ]]>
            
            <![CDATA[
            var $rows = $('#table tbody tr');
            $('#searchDat').keyup(function() {
            var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
    
            $rows.show().filter(function() {
            var text = $(this.cells[1]).text().replace(/\s+/g, ' ').toLowerCase();
            return !~text.indexOf(val);
            }).hide();
            });
            ]]>
        </script>
    </xsl:template>
    
</xsl:stylesheet>