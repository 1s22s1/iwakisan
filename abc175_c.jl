function main()
    x, k, d = parseints()

    x = abs(x)

    if x ≥ k * d
        println(x - k * d)

        return
    end

    cur_x = x - (x ÷ d) * d
    cur_k = k - x ÷ d

    if iseven(cur_k)
        println(cur_x)
    else
        println(cur_x - d |> abs)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
