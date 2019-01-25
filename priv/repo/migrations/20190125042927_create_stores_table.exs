defmodule Stores.Repo.Migrations.CreateStoresTable do
  use Ecto.Migration

  def change do
    create table(:stores) do
      add(:name, :string, null: false)
      add(:address, :string, null: false)
      add(:phone_number, :string, null: false)

      timestamps(type: :timestamptz)
    end

    create(unique_index(:stores, [:name]))
  end
end
