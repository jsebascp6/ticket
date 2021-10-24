(1..50).to_a.each do |_|
  # Creación del proveedor
  provider = Provider.create(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    phone: Faker::Number.number(digits: 10)
  )

  # Creación del tickete
  ticket = Ticket.create(
    amount: Faker::Number.number(digits: 3)
  )

  # Creación del evento y asociarlo al proveedor y tickete
  event = Event.create(
    site: Faker::Address.street_name,
    date: Faker::Date.between(from: '2021-10-25', to: '2021-12-30'),
    address: Faker::Address.street_address,
    name: Faker::DcComics.title,
    provider_id: provider.id,
    ticket_id: ticket.id
  )

  # Creación del cliente
  client = Client.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    residence_address: Faker::Address.street_address,
    phone: Faker::Number.number(digits: 10),
    document_id: Faker::Number.number(digits: 8)
  )

  # Asociar el cliente con el evento
  event.clients << client

  # Creación de la venta
  sale = Sale.create(
    date: Faker::Date.between_except(from: '2021-10-25', to: event.date, excepted: event.date)
  )

  # Creación de la factura y asociarla a la venta
  invoice = Invoice.create(
    date: sale.date,
    sale_id: sale.id,
    client_id: client.id
  )
end
