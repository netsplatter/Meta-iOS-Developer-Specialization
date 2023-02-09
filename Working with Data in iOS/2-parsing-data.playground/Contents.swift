import Foundation
let session = URLSession.shared
let task = session.dataTask(with: "www.littleLemon.com") { data, response, error in
 print("Task completed")
}
task.resume()
