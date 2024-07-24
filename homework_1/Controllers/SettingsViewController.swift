//
//  SettingsViewController.swift
//  homework_1
//
//  Created by Макей 😈 on 24.07.2024.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    private lazy var nameLabel: UILabel = configureLabel(text: "Имя", XCordinate: 42.0, YCordinate: 111.0)
    private lazy var surnameLabel: UILabel = configureLabel(text: "Фамилия", XCordinate: nameLabel.frame.minX, YCordinate: nameTextField.frame.minY + 73)
    private lazy var descriptionLabel: UILabel = configureLabel(text: "Описание", XCordinate: surnameLabel.frame.minX, YCordinate: surnameTextField.frame.minY + 73)
    
    private lazy var nameTextField: UITextField = configureTextField(YCordinate: nameLabel.frame.minY + 24, height: 51)
    private lazy var surnameTextField: UITextField = configureTextField(YCordinate: surnameLabel.frame.minY + 24, height: 51)
    private lazy var descriptionTextField: UITextField = configureTextField(YCordinate: descriptionLabel.frame.minY + 24, height: 144)
    
    private lazy var saveButton: UIButton = {
        $0.setTitle("Сохранить", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 30
        $0.frame = CGRect(x: descriptionTextField.frame.minX, y: descriptionTextField.frame.minY + 370, width: view.frame.size.width - 60, height: 60)
        return $0
    }(UIButton(primaryAction: saveButtonAction))
    
    private lazy var saveButtonAction: UIAction = UIAction { [weak self] _ in
        self?.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Настройки"
        view.addSubviews(nameLabel, nameTextField, surnameLabel, surnameTextField, descriptionLabel, descriptionTextField, saveButton)
    }
    
    private func configureLabel(text: String, XCordinate: CGFloat, YCordinate: CGFloat) -> UILabel {
        let label = UILabel()
        label.text = text
        label.frame = CGRect(x: XCordinate, y: YCordinate, width: 80, height: 19)
        return label
    }
    
    private func configureTextField(YCordinate: CGFloat, height: CGFloat) -> UITextField {
        let textField = UITextField()
        textField.backgroundColor = .systemGray5
        textField.layer.cornerRadius = 15
        textField.frame = CGRect(x: nameLabel.frame.minX - 12, y: YCordinate, width: view.frame.size.width - 60, height: height)
        return textField
    }
}
