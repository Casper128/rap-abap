@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS de vuelos'
@Metadata.ignorePropagatedAnnotations:true 
@Metadata.allowExtensions: true
define view entity ZI_FLIGHTS_DAO_R as select from /dmo/flight
association [1] to ZI_CARRIER_DAO_R as _Airline on $projection.CarrierId = _Airline.CarrierId
{
    @ObjectModel.text.association: '_Airline'
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    price as Price,
    currency_code as CurrencyCode,
    plane_type_id as PlaneTypeId,
    seats_max as SeatsMax,
    seats_occupied as SeatsOccupied,
    //Associations
    _Airline
}
