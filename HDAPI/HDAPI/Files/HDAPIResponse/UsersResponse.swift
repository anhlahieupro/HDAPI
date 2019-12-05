import ObjectMapper

public class UsersResponse: HDApiResponse {
    public var page: Int?
    public var per_page: Int?
    public var total: Int?
    public var total_pages: Int?
    public var data: [UserResponse]?
    
    override public func mapping(map: Map) {
        super.mapping(map: map)
        page <- map["page"]
        per_page <- map["per_page"]
        total <- map["total"]
        total_pages <- map["total_pages"]
        data <- map["data"]
    }
}
