@EndUserText.label: 'Ayuda de valores de aeropuertos'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZI_AirportVH_DAO
  as select from /dmo/airport
{
  @EndUserText.label: 'Aeropuerto'
  @ObjectModel.text.element: ['AirportName']
  @Search.defaultSearchElement: true
  key airport_id as AirportId,

  @EndUserText.label: 'Nombre'
  @Search.defaultSearchElement: true
  name as AirportName,

  @EndUserText.label: 'Ciudad'
  city as City,

  @EndUserText.label: 'País'
  country as Country
}
