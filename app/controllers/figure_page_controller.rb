class FigurePageController < ApplicationController
  def home
    @session = GoogleDrive::Session.from_service_account_key("config.json")
    @ws = @session.spreadsheet_by_key("122n2pFCKfEffGkR4BiyJyImfkvntuCIg8oaBP_8g_X8").worksheet_by_title("Sheet4")
    # @ws = @session.spreadsheet_by_key("1XO7ZVF_jFyn1undinflf5CxsFLsTkfI3R8P1fO0Bbao").worksheet_by_title("Sheet1")

    # スプレッドシートからの読み込み
    @ws.num_rows
    @ws.num_cols
    @data_array = @ws.rows
    # @data_array = @ws[1,1]
    
    # # スプレッドシートへの書き込み
    # @ws[2, 2] = "test"
    # # シートの保存
    # @ws.save
    
  end
end
