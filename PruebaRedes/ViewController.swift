//
//  ViewController.swift
//  PruebaRedes
//
//  Created by Gerardo Magdaleno on 01/11/18.
//  Copyright © 2018 Gerardo Magdaleno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        Timer.scheduledTimer(with)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var actEspera: UIActivityIndicatorView!
    
    @IBOutlet weak var tvTexto: UITextView!
    
    @IBAction func descargarHTML(_ sender: UIButton) {
        let direccion = "https://norvig.com/big.txt"
        
        if let url = URL(string: direccion){
            let tareaDescarga = URLSession.shared.dataTask(with: url){
                (datos, response, error) in
                
                if error == nil{
                    let respuesta = response as! HTTPURLResponse
                    if respuesta.statusCode == 200{
                        let texto = String(data: datos!, encoding: .utf8)
                        //Poner los datos en el TextView
                        DispatchQueue.main.async {
                            
                            self.tvTexto.text = texto
                        }
                    }
                }
                
                print("Datos: \(datos)")
                print("Response: \(response)")
                print("Error: \(error)")
            }
            tareaDescarga.resume()
        }
    }
    
    
    @IBOutlet weak var imView: UIImageView!
    
    
    @IBAction func descargarImagen(_ sender: Any) {
        if let url = URL(string: "https://www.ajegroup.com/wp-content/uploads/2014/05/BIG.jpg"){
            let tarea = URLSession.shared.dataTask(with: url){(data,response, error) in
                if error == nil{
                    let respuesta = response as! HTTPURLResponse
                    if resp
                }
                
            }
        }
        
    }
    
}

