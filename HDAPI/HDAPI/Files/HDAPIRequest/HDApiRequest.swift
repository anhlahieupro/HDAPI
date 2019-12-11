import Alamofire
import ObjectMapper

public class HDApiRequest: NSObject {
    public static let shared = HDApiRequest()
    private override init() { }
}

public extension HDApiRequest {
    func request(path: String,
                 method: HTTPMethod,
                 parameters: [String: Any] = [:],
                 headers: HTTPHeaders = HDApiPath.headers,
                 completionHandler: @escaping (_ json: [String: Any]?) -> ()) {
        request(url: HDApiPath.base + path,
                method: method,
                parameters: parameters,
                headers: headers,
                completionHandler: completionHandler)
    }
    
    func request(url: String,
                 method: HTTPMethod,
                 parameters: [String: Any] = [:],
                 headers: HTTPHeaders = HDApiPath.headers,
                 completionHandler: @escaping (_ json: [String: Any]?) -> ()) {
        guard let url = URL(string: url) else { return }
        let encoding: ParameterEncoding = (method == .get ? URLEncoding.queryString : JSONEncoding.default)
        Alamofire.request(url,
                          method: method,
                          parameters: parameters,
                          encoding: encoding,
                          headers: headers)
            .responseJSON { (response) in
                if let error = response.error {
                    completionHandler(nil)
                    print(error.localizedDescription)
                    return
                }
                switch(response.result) {
                case .success(let json):
                    let JSON = json as? [String : Any]
                    if let JSONData = try? JSONSerialization.data (withJSONObject: JSON ?? [:], options: .prettyPrinted),
                        let JSONString = String(data: JSONData, encoding: String.Encoding.ascii) {
                        print(JSONString)
                    }
                    completionHandler(JSON)
                case .failure(let error):
                    print(error.localizedDescription)
                    completionHandler(nil)
                }
        }
    }
}
