//
//  listaViewController.m
//  lista
//
//  Created by Hugo on 19/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//


#import "listaViewController.h"


//@interface variasListasViewController ()

//@end

@implementation listaViewController

@synthesize arrayLista;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
  
    // Criando um NSMutableArray
    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    // Criando os itens da lista
    Item *myItem = [[Item alloc] init];
        myItem.nome = [NSString stringWithFormat:@"Item 1"];
        myItem.estado = 0;
        [myArray addObject:myItem];
    Item *myItem1 = [[Item alloc] init];
        myItem1.nome = [NSString stringWithFormat:@"Item 2"];
        myItem1.estado = 0;
        [myArray addObject:myItem1];
    Item *myItem2 = [[Item alloc] init];
        myItem2.nome = [NSString stringWithFormat:@"Item 3"];
        myItem2.estado = 0;
        [myArray addObject:myItem2];
    
    self.arrayLista = myArray;

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}


// Retorna o número de elementos de uma seção da tabela
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayLista count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *myId = @"Exemplo";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myId];

    
    if (cell == nil)
    {
        // Exemplos de estilo para células de tabelas
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myId];
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:myId];
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:myId];
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:myId];
    }
    
    /*
    //Insere o checkmark na lista
    if ([indexPath compare:self.lastIndexPath] == NSOrderedSame)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    */
    
    // Configure the cell...
    Item *myObject = [arrayLista objectAtIndex:[indexPath row]];
    
    // Define os textos primários e secundários da célula
    cell.textLabel.text = myObject.nome;
    //cell.detailTextLabel.text = [myObject objectAtIndex:1];
    
    // Adiciona um ícone para a célula
    //UIImage *myIcon = [UIImage imageNamed:@"iconeCubo.png"];
    //cell.imageView.image = myIcon;
    
    // Adiciona um ícone para o estado de HIGHLIGHTED da célula
    //UIImage *myIconHighlighted = [UIImage imageNamed:@"iconeCuboDestaque.png"];
    //cell.imageView.highlightedImage = myIconHighlighted;
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [arrayVariasListas removeObjectAtIndex:indexPath.row];
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ////////////////////// INTERFACE /////////////////////////////
    // Parte do codigo que marca na celula como checked ou nao na interface.
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark)
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    [cell setSelected:TRUE animated:TRUE];
    
    
    ///////////////// LOGICA DE DADOS /////////////////////////////
    //Inserir aqui parte do codigo
}

@end
