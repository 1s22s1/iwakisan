function main()
    n, k = parseints()

    dict = Dict()
    for i ∈ 1:n
        r = i % k
        dict[r] = get(dict, r, 0) + 1
    end

    result = 0

    @show dict
    for (k1, v1) ∈ dict, (k2, v2) ∈ dict
        k3 = (k - k1) % k

        if (k2 + k3) % k == 0
            result += v1 * v2 * get(dict, k3, 0)
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
