function main()
    n, k = parseints()
    paths = [n]
    first_length = -1

    while true
        next = next_n(paths[end])

        if next ∉ paths
            push!(paths, next)
        else
            first_length = findfirst(x -> x == next, paths) - 1

            break
        end
    end

    loop_length = length(paths) - first_length

    if k ≤ first_length - 1
        println(paths[k+1])

        return
    end

    r = (k - first_length + 1) % loop_length

    if r == 0
        println(paths[end])
    else
        println(paths[r+first_length])
    end
end

function next_n(n)
    return (n + (split(string(n), "") |> x -> parse.(Int, x) |> sum)) % 10^5
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
