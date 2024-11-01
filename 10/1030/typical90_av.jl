function main()
    n, k = parseints()
    abn = [parseints() for _ ∈ 1:n]

    scores = append!(map(x -> x[2], abn), map(x -> x[1] - x[2], abn))
    sort!(scores, rev = true)

    result = sum(scores[begin:begin+k-1])
    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
