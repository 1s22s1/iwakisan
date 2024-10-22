function main()
    n = parseint()
    an = parseints()
    st = [parseints() for _ ∈ 1:n-1]

    for i ∈ 1:n-1
        an[i+1] += an[i] ÷ st[i][1] * st[i][2]
    end

    println(an[end])
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
