class Pedido < ApplicationRecord
  belongs_to :user

  validate :compatibilidade_cpu, :compatibilidade_memoria_ram, :video_integrado, on: :create

  validates :processador,
            inclusion: { in: ["Core i5", "Core i7", "Ryzen 5", "Ryzen 7"] },
            presence: true,
            length: { maximum: 8 }

  validates :placa_mae,
            inclusion: { in: ["Asus ROG", "Gigabyte Aorus", "ASRock Steel Legend"] },
            presence: true,
            length: { maximum: 19 }

  validates :memoria_ram,
            presence: true

  validates :placa_de_video,
            inclusion: { in: ["Evga Geforce RTX 2060 6GB",
                              "Asus ROG Strix Geforce RTX 3060 6G",
                              "Gigabyte Radeon RX 6600 XT EAGLE 8GB"] },
            allow_blank: true

  def compatibilidade_cpu
    case placa_mae
    when 'Asus ROG'
      if processador == 'Ryzen 5' || processador == 'Ryzen 7'
        errors.add(:processador, "não suportado por placa-mãe selecionada")
      end
    when 'Gigabyte Aorus'
      if processador == 'Core i5' || processador == 'Core i7'
        errors.add(:processador, "não suportado por placa-mãe selecionada")
      end
    end
  end

  def compatibilidade_memoria_ram
    case placa_mae
    when 'Asus ROG' || 'Gigabyte Aorus'
      if memoria_ram_3.present? || memoria_ram_4.present? || memoria_ram.to_i + memoria_ram_2.to_i > 16
        errors.add(:memoria_ram, "excedida")
      end
    when 'ASRock Steel Legend'
      if memoria_ram.to_i + memoria_ram_2.to_i + memoria_ram_3.to_i + memoria_ram_4.to_i > 64
        errors.add(:memoria_ram, :memoria_ram_2, :memoria_ram_3, :memoria_ram_4, "Memória RAM excedida")
      end
    end
  end

  def video_integrado
    case placa_mae
    when 'Asus ROG' || 'Gigabyte Aorus'
      if placa_de_video.empty?
        errors.add(:placa_de_video, "Escolha uma placa de vídeo")
      end
    end
  end
end
