//
//  StringExtension.swift
//  AoC
//
//  Created by Jan Karlbom on 2016-12-02.
//  Copyright © 2016 Jan Karlbom. All rights reserved.
//

import Foundation


extension String {
    
    subscript (i: Int) -> Character
    {
        return self[self.index(self.startIndex, offsetBy: i)]
    }
    
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    /*
    subscript (r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start ..< end)]
    }
 */
}
