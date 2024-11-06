using Combinatorics

function main()
    n = parseint()

    numbers = []
    for arr ∈ permutations(1:n)
        push!(numbers, makenumber(arr))
    end

    pn = makenumber(parseints())
    qn = makenumber(parseints())

    a = findfirst(x -> x == pn, numbers)
    b = findfirst(x -> x == qn, numbers)

    result = abs(a - b)

    println(result)
end

function makenumber(arr)
    return map(e -> string(e), arr) |> join
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
