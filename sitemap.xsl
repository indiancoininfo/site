<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Sitemap — Indian Coin Information Portal</title>
        <style>
          :root {
            --gold:    #7A5510;
            --bg:      #F5F0E8;
            --bg2:     #EDE6D6;
            --bg3:     #E4DAC4;
            --text:    #1A1008;
            --dim:     #6B4E1A;
            --border:  rgba(166,124,30,0.2);
          }
          * { margin: 0; padding: 0; box-sizing: border-box; }
          html { scroll-behavior: smooth; }
          body {
            background: var(--bg);
            color: var(--text);
            font-family: 'Georgia', serif;
            min-height: 100vh;
          }
          a { color: var(--gold); text-decoration: none; }
          a:hover { text-decoration: underline; text-underline-offset: 3px; }

          .page-header {
            background: var(--bg2);
            border-bottom: 1px solid var(--border);
            padding: 40px;
            position: relative;
            overflow: hidden;
          }
          .page-header::after {
            content: '';
            position: absolute;
            bottom: 0; left: 0; right: 0;
            height: 1px;
            background: linear-gradient(90deg, transparent, var(--gold), transparent);
          }
          .header-inner { max-width: 1200px; margin: 0 auto; }
          .header-label {
            font-family: monospace;
            font-size: 11px;
            letter-spacing: 0.3em;
            color: var(--gold);
            text-transform: uppercase;
            margin-bottom: 8px;
          }
          .header-title {
            font-size: clamp(28px, 5vw, 48px);
            font-weight: bold;
            color: var(--text);
            line-height: 1.2;
          }
          .header-count {
            margin-top: 12px;
            font-family: monospace;
            font-size: 12px;
            color: var(--dim);
            letter-spacing: 0.1em;
          }

          .container { max-width: 1200px; margin: 0 auto; padding: 40px; }

          .section-label {
            font-family: monospace;
            font-size: 10px;
            letter-spacing: 0.3em;
            color: var(--dim);
            text-transform: uppercase;
            padding-bottom: 12px;
            border-bottom: 1px solid var(--border);
            margin: 40px 0 20px;
            position: relative;
          }
          .section-label::after {
            content: '';
            position: absolute;
            bottom: -1px; left: 0;
            width: 48px; height: 1px;
            background: var(--gold);
          }

          table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
          }
          thead th {
            font-family: monospace;
            font-size: 10px;
            letter-spacing: 0.15em;
            text-transform: uppercase;
            color: var(--dim);
            text-align: left;
            padding: 0 16px 10px 0;
            border-bottom: 1px solid var(--border);
          }
          tbody tr { transition: background 0.15s; }
          tbody tr:hover { background: var(--bg3); }
          tbody td {
            padding: 9px 16px 9px 0;
            border-bottom: 1px solid rgba(166,124,30,0.08);
            vertical-align: middle;
          }
          .url-cell { word-break: break-all; }
          .priority-badge {
            display: inline-block;
            font-family: monospace;
            font-size: 11px;
            padding: 2px 8px;
            border: 1px solid var(--border);
            color: var(--dim);
            min-width: 42px;
            text-align: center;
          }
          .priority-high  { border-color: rgba(122,85,16,0.5); color: var(--gold); }
          .priority-med   { border-color: rgba(122,85,16,0.3); color: var(--dim); }
          .priority-low   { border-color: rgba(122,85,16,0.15); color: var(--dim); opacity: 0.7; }
          .date-cell { font-family: monospace; font-size: 11px; color: var(--dim); white-space: nowrap; }
          .freq-cell { font-family: monospace; font-size: 10px; letter-spacing: 0.1em; text-transform: uppercase; color: var(--dim); }

          .footer {
            background: var(--bg2);
            border-top: 1px solid var(--border);
            padding: 24px 40px;
            font-family: monospace;
            font-size: 10px;
            letter-spacing: 0.15em;
            text-transform: uppercase;
            color: var(--dim);
            text-align: center;
            position: relative;
          }
          .footer::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; height: 1px;
            background: linear-gradient(90deg, transparent, var(--gold), transparent);
          }
          @media (max-width: 640px) {
            .container, .page-header, .footer { padding: 24px 16px; }
            .date-cell, .freq-cell { display: none; }
          }
        </style>
      </head>
      <body>
        <div class="page-header">
          <div class="header-inner">
            <div class="header-label">Indian Coin Information Portal</div>
            <div class="header-title">XML Sitemap</div>
            <div class="header-count">
              <xsl:value-of select="count(sitemap:urlset/sitemap:url)" /> URLs indexed
            </div>
          </div>
        </div>
        <div class="container">
          <div class="section-label">All Pages</div>
          <table>
            <thead>
              <tr>
                <th>URL</th>
                <th>Priority</th>
                <th>Last Modified</th>
                <th>Change Frequency</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <xsl:sort select="sitemap:priority" order="descending" data-type="number" />
                <tr>
                  <td class="url-cell">
                    <a href="{sitemap:loc}">
                      <xsl:value-of select="sitemap:loc" />
                    </a>
                  </td>
                  <td>
                    <xsl:variable name="pri" select="number(sitemap:priority)" />
                    <span>
                      <xsl:attribute name="class">
                        priority-badge<xsl:choose><xsl:when test="$pri &gt;= 0.8"> priority-high</xsl:when><xsl:when test="$pri &gt;= 0.5"> priority-med</xsl:when><xsl:otherwise> priority-low</xsl:otherwise></xsl:choose></xsl:attribute>
                      <xsl:value-of select="sitemap:priority" />
                    </span>
                  </td>
                  <td class="date-cell">
                    <xsl:value-of select="sitemap:lastmod" />
                  </td>
                  <td class="freq-cell">
                    <xsl:value-of select="sitemap:changefreq" />
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
        <div class="footer">
          © <xsl:value-of select="substring(sitemap:urlset/sitemap:url[1]/sitemap:lastmod, 1, 4)" /> Indian Coin Information Portal · sitemap.xml
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
