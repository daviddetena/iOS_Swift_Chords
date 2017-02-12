//
//  PianoViewController.swift
//  Chords
//
//  Created by David de Tena on 12/02/2017.
//  Copyright © 2017 David de Tena. All rights reserved.
//

import UIKit

class PianoViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var imgPianoChord: UIImageView!
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
            imgPianoChord.image = UIImage(named: "img_p_do")
        case 2:
            imgPianoChord.image = UIImage(named: "img_p_re")
        case 3:
            imgPianoChord.image = UIImage(named: "img_p_rem")
        case 4:
            imgPianoChord.image = UIImage(named: "img_p_mi")
        case 5:
            imgPianoChord.image = UIImage(named: "img_p_mim")
        case 6:
            imgPianoChord.image = UIImage(named: "img_p_fa")
        case 7:
            imgPianoChord.image = UIImage(named: "img_p_fasm")
        case 8:
            imgPianoChord.image = UIImage(named: "img_p_sol")
        case 9:
            imgPianoChord.image = UIImage(named: "img_p_la")
        case 10:
            imgPianoChord.image = UIImage(named: "img_p_lam")
        case 11:
            imgPianoChord.image = UIImage(named: "img_p_si")
        case 12:
            imgPianoChord.image = UIImage(named: "img_p_sim")
        default:
            imgPianoChord.image = UIImage(named: "img_piano")
        }
    }
}
