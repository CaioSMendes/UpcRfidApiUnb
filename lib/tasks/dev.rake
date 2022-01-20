namespace :dev do
    task setup: :environment do
        p "Cadastrando Buscas para o Bluetooth"
        5.times do |i|
            Bluetoothsearch.create!(
            rfidCode: Faker::Barcode.upc_e
        )
        end
    puts "Finalizado com sucesso"
    end
end