<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/canines">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Document</title>
            </head>
            <body>

                <table border="1">
                    <tr>
                        <th>BREED</th>
                        <th>COLOR</th>
                        <th>COUNTRY</th>
                    </tr>
                    <xsl:for-each select="canine">
                        <tr>
                            <td>
                                <xsl:value-of select="breed" />
                            </td>
                            <td>
                                <xsl:value-of select="color" />
                            </td>
                            <td>
                                <xsl:value-of select="Country" />
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>