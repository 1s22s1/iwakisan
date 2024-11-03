function main()
    a, b, c, d = split(parsestring(), "")

    for op1 ∈ ['+', '-'], op2 ∈ ['+', '-'], op3 ∈ ['+', '-']
        code_string = a * op1 * b * op2 * c * op3 * d

        if eval(Meta.parse(code_string)) == 7
            println(code_string * "=7")

            return
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
