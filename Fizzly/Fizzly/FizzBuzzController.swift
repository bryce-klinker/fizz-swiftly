import UIKit

class FizzBuzzController: UIViewController {
    var service: FizzBuzzService?
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.service = HttpFizzBuzzService()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.service = HttpFizzBuzzService()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentValue = service!.getValue()
        if (currentValue.value % 3 == 0) {
            valueLabel!.text = "Fizz"
        }
        else {
            valueLabel!.text = String(currentValue.value)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

