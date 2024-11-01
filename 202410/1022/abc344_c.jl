function main()
    n = parseint()
    an = parseints()
    m = parseint()
    bm = parseints()
    l = parseint()
    cl = parseints()

    set = Set([])
    for i ∈ 1:n, j ∈ 1:m, k ∈ 1:l
        push!(set, an[i] + bm[j] + cl[k])
    end

    q = parseint()
    xq = parseints()

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
