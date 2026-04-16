//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Alpy on 16/04/2026.
//

import TipKit

struct CurrencyTip: Tip {
    let title = Text("Change Currency")

    var message: Text? = Text(
        "You can tap the left or right currency to bring up the Select Currency screen."
    )
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
