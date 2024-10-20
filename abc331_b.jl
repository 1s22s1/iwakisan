function main()
    n, s, m, l = parseints()

    answer = typemax(Int)

    for i ∈ 0:Int(ceil(n / 6)), j ∈ 0:Int(ceil(n / 8)), k ∈ 0:Int(ceil(n / 12))
        if 6i + 8j + 12k ≥ n
            answer = min(answer, s * i + m * j + l * k)
        end
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
