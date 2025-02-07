<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/library">
  <html>
  <style>
tr{ height: 40px }
h1 {
  font-family: Arial, Helvetica, sans-serif;
}
</style>
  <body>
    <h1>Library Books</h1>
    <h2>Fiction</h2>
    
    <table border="1" style="width:100%; ">
      <tr bgcolor="#eee" style="padding:10px;">
        <th>Title</th>
        <th>Author</th>
        <th>Year</th>
        <th>Rating</th>
      </tr>
      <xsl:for-each select="category[@name='Fiction']/book">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="author"/></td>
          <td><xsl:value-of select="year"/></td>
          <td><xsl:value-of select="rating"/></td>
        </tr>
      </xsl:for-each>
    </table>
    <h2>Non-Fiction</h2>
    <table border="1" style="width:100%;">
      <tr bgcolor="#eee" >
        <th >Title</th>
        <th>Author</th>
        <th>Year</th>
        <th>Rating</th>
      </tr>
      <xsl:for-each select="category[@name='Non-Fiction']/book">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="author"/></td>
          <td><xsl:value-of select="year"/></td>
          <td><xsl:value-of select="rating"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>