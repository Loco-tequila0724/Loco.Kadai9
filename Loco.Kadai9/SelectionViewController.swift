import UIKit

protocol selectionViewControllerDelegate: AnyObject {
    func didSelectPrefecture(name: String)
}

class SelectionViewController: UIViewController {
     weak var delegate: selectionViewControllerDelegate?

    private func selectPrefectureAndReturn(prefecture: String) {
        self.delegate?.didSelectPrefecture(name: prefecture)
        dismiss(animated: true, completion: nil)
    }
    @IBAction private func cancelButton() {
        dismiss(animated: true, completion: nil)
    }
    @IBAction private func selectTokyoButton(_ sender: Any) {
        selectPrefectureAndReturn(prefecture: "東京")
    }
    @IBAction private func selectKanagawaButton(_ sender: Any) {
        selectPrefectureAndReturn(prefecture: "神奈川県")
    }
    @IBAction private func selectSaitamaButton(_ sender: Any) {
        selectPrefectureAndReturn(prefecture: "埼玉県")
    }
    @IBAction private func selectChibaButton(_ sender: Any) {
        selectPrefectureAndReturn(prefecture: "千葉県")
    }
}
