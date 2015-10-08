class Message < ActiveRecord::Base
    # 名前は必須入力かつ20文字以内
    validates :name , length: {  maximum: 20 } , presence: true
    # 年齢は必須入力かつ1文字以上2文字以下
    validates :age , length: {minimum: 1 , maximum: 2 } , presence: true
    # 内容は必須入力かつ2文字以上140文字以下
    validates :body , length: {minimum: 2 , maximum: 140 } , presence: true
end