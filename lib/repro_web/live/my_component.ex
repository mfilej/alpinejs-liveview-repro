defmodule ReproWeb.MyComponent do
  use ReproWeb, :live_component

  def render(assigns) do
    ~H"""
    <div>
      This is a Live Component. It doesn't do much.
    </div>
    """
  end
end
