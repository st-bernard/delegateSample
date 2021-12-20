import UIKit

protocol sayHelloDelegate {
    func sayhello()
}

class ViewController: UIViewController {
    
    var button: UIButton!

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
        let secondVC = SecondViewController(delegate: self)
        present(secondVC, animated: true)
    }
    
    func changeButtonText() {
        button.setTitle("changed", for: .normal)
    }
}

extension ViewController: sayHelloDelegate {
    func sayhello() {
        print("hello")
    }
}

