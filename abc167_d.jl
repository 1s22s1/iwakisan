function main()
    n, k = parseints()
    an = parseints()

    paths = [1]
    next = an[begin]

    while next ∉ paths
        push!(paths, next)

        next = an[paths[end]]
    end

    loop_begin = findfirst(x -> x == next, paths)
    loop_end = length(paths)
    loop_length = loop_end - loop_begin + 1
    rest_length = length(paths) - loop_length

    # In case of path is all loop
    if loop_end == loop_length
        q = k % loop_length

        if q == 0
            println(paths[begin])
        else
            println(paths[q+1])
        end
    else
        if k < rest_length
            println(paths[k+1])
        else
            q = (k - rest_length + 1) % loop_length

            if q == 0
                println(paths[end])
            else
                println(paths[rest_length+q])
            end
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
