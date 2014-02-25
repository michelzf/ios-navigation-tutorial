//
//  Singleton.h
//  Navigation
//
//  Created by Michel Zarzour Filho on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Letra.h"
@interface Singleton : NSObject

@property(strong, nonatomic)NSMutableArray* array;

+(id)instanciar;
-(void)addLetra:(Letra*)le;

@end
