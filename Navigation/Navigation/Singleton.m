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
                [object setWord:@"Baka"];
            }
            if (letra == 'C') {
                [object setWord:@"Chikyuu"];
            }
            if (letra  == 'D') {
                [object setWord:@"Denwa"];
            }
            if (letra  == 'E') {
                [object setWord:@"Ecchi"];
            }
            if (letra  == 'F') {
                [object setWord:@"Fukurou"];
            }
            if (letra == 'G') {
                [object setWord:@"Goten"];
            }
            if (letra == 'H') {
                [object setWord:@"Hana"];
            }
            if (letra == 'I') {
                [object setWord:@"Ícaro"];
            }
            if (letra == 'J') {
                [object setWord:@"João"];
            }
            if (letra  == 'K') {
                [object setWord:@"Kanpeki"];
            }
            if (letra  == 'L') {
                [object setWord:@"Lamen"];
                
            }
            if (letra == 'M') {
                [object setWord:@"Mimi"];
            }
            if (letra  == 'N') {
                [object setWord:@"Neko"];
            }
            if (letra == 'O') {
                [object setWord:@"Obake"];
            }
            if (letra == 'P') {
                [object setWord:@"Pakuru"];
            }
            if (letra == 'Q') {
                [object setWord:@"Quero"];
            }
            if (letra == 'R') {
                [object setWord:@"Rakuda"];
            }
            if (letra == 'S') {
                [object setWord:@"Saru"];
            }
            if (letra == 'T') {
                [object setWord:@"Tanjuu"];
            }
            if (letra == 'U') {
                [object setWord:@"Uma"];
            }
            if (letra == 'V') {
                [object setWord:@"Vilma"];
            }
            if (letra  == 'W') {
                [object setWord:@"Washi"];
            }
            if (letra  == 'X') {
                [object setWord:@"xicara"];
            }
            if (letra  == 'Y') {
                [object setWord:@"Yamaguwa"];
            }
            if (letra  == 'Z') {
                [object setWord:@"Zukotsu"];
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
