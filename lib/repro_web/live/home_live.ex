defmodule ReproWeb.HomeLive do
  use ReproWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>
      <.live_component module={ReproWeb.MyComponent} id="lc" />
      <div x-data>
        <label>An input field without the id attribute:</label>
        <input type="text" x-ref="one" />
        <span>This works:</span>
        <button x-on:click="console.log($refs.one)">one</button>

        <label>An input field with an id:</label>
        <input type="text" id="foo" x-ref="two" />
        <span>This won't work, will output undefined:</span>
        <button x-on:click="console.log($refs.two)">two</button>
      </div>
    </div>
    """
  end
end
