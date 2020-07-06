class CryptoItem < ApplicationRecord
    validates :crypto_currency, presence:true
    validates :wallet_location, presence:true
end
