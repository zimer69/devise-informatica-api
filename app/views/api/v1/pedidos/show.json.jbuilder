json.extract! @pedido,
              :id,
              :processador,
              :placa_mae,
              :memoria_ram,
              :memoria_ram_2,
              :memoria_ram_3,
              :memoria_ram_3,
              :memoria_ram_4,
              :placa_de_video
json.usuario @pedido.user, :id, :nome, :email
