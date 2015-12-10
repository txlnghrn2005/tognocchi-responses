<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
		        <title>Pro Tips</title>
		        <link href="css/layout.css" type="text/css" rel="stylesheet" />	        
		    </head>
			<body>
				<div id="nav">
            		<a href="home.html">Home</a>
		            <a href="brandy.xml">Brandy</a>
		            <a href="ginDrinks.xml">Gin</a>
		            <a href="hotDrinks.xml">Hot Drinks</a>
		            <a href="houseDrinks.xml">House Specialties</a>
		            <a href="liqueursDrinks.xml">Liqueurs</a>
		            <a href="nonAlcoholic.xml">Non-Alcoholic</a>
		            <a href="punchDrinks.xml">Punch</a>
		            <a href="rumDrinks.xml">Rum</a>
		            <a href="tequilaDrinks.xml">Tequila</a>		            
		            <a href="vodka.xml">Vodka</a>		            
		            <a href="whiskeyBourbon.xml">Bourbon</a>		            
					<a href="wineDrinks.xml">Wine</a>
		            <a href="bartools.xml">Equipment</a>
		            <a href="bartender_secret.xml">Secrets</a>
		            <a href="bitters.xml">Bitters</a>
		            <a href="exotic_sweeteners.xml">Sweeteners</a>
		            <a href="glassware.xml">Glassware</a>
		            <a href="mixology_terms.xml">Terms</a>
		        </div>
				
				<h2>Mixology Pro Tips</h2>
    			<table cellpadding="0" cellspacing="0" border="1">
     				<tr bgcolor="#9acd32">
						<th>Tips</th>
						<th>Glassware</th>
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
</xsl:stylesheet>

