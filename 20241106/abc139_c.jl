function main()
    n = parseint()
    hn = parseints()

    result = maximum(rle(hn))

    println(result)
end

function rle(s)
    arr = []
    n = length(s)

    i = 1
    while i < n + 1
        j = i

        while j < n && s[j] ≥ s[j+1]
            j += 1
        end
        push!(arr, j - i)
        i = j + 1
    end

    return arr::Vector{}
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
