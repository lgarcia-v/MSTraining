


func longestCommonPrefix(_ arr: [String]) -> String {
    //CASE EMPTY ARRAY
    if arr.isEmpty {
        return ""
    }
    //ASSUME arr[0] is longest commmon prefix
    if var prefixStr = arr.first {
        //ITERATE THROUGH arr
        for index in 1..<arr.count {
            let str = arr[index]
            //while arr[1...] still matches 
            while str.contains(prefixStr) == false {
                let index = prefixStr.index(prefixStr.startIndex, offsetBy: prefixStr.count - 1)
                prefixStr = String(prefixStr[..<index])
                if prefixStr.count == 0 {
                    return ""
                }
            }
        }
        
        return prefixStr
    }
    //CASE NO COMMON PREFIX
    return ""
}

let str = longestCommonPrefix(["plad", "plain", "plank", "plow"])

print(str)
