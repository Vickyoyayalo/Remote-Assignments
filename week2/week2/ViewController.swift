import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    
    let texts = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
    ]
    
    let colors: [UIColor] = [
        .red, .orange, .yellow, .green, .blue, .purple, .brown
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 初始設定
        changeContent()
    }
    
    @IBAction func changeButtonTapped(_ sender: UIButton) {
        changeContent()
    }
    
    func changeContent() {
        // 隨機選擇一個文本和顏色
        let randomText = texts.randomElement()!
        let randomColor = colors.randomElement()!
        
        // 更新標籤文本和背景顏色
        middleLabel.text = randomText
        view.backgroundColor = randomColor
    }
}
