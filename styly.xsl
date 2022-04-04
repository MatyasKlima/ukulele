<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/zaznamy">
    <html>
    <head><title>Pokus</title></head>
    <body>
    <h1>Testujeme jeslti funguje GIT</h1>
  <table border="1">
<tr><td>ID</td><td>Mereni</td></tr>  
<xsl:apply-templates/>
</table>
</body>
</html>
</xsl:template>
<xsl:template match="mereni">
    <xsl:for-each select=".">
    <xsl:sort order="ascending" select="teplota"/>  
    <xsl:choose>
    <xsl:when test="teplota &lt; 5">
    <tr>
      <td bgcolor="lightblue"><xsl:value-of select="./@id"/></td>
      <td bgcolor="lightblue"><xsl:value-of select="teplota"/> celsia</td>
      </tr>
      </xsl:when>
      
      <xsl:when test="teplota &gt; 7">
    <tr>
      <td bgcolor="lightgreen"><xsl:value-of select="./@id"/></td>
      <td bgcolor="lightgreen"><xsl:value-of select="teplota"/> celsia</td>
      </tr>
      </xsl:when>
      
      <xsl:otherwise>
    <tr>
      <td><xsl:value-of select="./@id"/></td>
      <td><xsl:value-of select="teplota"/> celsia</td>
      </tr>
      </xsl:otherwise>
      
      </xsl:choose>  
    </xsl:for-each>
  
  </xsl:template>
  
</xsl:stylesheet>
