<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
          }
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Smartphones Information</h2>
        <table>
          <tr>
            <th>Brand</th>
            <th>Model</th>
            <th>Release Year</th>
            <th>Price</th>
            <th>Processor</th>
            <th>Storage</th>
          </tr>
          <xsl:apply-templates select="smartphones/phone"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="phone">
    <tr>
      <td><xsl:value-of select="brand"/></td>
      <td><xsl:value-of select="model"/></td>
      <td><xsl:value-of select="release_year"/></td>
      <td><xsl:value-of select="price"/></td>
      <td><xsl:value-of select="processor"/></td>
      <td><xsl:value-of select="storage"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
