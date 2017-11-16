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
        //let apiUrl = URL(string: "http://10.1.11.65:8078/api/values")
        
        /*URLSession.shared.dataTask(with: apiUrl!) { (data, response, error) in
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
            
        }.resume()*/
        do {
            let list = try JSONDecoder().decode([Record].self, from: "[{\"width\":1842,\"height\":1427,\"length\":4726,\"vehicle\":{\"spotId\":470581,\"make\":\"Audi\",\"model\":\"A4\",\"description\":\"B9 S line Sedan 4dr S tronic 7sp 1.4T [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0001QLC.jpg\"}},{\"width\":1898,\"height\":1471,\"length\":4947,\"vehicle\":{\"spotId\":456290,\"make\":\"Holden\",\"model\":\"Commodore\",\"description\":\"VF Series II Evoke Sedan 4dr Spts Auto 6sp 3.0i [MY17]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/HOLDAFOV.jpg\"}},{\"width\":2069,\"height\":1724,\"length\":4599,\"vehicle\":{\"spotId\":469210,\"make\":\"Land Rover\",\"model\":\"Discovery Sport\",\"description\":\"L550 TD4 110kW SE Wagon 5dr Spts Auto 9sp 4x4 2.0DT [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0001ITM.jpg\"}},{\"width\":1627,\"height\":1488,\"length\":3571,\"vehicle\":{\"spotId\":468169,\"make\":\"Fiat\",\"model\":\"500\",\"description\":\"Series 4 Lounge Hatchback 3dr Man 5sp 1.2i [Mar]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0000AMY.jpg\"}},{\"width\":1881,\"height\":1624,\"length\":4671,\"vehicle\":{\"spotId\":458590,\"make\":\"BMW\",\"model\":\"X4\",\"description\":\"F26 xDrive20i Wagon 5dr Steptronic 8sp 4x4 2.0T\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0000TA3.jpg\"}},{\"width\":1960,\"height\":1766,\"length\":5042,\"vehicle\":{\"spotId\":461236,\"make\":\"Nissan\",\"model\":\"Pathfinder\",\"description\":\"R52 Series II ST Wagon 7st 5dr X-tronic 1sp 2WD 3.5i [MY17]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S000114C.jpg\"}},{\"width\":1983,\"height\":1835,\"length\":4999,\"vehicle\":{\"spotId\":452214,\"make\":\"Land Rover\",\"model\":\"Range Rover\",\"description\":\"L405 TDV6 Vogue Wagon 5dr Spts Auto 8sp 4x4 3.0DT [MY17]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/LAND0B8X.jpg\"}},{\"width\":1800,\"height\":1440,\"length\":4570,\"vehicle\":{\"spotId\":468864,\"make\":\"Hyundai\",\"model\":\"Elantra\",\"description\":\"AD Active Sedan 4dr Man 6sp 2.0i [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0000NIM.jpg\"}},{\"width\":1795,\"height\":1450,\"length\":4470,\"vehicle\":{\"spotId\":455929,\"make\":\"Mazda\",\"model\":\"3\",\"description\":\"BN Series Neo Hatchback 5dr SKYACTIV-MT 6sp 2.0i\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/MAZD4BN5.jpg\"}},{\"width\":1732,\"height\":1467,\"length\":3992,\"vehicle\":{\"spotId\":472129,\"make\":\"SKODA\",\"model\":\"Fabia\",\"description\":\"NJ 70TSI Hatchback 5dr Man 5sp 1.0T [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0001PEU.jpg\"}},{\"width\":1799,\"height\":1452,\"length\":4258,\"vehicle\":{\"spotId\":470265,\"make\":\"Volkswagen\",\"model\":\"Golf\",\"description\":\"7.5 110TSI Hatchback 5dr Man 6sp 1.4T [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0001FXS.jpg\"}},{\"width\":1795,\"height\":1455,\"length\":4340,\"vehicle\":{\"spotId\":465732,\"make\":\"Hyundai\",\"model\":\"i30\",\"description\":\"PD Active Hatchback 5dr Spts Auto 6sp 2.0i [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S000181W.jpg\"}},{\"width\":1969,\"height\":1747,\"length\":5075,\"vehicle\":{\"spotId\":470343,\"make\":\"Mazda\",\"model\":\"CX-9\",\"description\":\"TC GT Wagon 7st 5dr SKYACTIV-Drive 6sp 2.5T [Jul]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0000E85.jpg\"}},{\"width\":1840,\"height\":1450,\"length\":4865,\"vehicle\":{\"spotId\":455779,\"make\":\"Mazda\",\"model\":\"6\",\"description\":\"GL Series Sport Sedan 4dr SKYACTIV-Drive 6sp 2.5i\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/MAZD48O5.jpg\"}},{\"width\":1893,\"height\":1659,\"length\":4663,\"vehicle\":{\"spotId\":470684,\"make\":\"Audi\",\"model\":\"Q5\",\"description\":\"FY TDI sport Wagon 5dr S tronic 7sp quattro ultra 2.0DT [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S000155I.jpg\"}},{\"width\":1880,\"height\":1297,\"length\":4507,\"vehicle\":{\"spotId\":465929,\"make\":\"Porsche\",\"model\":\"911\",\"description\":\"991 Turbo Coupe 2dr PDK 7sp AWD 3.8TT [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S000154X.jpg\"}},{\"width\":1775,\"height\":1578,\"length\":3999,\"vehicle\":{\"spotId\":458202,\"make\":\"BMW\",\"model\":\"i3\",\"description\":\"I01 94Ah Hatchback 5dr Auto 1sp 0.6i/125kW Hybrid\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0000VZ9.jpg\"}},{\"width\":1854,\"height\":1410,\"length\":4468,\"vehicle\":{\"spotId\":470498,\"make\":\"BMW\",\"model\":\"M2\",\"description\":\"F87 LCI Coupe 2dr D-CT 7sp 3.0T [Jul]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0001N02.jpg\"}},{\"width\":1810,\"height\":1301,\"length\":4133,\"vehicle\":{\"spotId\":468921,\"make\":\"Mercedes-Benz\",\"model\":\"SLC43\",\"description\":\"R172 AMG Roadster 2dr 9G-TRONIC 9sp 3.0TT [Jun]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0001Q5E.jpg\"}},{\"width\":1857,\"height\":1458,\"length\":4370,\"vehicle\":{\"spotId\":473713,\"make\":\"Volvo\",\"model\":\"V40 Cross Country\",\"description\":\"T5 Pro Hatchback 5dr Adap Geartronic 8sp AWD 2.0T [MY18]\",\"imagePath\":\"http://redbook.li.csnstatic.com/redbook/car/spec/S0001S2M.jpg\"}}]".data(using: String.Encoding.utf8)!)
            self.records = list
        }
        catch let jsonError {
            print(jsonError)
        }
    }
}
