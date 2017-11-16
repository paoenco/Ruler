import Foundation

class VehicleInfoRepository {
    public var records : [Record]
    
    init() {
        self.records = [Record]()
        loadData()
        while self.records.count < 1 {
            sleep(1)
        }
    }
    
    func loadData() {
        let apiUrl = URL(string: "http://10.1.11.65:8078/api/values")
        
        URLSession.shared.dataTask(with: apiUrl!) { (data, response, error) in
            guard let data = data else {
                self.records = [Record]()
                return
            }
            do {
                let list = try JSONDecoder().decode([Record].self, from: data)
                self.records = list
            }
            catch let jsonError {
                print(jsonError)
            }
            
        }.resume()
    }
}
