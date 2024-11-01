function main()
    n, q = parseints()
    s = parsestring()

    sn = [0]
    for i ∈ 1:n-1
        push!(sn, s[i] == s[i+1] ? sn[end] + 1 : sn[end])
    end

    for _ ∈ 1:q
        l, r = parseints()

        println(sn[r] - sn[l])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
