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
        valueLabel!.text = fizzBuzz(value: service!.getValue())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func updateButtonTapped(_ sender: UIButton) {
        valueLabel!.text = fizzBuzz(value: service!.getValue())
    }
}

