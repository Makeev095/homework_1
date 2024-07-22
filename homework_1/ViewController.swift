//
//  ViewController.swift
//  homework_2
//
//  Created by Макей 😈 on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var oldPasswordField: UITextField = configurePasswordField(placeholderText: "Старый пароль", yPossition: changePasswordLabel.frame.minY + 28.0)
    lazy var newPasswordField: UITextField = configurePasswordField(placeholderText: "Новый пароль", yPossition: oldPasswordField.frame.minY + 66.0)
    
    lazy var topImageView: UIImageView = {
        $0.image = UIImage(named: "TopImage")
        $0.frame.size = CGSize(width: view.frame.size.width, height: 156)
        return $0
    }(UIImageView())
    
    lazy var accountImageView: UIImageView = {
        $0.image = UIImage(named: "AccountImage")
        $0.frame = CGRect(x: 30, y: topImageView.frame.maxY + 33, width: 100, height: 100)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 50
        return $0
    }(UIImageView())
    
    lazy var nameAndSurnameLabel: UILabel = {
        $0.text = "Дмитрий Макеев"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        $0.frame = CGRect(x: 146, y: topImageView.frame.maxY + 52, width: 140, height: 19)
        return $0
    }(UILabel())
    
    lazy var editingButton: UIButton = {
        $0.setTitle("Редактировать", for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 10
        $0.frame = CGRect(x: 146, y: nameAndSurnameLabel.frame.minY + 28, width: 147, height: 34)
        $0.addAction(editingButtonAction, for: .touchUpInside)
        return $0
    }(UIButton())
    
    lazy var addDescriptionLabel: UILabel = {
        $0.text = "Добавить описание"
        $0.frame = CGRect(x: 30, y: accountImageView.frame.minY + 152, width: 160, height: 19)
        return $0
    }(UILabel())
    
    lazy var descriptionTextView: UITextView = {
        $0.backgroundColor = .systemGray5
        $0.frame = CGRect(x: 30, y: addDescriptionLabel.frame.minY + 28, width: view.frame.size.width - 60, height: 150)
        $0.layer.cornerRadius = 20
        return $0
    }(UITextView())
    
    lazy var changePasswordLabel: UILabel = {
        $0.text = "Изменить пароль"
        $0.frame = CGRect(x: 30, y: descriptionTextView.frame.minY + 183, width: 145, height: 19)
        return $0
    }(UILabel())
    
    lazy var saveButton: UIButton = {
        $0.setTitle("Coxpaнить", for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 10
        $0.frame = CGRect(x: 30, y: newPasswordField.frame.minY + 120, width: view.frame.size.width - 60, height: 55)
        $0.addAction(saveButtonAction, for: .touchUpInside)
        return $0
    }(UIButton())
    
    lazy var saveButtonAction: UIAction = UIAction{ _ in
        self.saveButton.backgroundColor = .black
        self.saveButton.setTitle("Пароль успешно изменен!", for: .normal)
    }
    
    lazy var editingButtonAction: UIAction = UIAction{ _ in
        self.editingButton.backgroundColor = .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        
        view.backgroundColor = .white
        
        view.addSubview(topImageView)
        view.addSubview(accountImageView)
        view.addSubview(nameAndSurnameLabel)
        view.addSubview(editingButton)
        view.addSubview(addDescriptionLabel)
        view.addSubview(descriptionTextView)
        view.addSubview(changePasswordLabel)
        view.addSubview(oldPasswordField)
        view.addSubview(newPasswordField)
        view.addSubview(saveButton)
    }
    
    private func configurePasswordField(placeholderText: String, yPossition: Double) -> UITextField {
        let passwordField = UITextField()
        passwordField.backgroundColor = .systemGray5
        passwordField.frame = CGRect(x: 30, y: yPossition, width: view.frame.size.width - 60.0, height: 52)
        passwordField.placeholder = placeholderText
        passwordField.layer.cornerRadius = 10
        passwordField.isSecureTextEntry = true
        return passwordField
    }
}
