function main()
    n = parseint()
    hn = parseints()

    result = 0

    for i ∈ 1:maximum(hn)
        result += length(rle(hn, i))
    end

    println(result)
end

function rle(s, height)
    arr = []
    n = length(s)

    i = 1
    while i < n + 1
        j = i

        if s[j] ≥ height
            while j < n + 1 && s[j] ≥ height
                j += 1
            end
        else
            while j < n + 1 && s[j] < height
                j += 1
            end
        end

        if s[i] ≥ height
            push!(arr, i)
        end

        i = j
    end

    return arr::Vector{}
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
