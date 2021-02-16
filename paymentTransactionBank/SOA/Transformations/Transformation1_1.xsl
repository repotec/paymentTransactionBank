<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertPaymentTransactionDB" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns0="http://www.saptco.com.sa" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/file/paymentTransactionBank/paymentTransactionBank/readPaymentTransactionFile"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/paymentTransactionBank/paymentTransactionBank/insertPaymentTransactionDB">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/readPaymentTransactionFile.wsdl"/>
            <oracle-xsl-mapper:rootElement name="PaymentMessage" namespace="http://www.saptco.com.sa"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/insertPaymentTransactionDB.wsdl"/>
            <oracle-xsl-mapper:rootElement name="PaymentTransactionLogCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertPaymentTransactionDB"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [TUE FEB 16 00:20:23 EET 2021].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:PaymentTransactionLogCollection>
         <tns:PaymentTransactionLog>
            <tns:companycode>
               <xsl:value-of select="/ns0:PaymentMessage/ns0:PaymentTransaction/ns0:CompanyCode"/>
            </tns:companycode>
            <tns:sequencenum>
               <xsl:value-of select="/ns0:PaymentMessage/ns0:PaymentTransaction/ns0:SequenceNum"/>
            </tns:sequencenum>
            <tns:transactiondata>
               <xsl:value-of select="/ns0:PaymentMessage/ns0:PaymentTransaction/ns0:TransactionData"/>
            </tns:transactiondata>
            <tns:transactioncomment>
               <xsl:value-of select="/ns0:PaymentMessage/ns0:PaymentTransaction/ns0:TransactionComment"/>
            </tns:transactioncomment>
         </tns:PaymentTransactionLog>
      </tns:PaymentTransactionLogCollection>
   </xsl:template>
</xsl:stylesheet>