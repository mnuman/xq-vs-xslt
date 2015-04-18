 xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare variable $input as element() external;

(: Code for reverse-string blatantly copied from http://www.xqueryfunctions.com/xq/functx_reverse-string.html :)
declare function local:reverse-string
  ( $arg as xs:string? )  as xs:string {

   codepoints-to-string(reverse(string-to-codepoints($arg)))
 };

declare function local:func($input as element()) as element() {
    <Orders source="XQUE">{ for $ord in $input/*:T
              return <Order>
                       <OrderNumber>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_ORDERKEY)))}</OrderNumber>
                       <CustomerNumber>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_CUSTKEY)))}</CustomerNumber>
                       <OrderStatus>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_ORDERSTATUS)))}</OrderStatus>
                       <TotalPrice>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_TOTALPRICE)))}</TotalPrice>
                       <OrderDate>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_ORDERDATE)))}</OrderDate>
                       <OrderPriority>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_ORDER-PRIORITY)))}</OrderPriority>
                       <Clerk>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_CLERK)))}</Clerk>
                       <ShipPriority>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_SHIP-PRIORITY)))}</ShipPriority>
                       <Comment>{local:reverse-string(local:reverse-string(local:reverse-string($ord/O_COMMENT)))}</Comment>
                     </Order>
    }
    </Orders>
};

local:func($input)
