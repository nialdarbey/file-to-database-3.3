<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:output method="xml"/>
		
	<xsl:template match="/table">
		<products xmlns="http://www.panasonic.net/products">
			<xsl:for-each select="record">
				<product>
					<productGroup>
						<xsl:value-of select="field[@name='PRODUCT_GROUP']/text()" />
					</productGroup>
					<type>
						<xsl:value-of select="field[@name='PRODUCT_SUB_GROUP']/text()" />
					</type>
					<series>
						<xsl:value-of select="field[@name='SERIES']/text()" />
					</series>
					<productId>
						<xsl:value-of select="field[@name='PRODUCT_ID']/text()" />
					</productId>
				</product>
			</xsl:for-each>
		</products>
	</xsl:template>
</xsl:stylesheet>