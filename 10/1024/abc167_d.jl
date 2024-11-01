function main()
    n, k = parseints()
    an = parseints()

    path = [1]

    while true
        next_circle = an[path[end]]

        if next_circle == 1
            break
        end

        push!(path, next_circle)
    end

    q = k % length(path)

    if q == 0
        println(path[begin])
    else
        println(path[q+1])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
