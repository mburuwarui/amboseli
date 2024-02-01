defmodule Intro do
  use AmboseliWeb, :live_component

  def intro(assigns) do
    ~H"""
    <div class="left-[40rem] absolute inset-y-0 right-0 z-0 hidden lg:block xl:left-[50rem]">
      <svg
        xmlns="http://www.w3.org/2000/svg"
        version="1.1"
        xmlns:xlink="http://www.w3.org/1999/xlink"
        xmlns:svgjs="http://svgjs.dev/svgjs"
        class="absolute inset-0 h-full w-full"
        viewBox="0 0 1440 700"
      >
        <g mask="url(&quot;#SvgjsMask10012&quot;)" fill="none">
          <path
            d="M774.29 597.91L762.4 602.67 755.15 592.12 743.26 596.87 736.01 586.32 724.12 591.08 716.87 580.52"
            stroke="rgba(12, 183, 193, 1)"
            stroke-width="1.13"
            stroke-dasharray="3, 2"
          >
          </path>
          <path
            d="M852.71 473.74a5.6 5.6 0 1 0-8.84-6.88 5.6 5.6 0 1 0 8.84 6.88zM840.08 463.92a5.6 5.6 0 1 0-8.84-6.88 5.6 5.6 0 1 0 8.84 6.88zM827.45 454.09a5.6 5.6 0 1 0-8.84-6.87 5.6 5.6 0 1 0 8.84 6.87zM814.82 444.27a5.6 5.6 0 1 0-8.84-6.87 5.6 5.6 0 1 0 8.84 6.87zM887.79 480.75a5.6 5.6 0 1 0-8.84-6.87 5.6 5.6 0 1 0 8.84 6.87zM875.16 470.93a5.6 5.6 0 1 0-8.84-6.88 5.6 5.6 0 1 0 8.84 6.88zM862.53 461.11a5.6 5.6 0 1 0-8.84-6.88 5.6 5.6 0 1 0 8.84 6.88zM849.9 451.29a5.6 5.6 0 1 0-8.84-6.88 5.6 5.6 0 1 0 8.84 6.88z"
            fill="rgba(221, 106, 105, 1)"
          >
          </path>
          <rect
            width="125.60000000000001"
            height="125.60000000000001"
            clip-path="url(&quot;#SvgjsClipPath10013&quot;)"
            x="821.43"
            y="576.92"
            fill="url(&quot;#SvgjsPattern10014&quot;)"
            transform="rotate(124.02, 884.23, 639.72)"
          >
          </rect>
          <path
            d="M864.64 111.55L875.86 105.38 884.35 114.98 895.57 108.81 904.05 118.4 915.27 112.23 923.76 121.83M863.27 119.43L874.49 113.26 882.98 122.86 894.2 116.69 902.68 126.28 913.9 120.11 922.39 129.71M861.9 127.31L873.12 121.15 881.61 130.74 892.83 124.57 901.31 134.16 912.53 127.99 921.02 137.59"
            stroke="rgba(221, 106, 105, 1)"
            stroke-width="1"
          >
          </path>
          <rect
            width="426"
            height="426"
            clip-path="url(&quot;#SvgjsClipPath10015&quot;)"
            x="11.55"
            y="261.81"
            fill="url(&quot;#SvgjsPattern10016&quot;)"
            transform="rotate(79.68, 224.55, 474.81)"
          >
          </rect>
          <path
            d="M431.53 364.06a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76zM418.77 373.72a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76zM406.01 383.37a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76zM393.25 393.03a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76zM447.39 331.99a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76zM434.63 341.65a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76zM421.87 351.3a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76zM409.11 360.96a5.6 5.6 0 1 0-8.93 6.76 5.6 5.6 0 1 0 8.93-6.76z"
            stroke="rgba(221, 106, 105, 1)"
            stroke-width="1"
          >
          </path>
          <path
            d="M1184.42 335.33a5.6 5.6 0 1 0 1.19 11.14 5.6 5.6 0 1 0-1.19-11.14zM1186.12 351.24a5.6 5.6 0 1 0 1.2 11.14 5.6 5.6 0 1 0-1.2-11.14zM1187.83 367.15a5.6 5.6 0 1 0 1.19 11.14 5.6 5.6 0 1 0-1.19-11.14zM1189.53 383.06a5.6 5.6 0 1 0 1.2 11.13 5.6 5.6 0 1 0-1.2-11.13z"
            stroke="rgba(12, 183, 193, 1)"
            stroke-width="2.32"
          >
          </path>
          <path
            d="M349.28999999999996 756.74 L412.91999999999996 604.4399999999999L481.5178683670979 781.0028683670979z"
            fill="rgba(221, 106, 105, 1)"
          >
          </path>
          <path
            d="M1416.67 268.54999999999995 L1247.0400000000002 232.19L1409.5217516671623 172.70324833283766z"
            fill="rgba(233, 212, 93, 1)"
          >
          </path>
          <rect
            width="456"
            height="456"
            clip-path="url(&quot;#SvgjsClipPath10017&quot;)"
            x="-61.05"
            y="39.85"
            fill="url(&quot;#SvgjsPattern10018&quot;)"
            transform="rotate(21.88, 166.95, 267.85)"
          >
          </rect>
        </g>
        <defs>
          <mask id="SvgjsMask10012">
            <rect width="1440" height="700" fill="#ffffff"></rect>
          </mask>
          <pattern
            x="0"
            y="0"
            width="12.56"
            height="12.56"
            patternUnits="userSpaceOnUse"
            id="SvgjsPattern10014"
          >
            <path d="M0 12.56L6.28 0L12.56 12.56" stroke="rgba(12, 183, 193, 1)" fill="none"></path>
          </pattern>
          <clipPath id="SvgjsClipPath10013">
            <circle r="31.400000000000002" cx="884.23" cy="639.72"></circle>
          </clipPath>
          <pattern
            x="0"
            y="0"
            width="426"
            height="7.1"
            patternUnits="userSpaceOnUse"
            id="SvgjsPattern10016"
          >
            <rect width="426" height="3.55" x="0" y="0" fill="rgba(233, 212, 93, 1)"></rect>
            <rect width="426" height="3.55" x="0" y="3.55" fill="rgba(0, 0, 0, 0)"></rect>
          </pattern>
          <clipPath id="SvgjsClipPath10015">
            <circle r="106.5" cx="224.55" cy="474.81"></circle>
          </clipPath>
          <pattern
            x="0"
            y="0"
            width="6"
            height="6"
            patternUnits="userSpaceOnUse"
            id="SvgjsPattern10018"
          >
            <path d="M3 1L3 5M1 3L5 3" stroke="rgba(233, 212, 93, 1)" fill="none" stroke-width="1">
            </path>
          </pattern>
          <clipPath id="SvgjsClipPath10017">
            <circle r="114" cx="166.95" cy="267.85"></circle>
          </clipPath>
        </defs>
      </svg>
    </div>
    <div class="px-4 py-10 sm:px-6 sm:py-28 lg:px-8 xl:px-28 xl:py-32">
      <div class="mx-auto max-w-xl lg:mx-0">
        <img src={~p"/images/banner.svg"} width="66" />

        <h1 class="text-brand mt-10 flex items-center text-sm font-semibold leading-6">
          Rafiki Network
          <small class="bg-brand/5 dark:bg-brand/10 text-[0.8125rem] ml-3 rounded-full px-2 font-medium leading-6">
            v<%= Application.spec(:phoenix, :vsn) %>
          </small>
        </h1>

        <div id="map" phx-update="ignore" phx-hook="MapTrace" class="h-96"></div>

        <p class="text-[2rem] mt-4 font-semibold leading-10 tracking-tighter text-zinc-900 dark:text-zinc-100">
          Peace of mind from prototype to production.
        </p>

        <p class="mt-4 text-base leading-7 text-zinc-600 dark:text-zinc-400">
          Bring your utility business to life with our wide range home-grid-management solutions that enable utilities around the world to run profitable, efficient, and reliable systems.
          Rafiki AMI improves a utility’s ability to collect frequent and accurate water usage data to improve billing, leak detection, and water resource management.
        </p>
        <p class="text-[1.2rem] italic mt-4 leading-10 tracking-tighter text-cyan-900 dark:text-cyan-400">
          "Designed and built for utility managers who want more ROI on their technology."
        </p>
        <div class="flex">
          <div class="w-full sm:w-auto">
            <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-4 sm:grid-cols-3">
              <a
                href="https://hexdocs.pm/phoenix/overview.html"
                class="group relative rounded-2xl px-6 py-4 text-sm font-semibold leading-6 text-zinc-900 dark:text-zinc-100 sm:py-6"
              >
                <span class="absolute inset-0 rounded-2xl bg-zinc-50 dark:bg-zinc-800 transition group-hover:bg-zinc-100 dark:group-hover:bg-zinc-700 sm:group-hover:scale-105">
                </span>
                <span class="relative flex items-center gap-4 sm:flex-col">
                  <svg viewBox="0 0 24 24" fill="none" aria-hidden="true" class="h-6 w-6">
                    <path
                      d="m12 4 10-2v18l-10 2V4Z"
                      class="fill-zinc-800 dark:fill-zinc-50"
                      fill-opacity=".15"
                    />
                    <path
                      class="stroke-zinc-800 dark:stroke-zinc-50"
                      d="M12 4 2 2v18l10 2m0-18v18m0-18 10-2v18l-10 2"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                  </svg>
                  Guides &amp; Docs
                </span>
              </a>
              <a
                href="https://github.com/phoenixframework/phoenix"
                class="group relative rounded-2xl px-6 py-4 text-sm font-semibold leading-6 text-zinc-900 dark:text-zinc-100 sm:py-6"
              >
                <span class="absolute inset-0 rounded-2xl bg-zinc-50 dark:bg-zinc-800 transition group-hover:bg-zinc-100 dark:group-hover:bg-zinc-700 sm:group-hover:scale-105">
                </span>
                <span class="relative flex items-center gap-4 sm:flex-col">
                  <svg viewBox="0 0 24 24" aria-hidden="true" class="h-6 w-6">
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M12 0C5.37 0 0 5.506 0 12.303c0 5.445 3.435 10.043 8.205 11.674.6.107.825-.262.825-.585 0-.292-.015-1.261-.015-2.291C6 21.67 5.22 20.346 4.98 19.654c-.135-.354-.72-1.446-1.23-1.738-.42-.23-1.02-.8-.015-.815.945-.015 1.62.892 1.845 1.261 1.08 1.86 2.805 1.338 3.495 1.015.105-.8.42-1.338.765-1.645-2.67-.308-5.46-1.37-5.46-6.075 0-1.338.465-2.446 1.23-3.307-.12-.308-.54-1.569.12-3.26 0 0 1.005-.323 3.3 1.26.96-.276 1.98-.415 3-.415s2.04.139 3 .416c2.295-1.6 3.3-1.261 3.3-1.261.66 1.691.24 2.952.12 3.26.765.861 1.23 1.953 1.23 3.307 0 4.721-2.805 5.767-5.475 6.075.435.384.81 1.122.81 2.276 0 1.645-.015 2.968-.015 3.383 0 .323.225.707.825.585a12.047 12.047 0 0 0 5.919-4.489A12.536 12.536 0 0 0 24 12.304C24 5.505 18.63 0 12 0Z"
                      class="fill-zinc-800 dark:fill-zinc-50"
                    />
                  </svg>
                  Source Code
                </span>
              </a>
              <a
                href={"https://github.com/phoenixframework/phoenix/blob/v#{Application.spec(:phoenix, :vsn)}/CHANGELOG.md"}
                class="group relative rounded-2xl px-6 py-4 text-sm font-semibold leading-6 text-zinc-900 dark:text-zinc-100 sm:py-6"
              >
                <span class="absolute inset-0 rounded-2xl bg-zinc-50 dark:bg-zinc-800 transition group-hover:bg-zinc-100 dark:group-hover:bg-zinc-700 sm:group-hover:scale-105">
                </span>
                <span class="relative flex items-center gap-4 sm:flex-col">
                  <svg viewBox="0 0 24 24" fill="none" aria-hidden="true" class="h-6 w-6">
                    <path
                      class="stroke-zinc-800 dark:stroke-zinc-50"
                      d="M12 1v6M12 17v6"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                    <circle
                      class="fill-zinc-800 dark:fill-zinc-50 stroke-zinc-800 dark:stroke-zinc-50"
                      cx="12"
                      cy="12"
                      r="4"
                      fill-opacity=".15"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                  </svg>
                  Changelog
                </span>
              </a>
            </div>
            <div class="mt-10 grid grid-cols-1 gap-y-4 text-sm leading-6 text-zinc-700 dark:text-zinc-300 sm:grid-cols-2">
              <div>
                <a
                  href="https://twitter.com/elixirphoenix"
                  class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 dark:hover:bg-zinc-800 hover:text-zinc-900 dark:hover:text-zinc-50"
                >
                  <svg
                    viewBox="0 0 16 16"
                    aria-hidden="true"
                    class="h-4 w-4 fill-zinc-400 dark:fill-zinc-500 group-hover:fill-zinc-600 dark:group-hover:fill-zinc-400"
                  >
                    <path d="M5.403 14c5.283 0 8.172-4.617 8.172-8.62 0-.131 0-.262-.008-.391A6.033 6.033 0 0 0 15 3.419a5.503 5.503 0 0 1-1.65.477 3.018 3.018 0 0 0 1.263-1.676 5.579 5.579 0 0 1-1.824.736 2.832 2.832 0 0 0-1.63-.916 2.746 2.746 0 0 0-1.821.319A2.973 2.973 0 0 0 8.076 3.78a3.185 3.185 0 0 0-.182 1.938 7.826 7.826 0 0 1-3.279-.918 8.253 8.253 0 0 1-2.64-2.247 3.176 3.176 0 0 0-.315 2.208 3.037 3.037 0 0 0 1.203 1.836A2.739 2.739 0 0 1 1.56 6.22v.038c0 .7.23 1.377.65 1.919.42.54 1.004.912 1.654 1.05-.423.122-.866.14-1.297.052.184.602.541 1.129 1.022 1.506a2.78 2.78 0 0 0 1.662.598 5.656 5.656 0 0 1-2.007 1.074A5.475 5.475 0 0 1 1 12.64a7.827 7.827 0 0 0 4.403 1.358" />
                  </svg>
                  Follow on Twitter
                </a>
              </div>
              <div>
                <a
                  href="https://elixirforum.com"
                  class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 dark:hover:bg-zinc-800 hover:text-zinc-900 dark:hover:text-zinc-50"
                >
                  <svg
                    viewBox="0 0 16 16"
                    aria-hidden="true"
                    class="h-4 w-4 fill-zinc-400 dark:fill-zinc-500 group-hover:fill-zinc-600 dark:group-hover:fill-zinc-400"
                  >
                    <path d="M8 13.833c3.866 0 7-2.873 7-6.416C15 3.873 11.866 1 8 1S1 3.873 1 7.417c0 1.081.292 2.1.808 2.995.606 1.05.806 2.399.086 3.375l-.208.283c-.285.386-.01.905.465.85.852-.098 2.048-.318 3.137-.81a3.717 3.717 0 0 1 1.91-.318c.263.027.53.041.802.041Z" />
                  </svg>
                  Discuss on the Elixir Forum
                </a>
              </div>
              <div>
                <a
                  href="https://web.libera.chat/#elixir"
                  class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 dark:hover:bg-zinc-800 hover:text-zinc-900 dark:hover:text-zinc-50"
                >
                  <svg
                    viewBox="0 0 16 16"
                    aria-hidden="true"
                    class="h-4 w-4 fill-zinc-400 dark:fill-zinc-500 group-hover:fill-zinc-600 dark:group-hover:fill-zinc-400"
                  >
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M6.356 2.007a.75.75 0 0 1 .637.849l-1.5 10.5a.75.75 0 1 1-1.485-.212l1.5-10.5a.75.75 0 0 1 .848-.637ZM11.356 2.008a.75.75 0 0 1 .637.848l-1.5 10.5a.75.75 0 0 1-1.485-.212l1.5-10.5a.75.75 0 0 1 .848-.636Z"
                    />
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M14 5.25a.75.75 0 0 1-.75.75h-9.5a.75.75 0 0 1 0-1.5h9.5a.75.75 0 0 1 .75.75ZM13 10.75a.75.75 0 0 1-.75.75h-9.5a.75.75 0 0 1 0-1.5h9.5a.75.75 0 0 1 .75.75Z"
                    />
                  </svg>
                  Chat on Libera IRC
                </a>
              </div>
              <div>
                <a
                  href="https://discord.gg/elixir"
                  class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 dark:hover:bg-zinc-800 hover:text-zinc-900 dark:hover:text-zinc-50"
                >
                  <svg
                    viewBox="0 0 16 16"
                    aria-hidden="true"
                    class="h-4 w-4 fill-zinc-400 dark:fill-zinc-500 group-hover:fill-zinc-600 dark:group-hover:fill-zinc-400"
                  >
                    <path d="M13.545 2.995c-1.02-.46-2.114-.8-3.257-.994a.05.05 0 0 0-.052.024c-.141.246-.297.567-.406.82a12.377 12.377 0 0 0-3.658 0 8.238 8.238 0 0 0-.412-.82.052.052 0 0 0-.052-.024 13.315 13.315 0 0 0-3.257.994.046.046 0 0 0-.021.018C.356 6.063-.213 9.036.066 11.973c.001.015.01.029.02.038a13.353 13.353 0 0 0 3.996 1.987.052.052 0 0 0 .056-.018c.308-.414.582-.85.818-1.309a.05.05 0 0 0-.028-.069 8.808 8.808 0 0 1-1.248-.585.05.05 0 0 1-.005-.084c.084-.062.168-.126.248-.191a.05.05 0 0 1 .051-.007c2.619 1.176 5.454 1.176 8.041 0a.05.05 0 0 1 .053.006c.08.065.164.13.248.192a.05.05 0 0 1-.004.084c-.399.23-.813.423-1.249.585a.05.05 0 0 0-.027.07c.24.457.514.893.817 1.307a.051.051 0 0 0 .056.019 13.31 13.31 0 0 0 4.001-1.987.05.05 0 0 0 .021-.037c.334-3.396-.559-6.345-2.365-8.96a.04.04 0 0 0-.021-.02Zm-8.198 7.19c-.789 0-1.438-.712-1.438-1.587 0-.874.637-1.586 1.438-1.586.807 0 1.45.718 1.438 1.586 0 .875-.637 1.587-1.438 1.587Zm5.316 0c-.788 0-1.438-.712-1.438-1.587 0-.874.637-1.586 1.438-1.586.807 0 1.45.718 1.438 1.586 0 .875-.63 1.587-1.438 1.587Z" />
                  </svg>
                  Join our Discord server
                </a>
              </div>
              <div>
                <a
                  href="https://fly.io/docs/elixir/getting-started/"
                  class="group -mx-2 -my-0.5 inline-flex items-center gap-3 rounded-lg px-2 py-0.5 hover:bg-zinc-50 dark:hover:bg-zinc-800 hover:text-zinc-900 dark:hover:text-zinc-50"
                >
                  <svg
                    viewBox="0 0 20 20"
                    aria-hidden="true"
                    class="h-4 w-4 fill-zinc-400 dark:fill-zinc-500 group-hover:fill-zinc-600 dark:group-hover:fill-zinc-400"
                  >
                    <path d="M1 12.5A4.5 4.5 0 005.5 17H15a4 4 0 001.866-7.539 3.504 3.504 0 00-4.504-4.272A4.5 4.5 0 004.06 8.235 4.502 4.502 0 001 12.5z" />
                  </svg>
                  Deploy your application
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
