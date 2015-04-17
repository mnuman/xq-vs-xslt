<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all">
  <xsl:template match="/">
    <Orders source="XSLT">
      <xsl:for-each select="/table/T">
        <xsl:sort select="O_ORDER-PRIORITY" data-type="text"   order="descending"/>
        <xsl:sort select="O_TOTALPRICE"     data-type="number" order="ascending"/>
        <Order>
          <OrderNumber>
            <xsl:value-of select="O_ORDERKEY"/>
          </OrderNumber>
          <CustomerNumber>
            <xsl:value-of select="O_CUSTKEY"/>
          </CustomerNumber>
          <OrderStatus>
            <xsl:value-of select="O_ORDERSTATUS"/>
          </OrderStatus>
          <TotalPrice>
            <xsl:value-of select="O_TOTALPRICE"/>
          </TotalPrice>
          <OrderDate>
            <xsl:value-of select="O_ORDERDATE"/>
          </OrderDate>
          <OrderPriority>
            <xsl:value-of select="O_ORDER-PRIORITY"/>
          </OrderPriority>
          <Clerk>
            <xsl:value-of select="O_CLERK"/>
          </Clerk>
          <ShipPriority>
            <xsl:value-of select="O_SHIP-PRIORITY"/>
          </ShipPriority>
          <Comment>
            <xsl:value-of select="O_COMMENT"/>
          </Comment>
        </Order>
      </xsl:for-each>
    </Orders>
  </xsl:template>
</xsl:stylesheet>
