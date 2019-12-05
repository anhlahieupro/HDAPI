import Foundation
import ObjectMapper

public class HDDateFormatTransform: TransformType {
    public typealias Object = Date
    public typealias JSON   = String
    private let dateFormatter = DateFormatter()
    
    convenience init(dateFormat: String = "MM/dd/yyyy") {
        self.init()
        dateFormatter.dateFormat = dateFormat
    }
}

public extension HDDateFormatTransform {
    func transformFromJSON(_ value: Any?) -> Object? {
        if let dateString = value as? String {
            return dateFormatter.date(from: dateString)
        }
        return nil
    }
    
    func transformToJSON(_ value: Date?) -> JSON? {
        if let date = value {
            return dateFormatter.string(from: date)
        }
        return nil
    }
}
