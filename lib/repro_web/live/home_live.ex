defmodule ReproWeb.HomeLive do
  use ReproWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>
      <p>Open the console and watch for console.log output.</p>
      <%= if @live_action == :broken do %>
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
        <p><a href="/ok">Switch to working example</a></p>
      <% else %>
        <div x-data>
          <label>An input field without the id attribute:</label>
          <input type="text" x-ref="one" />
          <span>This works:</span>
          <button x-on:click="console.log($refs.one)">one</button>

          <label>An input field with an id:</label>
          <input type="text" id="foo" x-ref="two" />
          <span>This will now also work as we've moved the live component to the bottom</span>
          <button x-on:click="console.log($refs.two)">two</button>
        </div>
        <.live_component module={ReproWeb.MyComponent} id="lc" />
        <p><a href="/">Back to the broken example</a></p>
      <% end %>
      <p>
        <a href="https://github.com/mfilej/alpinejs-liveview-repro/blob/main/lib/repro_web/live/home_live.ex">
          View source on GitHub
        </a>
      </p>
    </div>
    """
  end
end
