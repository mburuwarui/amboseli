defmodule Cards do
  use Phoenix.Component

  def cards(assigns) do
    ~H"""
    <div class="mx-auto max-w-screen-xl px-4 py-8 sm:px-6 sm:py-12 lg:px-8 lg:py-16">
      <div class="mx-auto max-w-lg text-center">
        <h2 class="text-3xl text-gray-800 dark:text-white font-bold sm:text-4xl">
          Kickstart your marketing
        </h2>

        <p class="mt-4 text-gray-500 dark:text-gray-300">
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consequuntur aliquam doloribus
          nesciunt eos fugiat. Vitae aperiam fugit consequuntur saepe laborum.
        </p>
      </div>

      <div class="mt-8 grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
        <Card.card />

        <Card.card />
        <Card.card />
        <Card.card />
        <Card.card />
        <Card.card />
      </div>

      <div class="mt-12 text-center">
        <button
          href="#"
          class="inline-block rounded bg-emerald-500 dark:bg-emerald-600 px-12 py-3 text-sm font-medium text-white transition hover:bg-emerald-700 focus:outline-none focus:ring focus:ring-yellow-400"
        >
          Get Started Today
        </button>
      </div>
    </div>
    """
  end
end
