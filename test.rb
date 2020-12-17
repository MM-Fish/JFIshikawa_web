require 'json'
require "google_drive"

session = GoogleDrive::Session.from_service_account_key("config.json")
ws = session.spreadsheet_by_key("122n2pFCKfEffGkR4BiyJyImfkvntuCIg8oaBP_8g_X8").worksheet_by_title("by_species_size")

# スプレッドシートからの読み込み
ws.num_rows
ws.num_cols
data_array = ws.rows

hash = JSON.generate(data_array)

File.open("sikyou_data.json", 'w') do |file|
    str = JSON.dump(hash, file)
end