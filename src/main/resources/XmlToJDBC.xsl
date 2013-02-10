<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:pan="http://www.panasonic.net/products">
	
	<xsl:output method="xml"/>
		
	<xsl:template match="/pan:products">
		<table>
			<xsl:for-each select="pan:product">
				<record>
					<field name="productGroup" type="java.lang.String" >
						<xsl:value-of select="pan:productGroup/text()" />
					</field>
					<field name="productSubGroup" type="java.lang.String" >
						<xsl:value-of select="pan:type/text()" />
					</field>
					<field name="series" type="java.lang.String">
						<xsl:value-of select="pan:series/text()" />
					</field>
					<field name="productId" type="java.lang.String">
						<xsl:value-of select="pan:id/text()" />
					</field>
				</record>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>