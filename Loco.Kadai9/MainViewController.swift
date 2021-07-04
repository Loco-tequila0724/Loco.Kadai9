import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak private var prefectureLabel: UILabel!
    internal var prefectureName = "未経験"

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prefectureLabel.text = prefectureName
    }
}
