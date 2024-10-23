function main()
    n = parseint()
    an = parseints()

    for i ∈ 1:n-1
        print("$(an[i]*an[i+1]) ")
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
