import UIKit
import Lottie

class LottieViewController: UIViewController {
    let mexican = AnimationView(name: "mexican")
    let mushroom = AnimationView(name: "mushroom_jumping")

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        mexican.frame = CGRect(x: 0, y: 24 , width: screenWidth, height: screenHeight/2)
        mushroom.frame = CGRect(x: -50, y: screenHeight/2 - 100,
                                width: screenWidth + 200,
                                height:300)
        mexican.loopMode = .loop
        mushroom.loopMode = .loop
        view.addSubview(mexican)
        view.addSubview(mushroom)
        mexican.play()
        mushroom.play()
    }

}
