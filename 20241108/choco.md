```console
11 4
mississippi
```

```julia
function main()
    n, k = parseints()

    set = Set(1:k)
    an = parseints()

    result = setdiff(set, an) |> sum

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()

```
