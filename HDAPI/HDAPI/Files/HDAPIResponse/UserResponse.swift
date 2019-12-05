import ObjectMapper

public class UserResponse: HDApiResponse {
    public var id: String?
    public var email: String?
    public var first_name: String?
    public var last_name: String?
    public var avatar: String?

    public var name: String?
    public var job: String?
    public var createdAt: Date?
    
    override public func mapping(map: Map) {
        super.mapping(map: map)
        id <- map["id"]
        email <- map["email"]
        first_name <- map["first_name"]
        last_name <- map["last_name"]
        avatar <- map["avatar"]
        
        name <- map["name"]
        job <- map["job"]
        createdAt <- (map["createdAt"], HDDateFormatTransform(dateFormat: "MM/dd/yyyy"))
    }
}
