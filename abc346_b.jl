function main()
    w, b = parseints()

    keyboard = " wbwbwwbwbwbw"^30

    @show length(keyboard) - w - b + 1
    for i ∈ 1:length(keyboard)-w-b+1
        dict = Dict()

        for j ∈ i:i+w+b-1
            dict[keyboard[j]] = get(dict, keyboard[j], 0) + 1
        end

        if get(dict, 'w', 0) == w && get(dict, 'b', 0) == b
            println("Yes")

            exit()
        end
    end

    println("No")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
