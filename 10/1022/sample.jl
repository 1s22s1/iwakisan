for i ∈ 1:3
    for j ∈ 1:3
        if j == 2
            break
        end

        @show i, j
    end
end
