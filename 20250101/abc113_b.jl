function main()
    n = parseint()
    t, a = parseints()
    hn = parseints()

    result = 1
    target_diff = abs(1000a - (1000t - 6hn[begin]))

    for i ∈ 2:n
        cur_diff = abs(1000a - (1000t - 6hn[i]))

        if cur_diff < target_diff
            result = i
            target_diff = cur_diff
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
