require 'rqrcode_png'

class QrCodesController < ApplicationController
  def index
  	@qr = RQRCode::QRCode.new( "http://codingricky.com").to_img.resize(200, 200).to_data_url
  	puts RQRCode::QRCode.new( "http://codingricky.com").to_img.resize(200, 200)
  end
end
