import UIKit

class FizzBuzzController: UIViewController {
    var service: FizzBuzzService?
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var updateButton: UIButton!
    
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func updateButtonTapped(_ sender: UIButton) {
        service!.getValue { value in
            self.valueLabel!.text = fizzBuzz(value: value)
        }
    }
}

