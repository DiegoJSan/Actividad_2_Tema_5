<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
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
                <h1>Mi Dicoteca Personal</h1>
                <table>
                    <tr bgcolor="a9e3b6">
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Discográfica</th>
                        <th>Publicación</th>
                        <th>Canciones</th>
                        <th>Tiempo</th>
                    </tr>
                    <xsl:for-each select="discoteca/cd">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="artista"/></td>
                            <td><xsl:value-of select="selloDiscografico"/></td>
                            <td><xsl:value-of select="anioPublicacion"/></td>
                                <td><xsl:for-each select="cancion">
                                    <xsl:value-of select="."/><br/>
                                </xsl:for-each>
                                </td>
                                <td><xsl:for-each select="cancion/@tiempo">
                                    <xsl:value-of select="."/><br/>
                                </xsl:for-each>
                                </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>