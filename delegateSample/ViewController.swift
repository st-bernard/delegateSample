import UIKit

protocol SayHelloDelegate {
    func sayhello()
}

struct Greetings: SayHelloDelegate {
    func sayhello() {
        print("こんにちは")
    }

    func sayGoobye() {
        print("さよなら")
    }
}

class ViewController: UIViewController {
    
    var button: UIButton!
    let sayHello = Greetings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        button = UIButton(frame: frame)
        button.backgroundColor = .systemBlue
        button.setTitle("next view", for: .normal)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func didTapButton(_ sender: UIButton) {
        let secondVC = SecondViewController(delegate: sayHello)
        present(secondVC, animated: true)
    }
}

