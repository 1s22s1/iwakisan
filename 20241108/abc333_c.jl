function main()
    n = parseint()
    repunits = BigInt[
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
    sums = []

    for i ∈ eachindex(repunits), j ∈ eachindex(repunits), k ∈ eachindex(repunits)
        push!(sums, repunits[i] + repunits[j] + repunits[k])
    end

    sort!(unique!(sums))

    println(sums[n])
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
