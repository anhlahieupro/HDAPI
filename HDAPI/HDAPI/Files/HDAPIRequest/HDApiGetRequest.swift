import Alamofire
import ObjectMapper

// MARK: - All get requests

public extension HDApiRequest {
    func getExample(completionHandler: @escaping (_ response: UsersResponse?) -> ()) {
        HDApiPath.base = "https://reqres.in"
        request(path: HDApiPath.get, method: .get) { (json) in
            let response = Mapper<UsersResponse>().map(JSON: json ?? [:])
            completionHandler(response)
        }
    }
    
    func getGeolocationFromIPAdress(completionHandler: @escaping (_ response: GeolocationResponse?) -> ()) {
        guard let IPAdress = HDAPIUtils.getIPAddressFromURL() ?? HDAPIUtils.getIPAddress() else { return }
        let lang = "lang=en"
        let fields = String(format: "fields=%@,%@,%@,%@,%@,%@",
                            "status,message",
                            "continent,continentCode",
                            "country,countryCode,region,regionName,city,district,zip",
                            "lat,lon,timezone,currency",
                            "isp,org,as,asname,reverse",
                            "mobile,proxy,query")
        let url = "http://ip-api.com/json/" + IPAdress + "?" + lang + "&" + fields
        request(url: url, method: .get) { (json) in
            let response = Mapper<GeolocationResponse>().map(JSON: json ?? [:])
            completionHandler(response)
        }
    }
}
