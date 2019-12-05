import ObjectMapper

public class HDApiResponse: Mappable {
    public var errorCode: Int?
    public var errorMessage: String?
    
    required public init?(map: Map) { }
    
    public func mapping(map: Map) {
        errorCode <- map["error.code"]
        errorMessage <- map["error.message"]
    }
}
