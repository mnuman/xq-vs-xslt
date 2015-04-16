 xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare variable $input as element() external;

declare function local:func($input as element()) as element() {
    <Orders source="XQUE">{ for $ord in $input/*:T
              return <Order>
                       <OrderNumber>{data($ord/O_ORDERKEY)}</OrderNumber>
                       <CustomerNumber>{data($ord/O_CUSTKEY)}</CustomerNumber>
                       <OrderStatus>{data($ord/O_ORDERSTATUS)}</OrderStatus>
                       <TotalPrice>{data($ord/O_TOTALPRICE)}</TotalPrice>
                       <OrderDate>{data($ord/O_ORDERDATE)}</OrderDate>
                       <OrderPriority>{data($ord/O_ORDER-PRIORITY)}</OrderPriority>
                       <Clerk>{data($ord/O_CLERK)}</Clerk>
                       <ShipPriority>{data($ord/O_SHIP-PRIORITY)}</ShipPriority>
                       <Comment>{data($ord/O_COMMENT)}</Comment>
                     </Order>
    }
    </Orders>
};

local:func($input)

