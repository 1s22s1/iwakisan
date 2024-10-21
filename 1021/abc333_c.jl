function main()
    n = parseint()

    repunit_arr = [
        1,
        11,
        111,
        1111,
        11111,
        111111,
        1111111,
        11111111,
        111111111,
        1111111111,
        11111111111,
        111111111111,
    ]
    trio_arr = []

    for i ∈ eachindex(repunit_arr), j ∈ eachindex(repunit_arr), k ∈ eachindex(repunit_arr)
        push!(trio_arr, repunit_arr[i] + repunit_arr[j] + repunit_arr[k])
    end

    answer = sort(unique(trio_arr))[n]

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
