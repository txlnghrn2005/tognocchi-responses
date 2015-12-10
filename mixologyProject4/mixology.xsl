<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2 style="text-align:center; font-size:36pt; color:blue">Essential Bar Equipment</h2>
    			<table border="1">
     				<tr bgcolor="#9acd32">
						<th>Bar Equipment</th>
						<th>Description</th>
					</tr>
					<xsl:for-each select="mixology/bartools/tool">
					<xsl:sort select="tool" order="ascending"/>
					<tr>
						<td class="narrow"><xsl:value-of select="tool_name"/></td>
						<td class="wide"><xsl:value-of select="description"/></td>
					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<body>
				<h2 style="text-align:center; font-size:36pt; color:blue">Bitters</h2>
    			<table border="1">
     				<tr bgcolor="#9acd32">
						<th>Bitters</th>
						<th>Description</th>
      				</tr>
					<xsl:for-each select="mixology/bitters/bitter">
					<xsl:sort select="bitter" order="ascending"/>
					<tr>
						<td class="narrow"><xsl:value-of select="bitter_name"/></td>
						<td class="wide"><xsl:value-of select="description"/></td>
					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<body>
				<h2 style="text-align:center; font-size:36pt; color:blue">Exotic Sweeteners</h2>
    			<table border="1">
     				<tr bgcolor="#9acd32">
						<th>Exotic Sweeteners</th>
						<th>Description</th>
      				</tr>
					<xsl:for-each select="mixology/exotic_sweeteners/sweeteners">
					<xsl:sort select="sweeteners" order="ascending"/>
					<tr>
						<td class="narrow"><xsl:value-of select="exotic_sweeteners_name"/></td>
						<td class="wide"><xsl:value-of select="description"/></td>
					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<body>
				<h2 style="text-align:center; font-size:36pt; color:blue">Glassware</h2>
    			<table border="1">
     				<tr bgcolor="#9acd32">
						<th>Glassware</th>
						<th>Description</th>
      				</tr>
					<xsl:for-each select="mixology/glassware/glasswrtype">
					<xsl:sort select="glasswrtype" order="ascending"/>
					<tr>
						<td class="narrow"><xsl:value-of select="glassware_type"/></td>
						<td class="wide"><xsl:value-of select="description"/></td>
					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<body>
				<h2 style="text-align:center; font-size:36pt; color:blue">Mixology Terms</h2>
    			<table border="1">
     				<tr bgcolor="#9acd32">
						<th>Terms</th>
						<th>Description</th>
      				</tr>
					<xsl:for-each select="mixology/mixology_terms/mixterms">
					<xsl:sort select="mixterms" order="ascending"/>
					<tr>
						<td class="narrow"><xsl:value-of select="mixology_terms_name"/></td>
						<td class="wide"><xsl:value-of select="description"/></td>
					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<body>
				<h2 style="text-align:center; font-size:36pt; color:blue">Mixology Pro Tips</h2>
    			<table border="1">
     				<tr bgcolor="#9acd32">
						<th>Tips</th>
						<th>Description</th>
      				</tr>
					<xsl:for-each select="mixology/bartender_secret/secrets">
					<xsl:sort select="secrets" order="ascending"/>
					<tr>
						<td class="narrow"><xsl:value-of select="tip_number"/></td>
						<td class="wide"><xsl:value-of select="description"/></td>
					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<body>
				<h2 style="text-align:center; font-size:36pt; color:blue">Brandy Drinks</h2>
    			<table border="1">
     				<tr bgcolor="#9acd32">
						<th>Title</th>
						<th>Ingredients</th>
						<th>Mixing Directions</th>
						<th>Glassware</th>
      				</tr>
					<xsl:for-each select="mixology/drinks/brandyDrinks/group">
					<xsl:sort select="title" order="ascending"/>
					<tr>
						<td><xsl:value-of select="title"/></td>
						<td><xsl:for-each select="ingredients-list">
							<ul>
								<xsl:for-each select="ingredients">
									<li><xsl:value-of select="."/></li>
								</xsl:for-each>
							</ul>
						</xsl:for-each></td>
						<td><xsl:for-each select="directions">
							<ol>
								<xsl:for-each select="mixing_directions">
									<li><xsl:value-of select="."/></li>
								</xsl:for-each>
							</ol>
						</xsl:for-each></td>
						<td><td class="glass"><xsl:element name="photo"><img src="{glassware}"></img>
							</xsl:element></td></td>
					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>