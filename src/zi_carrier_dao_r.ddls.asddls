@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS de aerolineas'
@Metadata.ignorePropagatedAnnotations:true 
@Metadata.allowExtensions: true
define view entity ZI_CARRIER_DAO_R as select from /dmo/carrier
{
    key carrier_id as CarrierId,
    @Semantics.text: true
    name as Name,
    currency_code as CurrencyCode
}
