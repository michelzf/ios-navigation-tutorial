//
//  Letra.m
//  Navigation
//
//  Created by Michel Zarzour Filho on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Letra.h"
#import "Singleton.h"
@implementation Letra
@synthesize word;
@synthesize letra;

-(void)alfabeto{
    Singleton* mut = [Singleton instanciar];
    
    for(char letra = 'A'; letra <= 'Z'; letra++){
        Letra * object = [Letra new];
        [object setLetra:letra];
        [mut addLetra:object];
    }
    
    
}

@end
