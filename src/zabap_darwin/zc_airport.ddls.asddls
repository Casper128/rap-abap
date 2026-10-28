@EndUserText.label: 'Aeropuertos'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@UI.headerInfo: {
  typeName:       'Aeropuerto',
  typeNamePlural: 'Aeropuertos',
  title: { type: #STANDARD, value: 'AirportName' }
}
define view entity ZC_Airport
  as select from /dmo/airport
{
      @EndUserText.label: 'Código de aeropuerto'
      @UI.lineItem:       [{ position: 10 }]
      @UI.selectionField: [{ position: 10 }]
      @Consumption.valueHelpDefinition: [{
        entity: {
          name:    'ZI_AirportVH_DAO',
          element: 'AirportId'
        }
      }]
  key airport_id as AirportId,

      @EndUserText.label: 'Nombre'
      @UI.lineItem:       [{ position: 20 }]
      @UI.selectionField: [{ position: 20 }]
      name       as AirportName,

      @EndUserText.label: 'Ciudad'
      @UI.lineItem:       [{ position: 30 }]
      @UI.selectionField: [{ position: 30 }]
      city       as City,

      @EndUserText.label: 'País'
      @UI.lineItem:       [{ position: 40 }]
      @UI.selectionField: [{ position: 40 }]
      country    as Country
}
