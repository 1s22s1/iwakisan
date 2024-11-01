function main()
    n, k = parseints()
    an = parseints()

    answer = sum(setdiff(Set(1:k), Set(an)))

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
