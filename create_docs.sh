#/bin/zsh

rm -rf ./docs
dart doc .
mv doc docs
touch ./docs/index.html

echo '<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Skyle Dart API Reference</title>
    <meta http-equiv="refresh" content="0; URL=https://eyev-de.github.io/dart_skyle_api/api/index.html" />
  </head>
  <body>
  </body>
</html>' > ./docs/index.html