import Foundation

public struct Response {
    let request: URLRequest
    let response: HTTPURLResponse?
    let data: Data
    public init(_ request: URLRequest, response: HTTPURLResponse?, data: Data?) {
        self.request = request
        self.response = response
        self.data = data ?? Data()
    }
}

extension Response: Hashable {
    public static func == (lhs: Response, rhs: Response) -> Bool {
        return lhs.request == rhs.request
            && lhs.response == rhs.response
            && lhs.data == rhs.data
    }
}
