<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:my="http://www.my.functions.com/"
                exclude-result-prefixes="#all">

<xsl:function name="my:reverse-string">
  <xsl:param name="arg"/>
  <xsl:sequence select="codepoints-to-string(reverse(string-to-codepoints($arg)))"/>
</xsl:function>

  <xsl:template match="/">
    <Orders source="XSLT">
      <xsl:for-each select="/table/T">
        <Order>
          <OrderNumber>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_ORDERKEY)))"/>
          </OrderNumber>
          <CustomerNumber>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_CUSTKEY)))"/>
          </CustomerNumber>
          <OrderStatus>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_ORDERSTATUS)))"/>
          </OrderStatus>
          <TotalPrice>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_TOTALPRICE)))"/>
          </TotalPrice>
          <OrderDate>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_ORDERDATE)))"/>
          </OrderDate>
          <OrderPriority>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_ORDER-PRIORITY)))"/>
          </OrderPriority>
          <Clerk>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_CLERK)))"/>
          </Clerk>
          <ShipPriority>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_SHIP-PRIORITY)))"/>
          </ShipPriority>
          <Comment>
            <xsl:value-of select="my:reverse-string(my:reverse-string(my:reverse-string(O_COMMENT)))"/>
          </Comment>
        </Order>
      </xsl:for-each>
    </Orders>
  </xsl:template>
</xsl:stylesheet>
