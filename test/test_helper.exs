HTTPoison.start()

:inets.start()

{:ok, _} =
  :inets.start(
    :httpd,
    server_name: 'test 1',
    document_root: './test/JSON-Schema-Test-Suite/remotes',
    server_root: '.',
    port: 1234
  )

{:ok, _} = :inets.start(:httpd, server_name: 'test 2', document_root: './test/schemata', server_root: '.', port: 8000)

ExUnit.start()
