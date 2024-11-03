function main()
    arr = parseints() |> sort
    diff = 2arr[end] - arr[begin] - arr[begin+1]

    if iseven(diff)
        result = diff ÷ 2
    else
        result = (diff - 1) ÷ 2 + 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
