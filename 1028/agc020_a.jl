function main()
    n, a, b = parseints()

    if (iseven(a) && iseven(b)) || (isodd(a) && isodd(b))
        println("Alice")
    else
        println("Borys")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
