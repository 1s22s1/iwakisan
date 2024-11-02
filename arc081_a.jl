function main()
    n = parseint()
    an = parseints()

    dict = Dict()
    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    sorted_dict = sort(collect(dict), rev=true)
    rods = []

    for (k, v) ∈ sorted_dict
        if v ≥ 4
            if isempty(rods)
                println(k*k)

                return
            else
                push!(rods, v)

                break
            end
        end

        if 2 ≤ v < 4
            push!(rods, k)
        end

        if length(rods) == 2
            break
        end
    end

    if length(rods) == 2
        println(rods[begin]*rods[end])
    else
        println(0)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
