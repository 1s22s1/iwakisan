using Printf

function main()
    n, m = parseints()
    pym = [parseints() for _ ∈ 1:m]

    dict = Dict()
    sorted_pym = sort(pym)
    sort_number = 1
    cur_prefecture_number = sorted_pym[begin][begin]
    for elem ∈ sorted_pym
        key = "$(elem[begin])-$(elem[end])"

        if cur_prefecture_number ≠ elem[begin]
            cur_prefecture_number = elem[begin]
            sort_number = 1
        end

        dict[key] = sort_number
        sort_number += 1
    end

    for py ∈ pym
        key = "$(py[begin])-$(py[end])"
        sort_number = get(dict, key, 0)

        @printf("%06d%06d\n", py[begin], sort_number)
    end

end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
