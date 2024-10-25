# 94123

function main()
    n, k = parseints()
    an = parseints()

    path = [1]
    next = an[1]

    while next ∉ path
        push!(path, next)

        next = an[path[end]]
    end

    circle_begin = findfirst(x -> x == next, path)
    circle_end = length(path)
    circle_length = circle_end - circle_begin + 1
    rest_length = circle_end - circle_length

    if rest_length == 0
        r = (k - rest_length) % circle_length
    else
        r = k % circle_length
    end

    if r == 0
        println(path[begin])
    else
        println(path[r+1])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
