defmodule Globolive.Core.Visitor do
  @moduledoc """
  Provides a struct representing an individual's attendance at an event.
  """
  alias Globolive.Core.{Attraction, Event}

  @typedoc """
  An individual attending an event.
  """
  @type t :: %__MODULE__{
          name: String.t(),
          email: String.t(),
          event: Event.t(),
          visited: [Attraction.t()],
          visited_count: non_neg_integer,
          unvisited_count: non_neg_integer
        }

  @enforce_keys [:name, :email, :event]
  defstruct name: "",
            email: "",
            event: nil,
            visited: [],
            visited_count: 0,
            unvisited_count: nil
end
