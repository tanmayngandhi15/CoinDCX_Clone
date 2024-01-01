
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate
{
   
    
    @IBOutlet var Vw_menu: UIView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var Vw_balance: UIView!
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var Add: UIButton!
    
    
    var img = [UIImage(named: "Bitcoin"), UIImage(named: "ETH"), UIImage(named: "FTM"), UIImage(named: "XRP"), UIImage(named: "Matic"), UIImage(named: "DOGE"), UIImage(named: "USDT"), UIImage(named: "DOT"), UIImage(named: "ADA"), UIImage(named: "TRX")]
    
    var arrLbl = ["Bitcoin", "Ethereum", "Fantom", "Ripple", "Polygon", "DogeCoin", "Tether", "Polkadot", "Cardano", "Tron"]
    
    var arrLblShort = ["BTC", "ETH", "FTM", "XRP", "Matic", "DOGE", "USDT", "DOT", "ADA", "TRX"]
    
    var arrPrice = ["37,87,139.46", "1,98,073.18", "35.54", "56.76", "78.21", "8.50", "89.13", "649.52", "56.58", "9.12"]
    
    var arrPer = ["+4.60%", "+3.29%", "+8.87%", "+5.73%", "+6.56%", "+4.98%", "+1.55%", "+8.54%", "+15.40%", "-0.04%"]
    
    var arrNavImg = [UIImage(named: "Home"), UIImage(named: "Market"), UIImage(named: "Earn"), UIImage(named: "Futures"), UIImage(named: "Portfolio")]
    
    var arrNavLbl = ["Home", "Market", "Earn", "Futures", "Portfolio"]
    
    
    //Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrLbl.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CryptoCell", for: indexPath) as! CryptoTableViewCell
        cell.cryptoImg.image = img[indexPath.row]
        cell.cryptoLbl.text = arrLbl[indexPath.row]
        cell.cryptoLblShort.text = arrLblShort[indexPath.row]
        cell.cryptoPrice.text = arrPrice[indexPath.row]
        let perct = arrPer[indexPath.row].dropLast()
     
        cell.cryptoPer.text = arrPer[indexPath.row]
        
        if Double(perct)! >= 0.0 {
            cell.cryptoPer.textColor = .green
        }
        else
        {
            cell.cryptoPer.textColor = .red
        }
       
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Vw_menu.layer.cornerRadius = 18 //Vw_menu.bounds.height / 2
        Vw_menu.layer.borderWidth = 0.5
        Vw_menu.layer.borderColor = UIColor.white.cgColor
        Vw_menu.layer.shadowOffset = CGSize(width: 0, height: 4)
        Vw_menu.layer.shadowOpacity = 0.8
        Vw_menu.layer.shadowRadius = 3
        Vw_menu.layer.shadowColor = UIColor.gray.cgColor
        Vw_menu.backgroundColor = UIColor.white
    
        
        searchBar.layer.cornerRadius = 18
        searchBar.layer.borderWidth = 0.5
        searchBar.layer.borderColor = UIColor.white.cgColor
        searchBar.layer.shadowColor = UIColor.white.cgColor
        searchBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        searchBar.layer.shadowOpacity = 0.8
        searchBar.layer.shadowRadius = 3
        searchBar.backgroundColor = UIColor.white
        
        Vw_balance.layer.cornerRadius = Vw_balance.bounds.height / 2
        Vw_balance.layer.shadowOffset = CGSize(width: 0, height: 4)
        Vw_balance.layer.shadowOpacity = 0.8
        Vw_balance.layer.shadowRadius = 3
        Vw_balance.layer.shadowColor = UIColor.gray.cgColor
        Vw_balance.layer.cornerRadius = 18
        Vw_balance.layer.borderWidth = 0.5
        Vw_balance.layer.borderColor = UIColor.lightGray.cgColor
        Vw_balance.backgroundColor = UIColor.lightGray.withAlphaComponent(0.12)
        
        
        Add.layer.cornerRadius = 12
        Add.layer.borderWidth = 0.5
        Add.layer.borderColor = UIColor.white.cgColor
        Add.layer.shadowColor = UIColor.white.cgColor
        Add.layer.shadowOffset = CGSize(width: 0, height: 2)
        Add.layer.shadowOpacity = 0.8
        Add.layer.shadowRadius = 3
        Add.backgroundColor = UIColor.white
        
        segmentControl.setTitleTextAttributes([.foregroundColor: UIColor.blue], for: .selected)



        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
                tap.cancelsTouchesInView = false
                view.addGestureRecognizer(tap)
    
    }


}

