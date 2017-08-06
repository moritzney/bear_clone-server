defmodule BearClone.Note do
  use BearClone.Web, :model

  schema "notes" do
    field :title,  :string
    field :body,   :string
    field :status, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :status])
    |> validate_required([:title])
  end
end