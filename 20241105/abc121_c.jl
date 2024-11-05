function main()
    n, m = parseints()
    abn = [parseints() for _ ∈ 1:n]

    sort!(abn)

    result = 0

    for ab ∈ abn
        if m ≤ ab[end]
            result += m * ab[begin]

            println(result)

            return
        else
            m -= ab[end]
            result += ab[begin] * ab[end]
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
