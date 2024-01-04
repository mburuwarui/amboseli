defmodule Hero do
  use Phoenix.Component

  def hero(assigns) do
    ~H"""
    <section class="overflow-hidden bg-none sm:grid sm:grid-cols-2 sm:items-center">
      <div class="p-8 md:p-12 lg:px-16 lg:py-24">
        <div class="mx-auto max-w-xl text-center ltr:sm:text-left rtl:sm:text-right">
          <h1 class="text-2xl lg:text-7xl font-extrabold text-gray-900 dark:text-white md:text-3xl">
            Boost your productivity.
          </h1>

          <p class="hidden text-gray-500 dark:text-gray-300 md:mt-4 md:block">
            With our platform, you can easily manage your products and orders. We have a team of experts who are always ready to help.
          </p>

          <div class="mt-4 md:mt-8">
            <a
              href="#"
              class="inline-block rounded bg-emerald-600 px-12 py-3 text-sm font-medium text-white transition hover:bg-emerald-700 focus:outline-none focus:ring focus:ring-yellow-400"
            >
              Get Started Today
            </a>
          </div>
        </div>
      </div>

      <img
        alt="Violin"
        src="https://img.freepik.com/premium-photo/woman-vegetables-box-agriculture-sustainability-farming-supply-chain-agro-business-african-farmer-portrait-with-harvest-gardening-ngo-nonprofit-food-groceries-basket_590464-224711.jpg?w=1380"
        class="h-full w-full object-cover sm:h-[calc(100%_-_2rem)] sm:self-end sm:rounded-ss-[30px] md:h-[calc(100%_-_4rem)] md:rounded-ss-[60px]"
      />
    </section>
    """
  end
end
