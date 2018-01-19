class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :bar
end
