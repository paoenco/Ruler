import UIKit

class CarSelectorTableViewController: UITableViewController {
    var vehicleInfoRepository : VehicleInfoRepository
    
    init(vehicleInfoRepository: VehicleInfoRepository) {
        self.vehicleInfoRepository = vehicleInfoRepository
        super.init(style: UITableViewStyle.plain)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.vehicleInfoRepository = VehicleInfoRepository()
        
        super.init(coder: aDecoder)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true) {
            
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let record = self.vehicleInfoRepository.records[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarSelectionCell") as! CarSelectionCell
        cell.make?.text = record.vehicle.make
        cell.model?.text = record.vehicle.model
        cell.descriptionLabel?.text = record.vehicle.description
        cell.thumbnail?.image = nil
        let urlString = record.vehicle.imagePath.appending("?width=200")
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                DispatchQueue.main.async {
                    cell.thumbnail?.image = UIImage(data: data!)
                }
            }
        }.resume()
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vehicleInfoRepository.records.count
    }
}
