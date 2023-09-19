while true {
    let n = readLine()!
    if n == "0" { break }
    print(n == String(n.reversed()) ? "yes" : "no")
}