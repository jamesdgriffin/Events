defmodule EventsApp.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :text, null: false
      add :date, :text, null: false
      add :desc, :text, null: false

      timestamps()
    end

  end
end
