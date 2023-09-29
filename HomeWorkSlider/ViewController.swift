//
//  ViewController.swift
//  HomeWorkSlider
//
//  Created by Семен Шевчик on 29.09.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var mainLabelRed: UILabel!
    @IBOutlet weak var mainLabelGreen: UILabel!
    @IBOutlet weak var mainLabelBlue: UILabel!
    
    @IBOutlet weak var mainSliderRed: UISlider!
    @IBOutlet weak var mainSliderGreen: UISlider!
    @IBOutlet weak var mainSliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainSliderRed()
        setupMainLabelRed()
        setupMainSliderGreen()
        setupMainLabelGreen()
        setupMainSliderBlue()
        setupMainLabelBlue()
        updateColourView()
        roundingMainView()
    }
    
    private func roundingMainView() {
        mainView.layer.cornerRadius = 20
    }
    //MARK: - Цветовые настройки слайдеров Action
    
    @IBAction func mainSliderRedAction() {
        updateColourView()
        mainLabelRed.text = mainSliderRed.value.formatted()
        mainLabelRed.text = String(format: "%.2f", mainSliderRed.value)
    }
    @IBAction func mainSliderGreenAction() {
        updateColourView()
        mainLabelGreen.text = mainSliderGreen.value.formatted()
        mainLabelGreen.text = String(format: "%.2f", mainSliderGreen.value)
    }
    @IBAction func mainSliderBlueAction() {
        updateColourView()
        mainLabelBlue.text = mainSliderBlue.value.formatted()
        mainLabelBlue.text = String(format: "%.1f", mainSliderBlue.value)
    }
    //MARK: -  Значения для слайдеров
    
    private func setupMainSliderRed () {
        mainSliderRed.value = 0.50
        mainSliderRed.minimumValue = 0
        mainSliderRed.maximumValue = 1
        mainSliderRed.minimumTrackTintColor = .red
    }
    private func setupMainSliderGreen () {
        mainSliderGreen.value = 0.50
        mainSliderGreen.minimumValue = 0
        mainSliderGreen.maximumValue = 1
        mainSliderGreen.minimumTrackTintColor = .green
    }
    private func setupMainSliderBlue () {
        mainSliderBlue.value = 0.50
        mainSliderBlue.minimumValue = 0
        mainSliderBlue.maximumValue = 1
        mainSliderBlue.minimumTrackTintColor = .blue
    }
    //MARK: - Начальное значение лейбла связанное с слайдером
    
    private func setupMainLabelRed() {
        mainLabelRed.text = String(mainSliderRed.value)
    }
    private func setupMainLabelBlue() {
        mainLabelBlue.text = String(mainSliderBlue.value)
    }
    private func setupMainLabelGreen() {
        mainLabelGreen.text = String(mainSliderGreen.value)
    }
    private func updateColourView() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(mainSliderRed.value),
            green: CGFloat(mainSliderGreen.value),
            blue: CGFloat(mainSliderBlue.value),
            alpha: 1)
    }
}
