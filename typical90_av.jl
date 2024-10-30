function main()
    n, k = parseints()
    abn = [parseints() for _ ∈ 1:n]

    result = 0
    cur = 1

    while cur ≤ n && k > 0
        if k ≥ 2
            if abn[k][begin] > abn[k][end]+abn[k+1][end]
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
