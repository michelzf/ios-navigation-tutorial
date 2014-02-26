//
//  Singleton.m
//  Navigation
//
//  Created by Michel Zarzour Filho on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Letra.h"
@implementation Singleton
@synthesize array;

static Singleton* instancia = nil;

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return  [self instanciar];
}


+(id)instanciar{
    if(!instancia)
        instancia = [[super allocWithZone:nil]initSecreto];
    return instancia;
}


- (id) initSecreto
{
    self = [super init];
    if (self) {
        array = [[NSMutableArray alloc] init];
        
        for(char letra = 'A'; letra <= 'Z'; letra++){
            Letra* object = [Letra new];
            
            if (letra == 'A') {
                [object setWord:@"Amor"];
            }
            if (letra == 'B') {
                [object setWord:@"Baixinho"];
            }
            if (letra == 'C') {
                [object setWord:@"Coração"];
            }
            if (letra  == 'D') {
                [object setWord:@"Docinho"];
            }
            if (letra  == 'E') {
                [object setWord:@"Escola"];
            }
            if (letra  == 'F') {
                [object setWord:@"Feijão"];
            }
            if (letra == 'G') {
                [object setWord:@"Gente"];
            }
            if (letra == 'H') {
                [object setWord:@"Humano"];
            }
            if (letra == 'I') {
                [object setWord:@"Igualdade"];
            }
            if (letra == 'J') {
                [object setWord:@"Juventude"];
            }
            if (letra  == 'K') {
                [object setWord:@"K"];
            }
            if (letra  == 'L') {
                [object setWord:@"Liberdade"];
            }
            if (letra == 'M') {
                [object setWord:@"Molecagem"];
            }
            if (letra  == 'N') {
                [object setWord:@"Natureza"];
            }
            if (letra == 'O') {
                [object setWord:@"Obrigado"];
            }
            if (letra == 'P') {
                [object setWord:@"Proteção"];
            }
            if (letra == 'Q') {
                [object setWord:@"Quero-Quero"];
            }
            if (letra == 'R') {
                [object setWord:@"Riacho"];
            }
            if (letra == 'S') {
                [object setWord:@"Saudade"];
            }
            if (letra == 'T') {
                [object setWord:@"Terra"];
            }
            if (letra == 'U') {
                [object setWord:@"Universo"];
            }
            if (letra == 'V') {
                [object setWord:@"Vitória"];
            }
            if (letra  == 'W') {
                [object setWord:@"W"];
            }
            if (letra  == 'X') {
                [object setWord:@"Xuxa"];
            }
            if (letra  == 'Y') {
                [object setWord:@"Y"];
            }
            if (letra  == 'Z') {
                [object setWord:@"Zum-Zum-Zum"];
            }
            
            [object setLetra:letra];
            [array addObject:object];
        }
    }
    return self;
}

-(void)addLetra:(Letra*)le{
    [array addObject:le];
}

@end
