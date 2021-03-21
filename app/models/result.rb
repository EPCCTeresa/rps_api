class Result < ApplicationRecord
  include ActiveModel::Serializers::JSON

  def serializable_hash()
    super(only: [:name, :result])
  end
end
