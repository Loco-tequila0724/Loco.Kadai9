import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak private var prefectureLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }

        switch identifier {
        case "ShowSelection":
            guard let navigationController = segue.destination as? UINavigationController,
                  let selectionViewController = navigationController.topViewController as? SelectionViewController else { return }
            selectionViewController.delegate = self
        default:
            break
        }
    }
}

extension MainViewController: SelectionViewControllerDelegate {
    func didSelectPrefecture(name: String) {
        prefectureLabel.text = name
    }
}
