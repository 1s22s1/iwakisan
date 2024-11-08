function main()
    n = parseint()
    an = parseints()

    m = parseint()
    bm = parseints()

    l = parseint()
    cl = parseints()

    q = parseint()
    xq = parseints()

    set = Set()
    for a ∈ an, b ∈ bm, c ∈ cl
        push!(set, a + b + c)
    end

    for x ∈ xq
        if x ∈ set
            println("Yes")
        else
            println("No")
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
