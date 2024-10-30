function main()
    n, k = parseints()
    abn = [parseints() for _ ∈ 1:n]

    scores = append!(map(x -> x[end], abn), map(x -> x[begin] - x[end], abn))
    sort!(scores, rev = true)

    result = sum(scores[begin:k])

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
