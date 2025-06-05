<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Sitemap</title>
        <style>
          body { font-family: Arial, sans-serif; padding: 20px; }
          h1 { color: #333; }
          ul { list-style: none; padding: 0; }
          li { margin-bottom: 8px; }
          a { text-decoration: none; color: #0066cc; }
        </style>
      </head>
      <body>
        <h1>Sitemap</h1>
        <ul>
          <xsl:for-each select="sitemap:urlset/sitemap:url">
            <li>
              <a href="{sitemap:loc}">
                <xsl:value-of select="sitemap:loc"/>
              </a>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
