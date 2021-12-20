import UIKit

class SecondViewController: UIViewController {
    
    var delegate: sayHelloDelegate
    
    init(delegate: sayHelloDelegate) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        let button = UIButton(frame: frame)
        button.backgroundColor = .systemBlue
        button.setTitle("say hello", for: .normal)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func didTapButton(_ sender: UIButton) {
        delegate.sayhello()
    }
}
