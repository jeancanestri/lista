//
//  VariasListasViewController.m
//  lista
//
//  Created by Hugo on 19/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import "VariasListasViewController.h"

//@interface VariasListasViewController ()
//@end


@implementation VariasListasViewController

@synthesize arrayVariasListas;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Criando o vetor de lista
    self.arrayVariasListas = [[NSMutableArray alloc] init];
    
    //Populando com nomes ficticios na lista - sera substituido pela funcao da lista
    for(int i=0; i<5; i++)
    {
        NSString *tempNome = [[NSString alloc] initWithFormat: @"Nome %d", i];
        [self.arrayVariasListas addObject:tempNome];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//retorna o numero de elementos do array de listas
-(NSInteger)tableView:(UITableViewController *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayVariasListas count];
}

//Retorna a célula no índice passado como parâmetro
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *myId = @"Exemplo";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myId];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:myId];
    }
    
    NSArray *myObject = [arrayVariasListas  objectAtIndex:[indexPath row]];

    //Define os textos primários e secundários da célula da tabela
    cell.textLabel.text = [myObject objectAtIndex:0];
    cell.detailTextLabel.text = [myObject objectAtIndex:1];
    
    //Adiciona um icone para a célula
    //UIImage * myIcon = [UIImage imageNamed:@"icone.png"];
    //cell.imageView.image = myIcon;
}


//Evento invocado quando a celula é selecionada
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Escrever aqui o codigo que sera implementado apos a seleçao da célula
}



@end

