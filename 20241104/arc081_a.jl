function main()
    n = parseint()
    an = parseints()

    dict = Dict()
    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    sorted_pair = sort(collect(dict), rev = true)
    rods = []

    for (k, v) ∈ sorted_pair
        if v ≥ 4
            push!(rods, k)
            push!(rods, k)
        end

        if 2 ≤ v < 4
            push!(rods, k)
        end

        if length(rods) ≥ 2
            println(rods[end] * rods[end-1])

            return
        end
    end

    println(0)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
