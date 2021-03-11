<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
    <xsl:variable name= "duracion">2:35</xsl:variable>
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    tr:nth-child(even) td {  background: #f1f1f1;}   
                    tr:nth-child(odd) td {  background: #fefefe;} 
                    tr td:hover  {  background: #DFD5B1;} 
                </style>
            </head>
            <body>
                <h1>Mi Discoteca Personal</h1>
                <table border= "1">
                    <tr bgcolor="a9e3b6">
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Discográfica</th>
                        <th>Publicación</th>
                        <th>Canciones</th>
                        <th>Tiempo</th>
                    </tr>
                    <xsl:for-each select="discoteca/cd">
                        <xsl:variable name= "titulo"><xsl:value-of select="titulo"/></xsl:variable>
                        <xsl:variable name= "artista"><xsl:value-of select="artista"/></xsl:variable>
                        <xsl:variable name= "selloDiscografico"><xsl:value-of select="selloDiscografico"/></xsl:variable>
                        <xsl:variable name= "titanioPublicacionulo"><xsl:value-of select="anioPublicacion"/></xsl:variable>
                        <xsl:for-each select="cancion">
                            <xsl:if test= "@tiempo &lt; $duracion">
                                <tr>
                                    <td><xsl:value-of select="$titulo"/></td>
                                    <td><xsl:value-of select="$artista"/></td>
                                    <td><xsl:value-of select="$selloDiscografico"/></td>
                                    <td><xsl:value-of select="$anioPublicacion"/></td>
                                    <td><xsl:value-of select="."/><br/></td>
                                    <td><xsl:value-of select="@tiempo"/></td>
                                </tr>           
                            </xsl:if>
                        </xsl:for-each>   
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>