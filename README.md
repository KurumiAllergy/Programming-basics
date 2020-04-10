「プログラミングの基礎(Computer Science Library)」　浅井健一(著)

上記本の学習記録用リポジトリ

## Environment
WSL Ubuntu18.04  
Ocaml 4.05.0

## Compile
```bash
$ ocamlopt -o exfilename source.ml
```

## Execute
```bash
$ ./exfilename
```

文字化けが発生した場合  
.ocamlinitを作成して以下を記述
```
let print_non_escaped_string ppf = Format.fprintf ppf "\"%s\"";;
#install_printer print_non_escaped_string;;
```