// 팩토리얼

import Foundation

class B10872 {
    func run() {
        if let num: Int = Int(readLine()!) {
            print((1...max(num, 1)).reduce(1, *))
        }
    }
}

//B10872().run()

/*
10
*/
