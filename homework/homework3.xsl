<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/homework3">
        <html>
            <link rel="stylesheet" type="text/css" href="https://jayceechapman.github.io/css/main.css"/>
            <body>
                <h2>*~Plant Catalog~*</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>COMMON</th>
                        <th>BOTANICAL</th>
                        <th>ZONE</th>
                        <th>LIGHT</th>
                        <th>PRICE</th>
                        <th>AVAILABILITY</th>
                    </tr>
                    <xsl:for-each select="PLANT">
                        <xsl:sort select="COMMON"/>
                        <xsl:sort select="BOTANICAL"/>
                        <xsl:sort select="ZONE"/>
                        <xsl:sort select="LIGHT"/>
                        <xsl:sort select="PRICE"/>
                        <xsl:sort select="AVAILABILITY"/>
                        <tr>
                            <td><xsl:value-of select="COMMON"/></td>
                            <td><xsl:value-of select="BOTANICAL"/></td>
                            <td><xsl:value-of select="ZONE"/></td>
                            <td><xsl:value-of select="LIGHT"/></td>
                            <td><xsl:value-of select="PRICE"/></td>
                            <td><xsl:value-of select="AVAILABILITY"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>