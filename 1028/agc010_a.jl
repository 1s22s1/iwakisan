function main()
    n = parseint()
    an = parseints()

    if filter(x -> isodd(x), an) |> length |> iseven
        println("YES")
    else
        println("NO")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
