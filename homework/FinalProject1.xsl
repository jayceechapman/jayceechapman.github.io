<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:strip-space elements="*"/>
    <xsl:key name="country" match="tr" use="td[2]"/>
    <xsl:template match="div//div/table/tbody">
        <html>
            <head>
                <style>
                    @font-face {
                    font-family: 'lemon_milklight';
                    src: url('lemonmilk-light-webfont.woff') format('woff');
                    font-weight: normal;
                    font-style: normal;
                    }
                    
                    h1 {
                    font-family: 'lemon_milklight';
                    text-align: center;
                    text-transform: uppercase;
                    color: #4CAF50; }
                    
                    h2 {
                    text-align: left;
                    text-transform: uppercase;
                    font-family: 'lemon_milklight';
                    color: #4CAF50; }
                    
                    h3 {
                    text-align: center;
                    }
                    
                    body {
                    margin: 0;
                    font-family: Arial, Helvetica, sans-serif;
                    }
                    
                    .topnav {
                    overflow: hidden;
                    background-color: #343;
                    }
                    
                    .topnav a {
                    float: left;
                    color: #f2f2f2;
                    text-align: center;
                    padding: 14px 16px;
                    font-size: 17px;
                    }
                    
                    .topnav a:hover {
                    background-color: #ddd;
                    color: black;
                    }
                    
                    .topnav a.active {
                    background-color: #4CAF50;
                    color: white;
                    }
                    
                    dd {
                    border-bottom: 1px solid #ddd;
                    padding: 8px;
                    width: 75%;
                    }
                    
                </style>
                <title>African Literature Across the Continent</title>
                <h1>African Literature Across the Continent</h1>
                <h3>Select a Country:</h3>
                <div class="topnav">
                <a href="#Algeria">Algeria</a>
                <a href="#Angola">Angola</a>
                <a href="#Benin">Benin</a>
                <a href="#BurkinaFaso">Burkina Faso</a>
                <a href="#Cameroon">Cameroon</a>
                <a href="#CapeVerde">Cape Verde</a>
                <a href="#DRCongo">Democratic Republic of Congo</a>
                <a href="#Cote">Côte d'Ivoire</a>
                <a href="#Egypt">Egypt</a>
                <a href="#Ghana">Ghana</a>
                <a href="#Guinea">Guinea</a>
                <a href="#GuineaBissau">Guinea Bissau</a>
                <a href="#Kenya">Kenya</a>
                <a href="#Lesotho">Lesotho</a>
                <a href="#Mali">Mali</a>
                <a href="#Morocco">Morocco</a>
                <a href="#Mozambique">Mozambique</a>
                <a href="#Nigeria">Nigeria</a>
                <a href="#Senegal">Senegal</a>
                <a href="#SierraLeone">Sierra Leone</a>
                <a href="#Somalia">Somalia</a>
                <a href="#SouthAfrica">South Africa</a>
                <a href="#Sudan">Sudan</a>
                <a href="#Tanzania">Tanzania</a>
                <a href="#Tunisia">Tunisia</a>
                <a href="#Uganda">Uganda</a>
                <a href="#Zimbabwe">Zimbabwe</a>
                </div>
                <link href="https://jayceechapman.github.io/css/main.css" rel="stylesheet"
                    type="text/css"/>
            </head>
            <body>
                <h2 id="Algeria">Algeria</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Algeria')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Angola">Angola</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Angola')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                            
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Benin">Benin</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Benin')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="BurkinaFaso">Burkina Faso</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Burkina Faso')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Cameroon">Cameroon</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Cameroon')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="CapeVerde">Cape Verde</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Cape Verde')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="DRCongo">Congo DR</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Congo')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Cote">Côte d'Ivoire</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Ivory Coast')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Egypt">Egypt</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Egypt')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Ghana">Ghana</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Ghana')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Guinea">Guinea</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Guinea')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="GuineaBissau">Guinea Bissau</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Guinea Bissau')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Kenya">Kenya</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Kenya')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Lesotho">Lesotho</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Lesotho')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Mali">Mali</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Mali')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Morocco">Morocco</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Morocco')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Mozambique">Mozambique</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Mozambique')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Nigeria">Nigeria</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Nigeria')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Senegal">Senegal</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Senegal')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="SierraLeone">Sierra Leone</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Sierra Leone')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Somalia">Somalia</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Somalia')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="SouthAfrica">South Africa</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'South Africa')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Sudan">Sudan</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Sudan')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Tanzania">Tanzania</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Tanzania')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Tunisia">Tunisia</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Tunisia')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Uganda">Uganda</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Uganda')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
                <h2 id="Zimbabwe">Zimbabwe</h2>
                <ul>
                    <xsl:apply-templates select="key('country', 'Zimbabwe')">
                        <xsl:sort order="ascending">
                            <xsl:choose>
                                <xsl:when test="contains(td[3], '**')">
                                    <xsl:value-of select="substring-after(td[3], '**')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="td[3]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:sort>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="tr">
        <dt>
           <b><xsl:choose>
                <xsl:when test="contains(td[3], '**')">
                    <xsl:value-of select="substring-after(td[3], '**')"/>
                </xsl:when>
                <xsl:otherwise><xsl:value-of select="td[3]"/></xsl:otherwise>
           </xsl:choose></b> by <xsl:value-of select="substring-after(td[1], ', ')"/><xsl:text> </xsl:text><xsl:value-of select="substring-before(td[1], ',')"/><dd>Publisher: <xsl:value-of
                select="td[4]"/></dd></dt>
    </xsl:template>
</xsl:stylesheet>
