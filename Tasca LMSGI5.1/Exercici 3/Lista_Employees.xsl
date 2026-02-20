<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    
    <html>
      <head>
        <title>Resultado en HTML</title>
        <link rel="stylesheet" href="Lista_Employees_Estilo.css"></link>
      </head>
      
      <body>
        <h2>Llista d'empleats</h2>
        
        <ul>
        <xsl:for-each select="employees/employee">
          <xsl:sort select="firstName"/>
          <li>
            <h3>Empleat amb id <xsl:value-of select="@employeeNumber"></xsl:value-of></h3>
            <ul>
              <li>
                <b>Nom: </b><span class="nombre"><xsl:value-of select="firstName"></xsl:value-of><xsl:value-of select="lastName"></xsl:value-of></span>
              </li>
              <li>
                <b>Correu: </b><xsl:value-of select="email"></xsl:value-of>
              </li>
              <li>
                <b>Id del seu superior: </b><xsl:value-of select="reportsTo"></xsl:value-of>
              </li>
              <li>
                <b>Posició: </b><xsl:value-of select="jobTitle"></xsl:value-of>
              </li>
              <li>
                <b>Oficina am codi: </b><xsl:value-of select="office/@ofCode"></xsl:value-of>
              </li>
              <ul>
                <li>
                  <i><b>Telèfon: </b><xsl:value-of select="office/Phone"></xsl:value-of></i>
                </li>
                <li>
                  <i><b>Adreça: </b><xsl:value-of select="office/AddressLine1"></xsl:value-of>, <xsl:value-of select="office/AddressLine2"></xsl:value-of></i>
                </li>
                <li>
                  <i><b>Estat: </b><xsl:value-of select="office/State"></xsl:value-of></i>
                </li>
                <li>
                  <i><b>País: </b><xsl:value-of select="office/Country"></xsl:value-of></i>
                </li>
                <li>
                  <i><b>Codi Postal: </b><xsl:value-of select="office/PostalCode"></xsl:value-of></i>
                </li>
                <li>
                  <i><b>Territori: </b><xsl:value-of select="office/Territory"></xsl:value-of></i>
                </li>
              </ul>
            </ul>
          </li>
        
        
        
        </xsl:for-each>
        
      </ul>
      
      </body>
      
    </html>
    
  </xsl:template>
</xsl:stylesheet>
