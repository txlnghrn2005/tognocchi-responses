<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
		        <title>Glassware</title>
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
				
				<h2>Glassware</h2>
    			<table class="sortable" id="sortabletable" cellpadding="0" cellspacing="0" border="1">
     				<tr bgcolor="#9acd32">
						<th>Glassware</th>
						<th class="unsortable">Description</th>
						<th class="unsortable">Glassware</th>
      				</tr>
					<xsl:for-each select="mixology/glassware/glasswrtype">
					<xsl:sort select="glasswrtype" order="ascending"/>
					<tr>
						<td class="narrow"><xsl:value-of select="glassware_type"/></td>
						<td class="wide"><xsl:value-of select="description"/></td>
						<td><xsl:for-each select="glass/images">
								<a href="{.}" target="_blank">
									<img src="{.}" width="100" height="100" border="0" />
								</a>
							</xsl:for-each>
						</td>
					</tr>
						</xsl:for-each>
				</table>
				<script type="text/javascript" src="js/jquery.js"></script>
				<script type="text/javascript" src="js/sortable.js"></script> 
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

