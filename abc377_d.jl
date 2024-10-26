using DataStructures

function main()
    n, m = parseints()

    dict = SortedDict()

    for _ ∈ 1:n
        l, r = parseints()

        if haskey(dict, l)
            dict[l] = push!(dict[l], r)
        else
            dict[l] = [r]
        end
    end

    sn = []

    for (k, v) ∈ dict
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
