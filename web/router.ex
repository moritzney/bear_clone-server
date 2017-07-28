defmodule BearClone.Router do
  use BearClone.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BearClone do
    pipe_through :api

    resources "/notes", NoteController, except: [:new, :edit]
  end
end
