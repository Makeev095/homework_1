//
//  ViewController.swift
//  homework_1
//
//  Created by Макей 😈 on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let nameLabel: UILabel = UILabel()
    private let nameLabelValue: UILabel = UILabel()
    
    private let surnameLabel: UILabel = UILabel()
    private let surnameLabelValue: UILabel = UILabel()
    
    private let potokNumber: UILabel = UILabel()
    private let potokNumberValue: UILabel = UILabel()
    
    private let addDataButton: UIButton = UIButton()
    private let clearDataButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupConstraints()
        
    }
    
    private func setupView() {
        
        view.backgroundColor = .white
        
        nameLabel.text = "Имя: "
        nameLabelValue.text = "Дмитрий"
        nameLabelValue.textColor = .red
        
        surnameLabel.text = "Фамилия: "
        surnameLabelValue.text = "Макеев"
        surnameLabelValue.textColor = .red
        
        potokNumber.text = "Номер потока: "
        potokNumberValue.text = "ios 6"
        potokNumberValue.textColor = .red
        
        addDataButton.tintColor = .white
        addDataButton.setTitle("Добавить данные", for: .normal)
        addDataButton.backgroundColor = .black
        addDataButton.layer.cornerRadius = 15
        
        clearDataButton.tintColor = .systemBlue
        clearDataButton.setTitle("Очистить данные", for: .disabled)
        
        view.addSubview(nameLabel)
        view.addSubview(nameLabelValue)
        view.addSubview(surnameLabel)
        view.addSubview(surnameLabelValue)
        view.addSubview(potokNumber)
        view.addSubview(potokNumberValue)
        view.addSubview(addDataButton)
        view.addSubview(clearDataButton)
        
    }
    
    private func setupConstraints() {
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabelValue.translatesAutoresizingMaskIntoConstraints = false
        surnameLabel.translatesAutoresizingMaskIntoConstraints = false
        surnameLabelValue.translatesAutoresizingMaskIntoConstraints = false
        potokNumber.translatesAutoresizingMaskIntoConstraints = false
        potokNumberValue.translatesAutoresizingMaskIntoConstraints = false
        addDataButton.translatesAutoresizingMaskIntoConstraints = false
        clearDataButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            nameLabelValue.topAnchor.constraint(equalTo: nameLabel.topAnchor),
            nameLabelValue.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 5),
            
            surnameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            surnameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            surnameLabelValue.topAnchor.constraint(equalTo: surnameLabel.topAnchor),
            surnameLabelValue.leadingAnchor.constraint(equalTo: surnameLabel.trailingAnchor, constant: 5),
            
            potokNumber.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor,constant: 10),
            potokNumber.leadingAnchor.constraint(equalTo: surnameLabel.leadingAnchor),
            
            potokNumberValue.topAnchor.constraint(equalTo: potokNumber.topAnchor),
            potokNumberValue.leadingAnchor.constraint(equalTo: potokNumber.trailingAnchor, constant: 5),
            
            addDataButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 650),
            addDataButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            addDataButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            addDataButton.heightAnchor.constraint(equalToConstant: 70),
            
            clearDataButton.topAnchor.constraint(equalTo: addDataButton.bottomAnchor, constant: 20),
            clearDataButton.leadingAnchor.constraint(equalTo: addDataButton.leadingAnchor),
            clearDataButton.trailingAnchor.constraint(equalTo: addDataButton.trailingAnchor),
            clearDataButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
