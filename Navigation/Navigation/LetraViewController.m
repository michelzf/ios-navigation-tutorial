//
//  LetraViewController.m
//  Navigation
//
//  Created by Michel Zarzour Filho on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"

@interface LetraViewController ()

@end

@implementation LetraViewController

@synthesize synthesizer;
@synthesize utterance;
static int aux = 0;
static char ref;
static char ref2;

- (void)viewDidLoad
{
	[super viewDidLoad];
    synthesizer = [AVSpeechSynthesizer new];
    
    
    Singleton* som = [Singleton instanciar];
    Letra* l = [Letra new];
    l = [[som array]objectAtIndex:aux];
    ref2 = ref;
    ref = l.letra;
    
    self.title = [NSString stringWithFormat:@"%c", l.letra ];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao addTarget:self action:@selector(sound:) forControlEvents:UIControlEventTouchUpInside];
    [botao setTitle:l.word forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    CGFloat y=self.view.bounds.size.height/100;
    CGFloat x=self.view.bounds.size.height/100;
    CGFloat x2=90+(x*x);
    CGFloat y2=90+(y*y);
    UIImage *imagem=[UIImage imageNamed:@"contact.png"];
    UIImageView *imagemView=[[UIImageView alloc]initWithImage:imagem];
    [imagemView setContentMode:UIViewContentModeScaleAspectFit];
    [imagemView alignmentRectInsets];
    [imagemView setFrame:CGRectMake( x2,y2, 100, 100) ];
    imagemView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:imagemView];
      [self.view addSubview:botao];
}



-(void)next:(id)sender {
    LetraViewController *proximo = [[LetraViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
    
    if (ref == 'Z')
        aux= 0;
    else
        aux++;
    
    
}

-(void)sound:(id)sender{
    Singleton* som = [Singleton instanciar];
    Letra* l = [Letra new];
    l = [[som array]objectAtIndex:aux];
    
    utterance = [AVSpeechUtterance speechUtteranceWithString:l.word];
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    [synthesizer speakUtterance:utterance];
    
}

@end