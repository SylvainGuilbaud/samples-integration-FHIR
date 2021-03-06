Class FHIRNAMESPACEPKG.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="FHIRNAMESPACEPKG.FoundationProduction" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="Ens.Activity.Operation.Local" Category="Demo" ClassName="Ens.Activity.Operation.Local" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="HS.Test.Service" Category="Demo" ClassName="HS.Test.Service" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
    <Setting Target="Host" Name="PIXmConsumerOperationsSTU3">HS.FHIR.PIXm.Consumer.Operations.STU3</Setting>
    <Setting Target="Host" Name="PDQmConsumerOperationsSTU3">HS.FHIR.PDQm.Consumer.Operations.STU3</Setting>
    <Setting Target="Host" Name="MHDConsumerOperationsSTU3">HS.FHIR.MHD.Consumer.Operations.STU3</Setting>
    <Setting Target="Host" Name="MHDSourceOperationsSTU3">HS.FHIR.MHD.DocumentSource.Operations.STU3</Setting>
  </Item>
  <Item Name="HS.FHIR.Service.STU3" Category="Demo" ClassName="HS.FHIR.Service" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">HS.FHIR.Server.Process.STU3</Setting>
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
    <Setting Target="Host" Name="FHIRVersion"></Setting>
    <Setting Target="Host" Name="FormatFHIROutput">1</Setting>
  </Item>
  <Item Name="HS.FHIR.REST.Operation" Category="Demo" ClassName="HS.FHIR.REST.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="MetadataClass">HS.FHIR.InteractionMetadata</Setting>
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
  </Item>
  <Item Name="HS.Util.Trace.Operations" Category="Demo" ClassName="HS.Util.Trace.Operations" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
  </Item>
  <Item Name="HS.FHIR.Server.Process.STU3" Category="Demo" ClassName="HS.FHIR.Server.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">HS.FHIR.Repository.Operations.STU3</Setting>
    <Setting Target="Host" Name="ResourceSchemaRoot">HS.FHIR.vSTU3.Model.Resource</Setting>
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
  </Item>
  <Item Name="HS.FHIR.Repository.Operations.STU3" Category="Demo" ClassName="HS.FHIR.vSTU3.Repository.Operations" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="From_ADT" Category="Demo" ClassName="EnsLib.HL7.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="MessageSchemaCategory">2.3.1</Setting>
    <Setting Target="Host" Name="TargetConfigNames">HL7toSDAProcess</Setting>
    <Setting Target="Adapter" Name="FilePath">C:\Users\ddo\Documents\InterSystems_course\samples-integration-FHIR\data\In\</Setting>
    <Setting Target="Adapter" Name="ArchivePath">C:\Users\ddo\Documents\InterSystems_course\samples-integration-FHIR\data\Out\</Setting>
    <Setting Target="Adapter" Name="FileSpec">*</Setting>
  </Item>
  <Item Name="HS.FHIR.DTL.Util.HC.SDA3.FHIR.Process" Category="Demo" ClassName="HS.FHIR.DTL.Util.HC.SDA3.FHIR.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">HS.FHIR.Server.Process.STU3</Setting>
  </Item>
  <Item Name="HL7toSDAProcess" Category="Demo" ClassName="FHIRDemo.HL7TransformProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
