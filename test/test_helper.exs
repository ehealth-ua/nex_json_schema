HTTPoison.start()

:inets.start()

{:ok, _} =
  :inets.start(
    :httpd,
    server_name: ~c"test 1",
    document_root: ~c"./test/JSON-Schema-Test-Suite/remotes",
    server_root: ~c".",
    port: 1234
  )

{:ok, _} =
  :inets.start(:httpd, server_name: ~c"test 2", document_root: ~c"./test/schemata", server_root: ~c".", port: 8000)

ExUnit.start()
