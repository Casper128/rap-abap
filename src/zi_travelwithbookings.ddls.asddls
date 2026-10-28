@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección de Viajes filtrando por Reservas'
define view entity ZI_TRAVELWITHBOOKINGS
  as select from /dmo/travel as Travel

  -- Asociación 1..* estándar (comportamiento habitual de asociación)
  association [1..*] to /dmo/booking as _Booking 
    on Travel.travel_id = _Booking.travel_id

{
  key Travel.travel_id     as TravelID,
      Travel.customer_id   as CustomerID,

      -- Al agregar [inner] en la expresión de ruta, el optimizador de HANA
      -- ejecuta un INNER JOIN a nivel SQL y descarta los viajes sin reservas
      _Booking[inner].booking_id   as BookingID,
      _Booking[inner].carrier_id   as CarrierID,
      _Booking[inner].flight_price as FlightPrice,
      _Booking[inner].currency_code as CurrencyCode
}
