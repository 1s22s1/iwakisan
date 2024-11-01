function main()
    n = parseint()
    an = parseints()

    set = Set(an)
    answer = sort(collect(set), rev = true)[begin+1]

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
