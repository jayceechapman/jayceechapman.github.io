<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:template match="CATALOG">
        <html>
            <head>
                <style>
                        @font-face {
                        font-family: 'lemon_milklight';
                        src: url('lemonmilk-light-webfont.woff') format('woff');
                        font-weight: normal;
                        font-style: normal;
                        
                        }
                        @font-face {
                        font-family: 'optimusprincepsregular';
                        src:  url('optimusprinceps-webfont.woff') format('woff');
                        font-weight: normal;
                        font-style: normal;
                        
                        }
                        th {
                        font-family: 'lemon_milklight';
                        
                        }
                        
                        table {
                        border-collapse: collapse;
                        width: 80%;
                        }
                        
                       p, td {
                       font-family:'optimusprincepsregular';
                       }
                       
                        td, th {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 10px;
                        }
                        
                        tr:nth-child(even) {
                        background-color: #e5f0da;
                        }
                        h1 {
                        font-size:50px;
                        font-family: 'lemon_milklight';
                        }
                    </style>

                <title>Transformation 1</title>
                <link rel="stylesheet" type="test/css"
                    href="https://jayceechapman.github.io/css/main.css"/>
            </head>
            <body>
                <center>

                    <h1>PLANT CATALOG</h1>
                    <p>Our plants currently available!</p>
                    <table>
                        <th>COMMON NAME</th>
                        <th>SCIENTIFIC NAME</th>
                        <th>ZONE</th>
                        <th>SUNLIGHT</th>
                        <th>PRICE</th>
                        <th>AVAILABILITY</th>
                        <xsl:apply-templates/>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="PLANT">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="COMMON">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="BOTANICAL">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="ZONE">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="LIGHT">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="PRICE">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="AVAILABILITY">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>

</xsl:stylesheet>
