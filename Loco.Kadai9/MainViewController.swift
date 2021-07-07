import UIKit

class MainViewController: UIViewController {
    @IBOutlet private weak var prefectureLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        switch identifier {
        case "ShowSelection":
            guard let navigationController = segue.destination as? UINavigationController, let selectionController = navigationController.topViewController as? SelectionViewController else { return }
            selectionController.delegate = self
        default:
            break
        }
    }
}
extension MainViewController: selectionViewControllerDelegate {
    func didSelectPrefecture(name: String) {
        prefectureLabel.text = name
    }
}
