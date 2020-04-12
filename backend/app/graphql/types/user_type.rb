module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false

    def test_field
      "Hello World"
    end
  end
end
