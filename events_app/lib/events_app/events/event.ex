defmodule EventsApp.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :date, :string
    field :desc, :string
    field :name, :string
    field :inv, :string
    belongs_to :user, EventsApp.Users.User

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:name, :date, :desc, :inv, :user_id])
    |> validate_required([:name, :date, :desc, :inv, :user_id])
  end
end
