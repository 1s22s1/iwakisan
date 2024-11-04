function main()
    n, k = parseints()
    hn = [parseint() for _ ∈ 1:n]

    sort!(hn)

    result = typemax(Int)
    for i ∈ 1:n-k+1
        result = min(result, hn[k+i-1] - hn[i])
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
