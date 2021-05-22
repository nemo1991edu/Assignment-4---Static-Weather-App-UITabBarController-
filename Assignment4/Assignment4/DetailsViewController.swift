//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Takamiya Kengo on 2020/12/14.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var city: City!
    let vancouver = City(name: "Vancouver", temp: 15, precipitation: 95, icon: "canada", summary: "Rainy")
    let verona = City(name: "Verona", temp: 22, precipitation: 20, icon: "italy", summary: "Cloudy")
    let tokyo = City(name: "Tokyo", temp: 24, precipitation: 40, icon: "japan", summary: "Sunny")
    let saoPaulo = City(name: "Sao Paulo", temp: 32, precipitation: 20, icon: "brazil", summary: "Sunny")
    let seoul = City(name: "Seoul", temp: 35, precipitation: 50, icon: "skorea", summary: "Sunny")
    
    let countryName: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let temperature: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let summary: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.addSubview(countryName)
        view.addSubview(temperature)
        view.addSubview(summary)

        countryName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        countryName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        temperature.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        summary.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        countryName.topAnchor.constraint(equalTo: view.topAnchor, constant:150).isActive = true
        temperature.topAnchor.constraint(equalTo: countryName.bottomAnchor, constant:50).isActive = true
       summary.topAnchor.constraint(equalTo: temperature.bottomAnchor, constant:50).isActive = true


       
    }
  
}
