function main()
    n, k = parseints()

    dict = Dict()
    for i ∈ 1:n
        r = i % k

        dict[r] = get(dict, r, 0) + 1
    end

    result = 0
    for a ∈ 0:k-1
        b = (k - a) % k

        if 2b % k == 0
            result += get(dict, a, 0) * get(dict, b, 0)^2
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
