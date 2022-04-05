//
//  HomeView.swift
//  AutoLay...
//
//  Created by Владислав Дзярик on 04.04.2022.
//

import UIKit


class HomeView: UIView {
    let controller: HomeController
    
    let label = UILabel()
    let sidesButton = UIButton()
    let centerButton = UIButton()
    let safeButton = UIButton()
    
    let mySwitch = UISwitch()

    init(controller: HomeController) {
        self.controller = controller
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setupView() {
        backgroundColor = .black
        
        addSubview(mySwitch)
        mySwitch.backgroundColor = .gray
        mySwitch.layer.cornerRadius = 15
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //mySwitch.centerYAnchor.constraint(equalTo: centerYAnchor),
            mySwitch.leftAnchor.constraint(equalTo: leftAnchor, constant: 50)
        ])
        
        addSubview(label)
        label.backgroundColor = .white
        label.text = "label"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 44)
        label.adjustsFontSizeToFitWidth = true
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            label.heightAnchor.constraint(equalToConstant: 50),
            label.leftAnchor.constraint(equalTo: leftAnchor, constant: 50),
            label.rightAnchor.constraint(equalTo: rightAnchor, constant: -50)
        ])
        
        
        addSubview(sidesButton)
        sidesButton.backgroundColor = .white
        sidesButton.setTitle("sidesButton", for: .normal)
        sidesButton.setTitleColor(.black, for: .normal)
        sidesButton.layer.cornerRadius = 10
        sidesButton.translatesAutoresizingMaskIntoConstraints = false
        sidesButton.addTarget(self, action: #selector(sidesButtonTap(sender:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            sidesButton.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            sidesButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -650),
            sidesButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 50),
            sidesButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -50)
        ])
        
        
        addSubview(centerButton)
        centerButton.backgroundColor = .blue
        centerButton.setTitle("centerButton", for: .normal)
        centerButton.setTitleColor(.black, for: .normal)
        centerButton.layer.cornerRadius = 75
        centerButton.translatesAutoresizingMaskIntoConstraints = false
        centerButton.addTarget(self, action: #selector(centerButtonTap(sender:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            centerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            centerButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            centerButton.widthAnchor.constraint(equalToConstant: 150),
            centerButton.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        
        addSubview(safeButton)
        safeButton.backgroundColor = .red
        safeButton.setTitle("safeButton", for: .normal)
        safeButton.setTitleColor(.black, for: .normal)
        safeButton.translatesAutoresizingMaskIntoConstraints = false
        safeButton.addTarget(self, action: #selector(safeButtonTap(sender:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            safeButton.topAnchor.constraint(equalTo: centerButton.bottomAnchor, constant: 50),
            safeButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            safeButton.leftAnchor.constraint(equalTo: leftAnchor),
            safeButton.rightAnchor.constraint(equalTo: rightAnchor)
        ])
    }
    
    
    @objc func sidesButtonTap(sender: UIButton) {
        label.text = "sidesButton"
    }
    
    
    @objc func centerButtonTap(sender: UIButton) {
        if label.text!.contains("label") {
            label.text = "нажми sidesButton+"
            label.text?.removeLast()
            return
        }
        else if label.text == "sidesButton" {
            label.text = "centerButton"
        } else {
            label.backgroundColor = .yellow
            label.textColor = .blue
        }
    }
    
    
    @objc func safeButtonTap(sender: UIButton) {
        label.text = "label " + DoubleToString(number:1)
    }
    
    func DoubleToString(number: Double) -> String {
        let numberInt = Int(number)
        if Double(numberInt) == number {
            return String(numberInt)
        } else {
            return number.description
        }
    }
}
