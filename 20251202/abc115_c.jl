function main()
    n, k = parseints()
    hn = [parseint() for _ ∈ 1:n]

    result = typemax(Int)

    sort!(hn, rev=true)

    for i ∈ 1:n-k+1
        result = min(result, hn[i] - hn[i+k-1])
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
