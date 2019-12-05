import Alamofire
import ObjectMapper

// MARK: - All post requests

public extension HDApiRequest {
    func postExample(parameters: [String: Any], completionHandler: @escaping (_ response: UserResponse?) -> ()) {
        HDApiPath.base = "https://reqres.in"
        request(path: HDApiPath.post, method: .post, parameters: parameters) { (json) in
            let response = Mapper<UserResponse>().map(JSON: json ?? [:])
            completionHandler(response)
        }
    }
}
