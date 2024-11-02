function main()
    n = parseint()
    qrs = [parseints() for _ ∈ 1:n]

    q = parseint()

    for _ ∈ 1:q
        t, d = parseints()

        q, r = qrs[t]

        cur_q, cur_r = divrem(d, q)

        if cur_r ≤ r
            println(d + r - cur_r)
        else
            println(d + q - (cur_r - r))
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
