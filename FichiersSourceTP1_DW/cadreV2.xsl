<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>XSLT Exercises</title>
      </head>
      <body bgcolor="beige">
        <h1>Company Information for Infoteria</h1>
        <h2>Employee Listing</h2>
        <xsl:apply-templates select="Company"/> 
        <p>Total Employees: <xsl:value-of select="count(Company/Employee)"/></p>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Company">
    <table border="3" width="600" align="center">
      <tr>
        <th>Name</th>
        <th>Position</th>
        <th>E-mail</th>
      </tr>
      <xsl:apply-templates select="Employee"/>
    </table>
  </xsl:template>

  <xsl:template match="Employee">
    <tr>
      <td><xsl:value-of select="concat(FirstName, ' ', LastName)"/></td>
      <td><xsl:value-of select="Position"/></td>
      <td><xsl:value-of select="Email"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
