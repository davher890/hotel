json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :nombre, :precio
  json.url hotel_url(hotel, format: :json)
end
