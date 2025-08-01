class User < ApplicationRecord
    has_many :agentes, dependent: :destroy
end
