json.array! @pedidos do |pedido|
  json.extract! pedido, :id
end
