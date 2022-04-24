//
//  Interpolation_liner.swift
//  
//
//  Created by Vitalii Tielieusov on 25.04.2022.
//

import UIKit

public protocol Math {

    func lineFunctionValue(inArgumentValue x: CGFloat,
                           firstFunctionKnownValue y1: CGFloat,
                           secondFunctionKnownValue y2: CGFloat,
                           firstFunctionKnownArgument x1: CGFloat,
                           secondFunctionKnownArgument x2: CGFloat) -> CGFloat
}

public extension Math {
    
    func lineFunctionValue(inArgumentValue x: CGFloat,
                           firstFunctionKnownValue y1: CGFloat,
                           secondFunctionKnownValue y2: CGFloat,
                           firstFunctionKnownArgument x1: CGFloat,
                           secondFunctionKnownArgument x2: CGFloat) -> CGFloat {
        
        return (x - y2) * ((x2 - x1) / (y2 - y1)) + x2
    }
}