class User < ApplicationRecord
  enum gender: [:male, :female] # {male: 0, female: 1}
end
