class User < ApplicationRecord
  # 既存のDevise関連のコード
  has_many :articles
end
