//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Daniel  on 12/09/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
        
        slider.setValue(0.5, animated: true)
        
        mapView.mapType = .hybrid
        
        //Estatua de la libertad
        let center = CLLocationCoordinate2D(latitude: 40.689268, longitude: -74.044563)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        
        mapView.mapType = .satellite
        
        //ETSIT
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateSol(_ sender: UIButton) {
        
        //Puerta del Sol
        let center = CLLocationCoordinate2D(latitude: 40.416963, longitude: -3.703487)
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    
}

