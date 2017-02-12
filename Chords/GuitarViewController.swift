//
//  GuitarViewController.swift
//  Chords
//
//  Created by David de Tena on 12/02/2017.
//  Copyright © 2017 David de Tena. All rights reserved.
//

import UIKit

class GuitarViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var imgGuitarChord: UIImageView!
    @IBOutlet weak var labelChordName: UILabel!
    
    // MARK: - VC lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    @IBAction func chordButtonPressed(_ sender: UIButton) {
        labelChordName.text = sender.titleLabel?.text
        setChordImage(sender.tag)
    }

    
    // MARK: - Utils
    func setChordImage(_ tag: Int){
        
        switch tag {
        case 1:
            imgGuitarChord.image = UIImage(named: "img_g_do")
        case 2:
            imgGuitarChord.image = UIImage(named: "img_g_re")
        case 3:
            imgGuitarChord.image = UIImage(named: "img_g_rem")
        case 4:
            imgGuitarChord.image = UIImage(named: "img_g_mi")
        case 5:
            imgGuitarChord.image = UIImage(named: "img_g_mim")
        case 6:
            imgGuitarChord.image = UIImage(named: "img_g_fa")
        case 7:
            imgGuitarChord.image = UIImage(named: "img_g_fasm")
        case 8:
            imgGuitarChord.image = UIImage(named: "img_g_sol")
        case 9:
            imgGuitarChord.image = UIImage(named: "img_g_la")
        case 10:
            imgGuitarChord.image = UIImage(named: "img_g_lam")
        case 11:
            imgGuitarChord.image = UIImage(named: "img_g_si")
        case 12:
            imgGuitarChord.image = UIImage(named: "img_g_sim")
        default:
            imgGuitarChord.image = UIImage(named: "img_mastil")
        }
    }
}
