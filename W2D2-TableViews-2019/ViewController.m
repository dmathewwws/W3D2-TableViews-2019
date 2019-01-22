//
//  ViewController.m
//  W2D2-TableViews-2019
//
//  Created by Daniel Mathews on 2019-01-22.
//  Copyright © 2019 Daniel Mathews. All rights reserved.
//

#import "ViewController.h"
#import "Episode.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSMutableArray *episodes;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self;
    
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"episodeCell"];
    
    self.episodes = [@[@[
                         [[Episode alloc] initWithTitle:@"Rose"],
                         [[Episode alloc] initWithTitle:@"The End of the World"],
                         [[Episode alloc] initWithTitle:@"The Unquiet Dead"],
                         [[Episode alloc] initWithTitle:@"Aliens of London (1)"],
                         [[Episode alloc] initWithTitle:@"World War Three (2)"],
                         [[Episode alloc] initWithTitle:@"Dalek"],
                         [[Episode alloc] initWithTitle:@"The Long Game"],
                         [[Episode alloc] initWithTitle:@"Father's Day"],
                         [[Episode alloc] initWithTitle:@"The Empty Child (1)"],
                         [[Episode alloc] initWithTitle:@"The Doctor Dances (2)"],
                         [[Episode alloc] initWithTitle:@"Boom Town"],
                         [[Episode alloc] initWithTitle:@"Bad Wolf (1)"],
                         [[Episode alloc] initWithTitle:@"The Parting of the Ways (2)"]
                         
                         ], @[
                          
                          [[Episode alloc] initWithTitle:@"New Earth"],
                          [[Episode alloc] initWithTitle:@"Tooth and Claw"],
                          [[Episode alloc] initWithTitle:@"School Reunion"],
                          [[Episode alloc] initWithTitle:@"The Girl in the Fireplace"],
                          [[Episode alloc] initWithTitle:@"Rise of the Cybermen (1)"],
                          [[Episode alloc] initWithTitle:@"The Age of Steel (2)"],
                          [[Episode alloc] initWithTitle:@"The Idiot's Lantern"],
                          [[Episode alloc] initWithTitle:@"The Impossible Planet (1)"],
                          [[Episode alloc] initWithTitle:@"The Satan Pit (2)"],
                          [[Episode alloc] initWithTitle:@"Love &amp; Monsters"],
                          [[Episode alloc] initWithTitle:@"Fear Her"],
                          [[Episode alloc] initWithTitle:@"Army of Ghosts (1)"],
                          [[Episode alloc] initWithTitle:@"Doomsday (2)"]
                          
                          ], @[
                          
                          [[Episode alloc] initWithTitle:@"Smith and Jones"],
                          [[Episode alloc] initWithTitle:@"The Shakespeare Code"],
                          [[Episode alloc] initWithTitle:@"Gridlock"],
                          [[Episode alloc] initWithTitle:@"Daleks in Manhattan (1)"],
                          [[Episode alloc] initWithTitle:@"Evolution of the Daleks (2)"],
                          [[Episode alloc] initWithTitle:@"The Lazarus Experiment"],
                          [[Episode alloc] initWithTitle:@"42"],
                          [[Episode alloc] initWithTitle:@"Human Nature (1)"],
                          [[Episode alloc] initWithTitle:@"The Family of Blood (2)"],
                          [[Episode alloc] initWithTitle:@"Blink"],
                          [[Episode alloc] initWithTitle:@"Utopia (1)"],
                          [[Episode alloc] initWithTitle:@"The Sound of Drums (2)"],
                          [[Episode alloc] initWithTitle:@"Last of the Time Lords (3)"]
                          
                          ], @[
                          
                          [[Episode alloc] initWithTitle:@"Partners in Crime"],
                          [[Episode alloc] initWithTitle:@"The Fires of Pompeii"],
                          [[Episode alloc] initWithTitle:@"Planet of the Ood"],
                          [[Episode alloc] initWithTitle:@"The Sontaran Stratagem (1)"],
                          [[Episode alloc] initWithTitle:@"The Poison Sky (2)"],
                          [[Episode alloc] initWithTitle:@"The Doctor's Daughter"],
                          [[Episode alloc] initWithTitle:@"The Unicorn and the Wasp"],
                          [[Episode alloc] initWithTitle:@"Silence in the Library (1)"],
                          [[Episode alloc] initWithTitle:@"Forest of the Dead (2)"],
                          [[Episode alloc] initWithTitle:@"Midnight"],
                          [[Episode alloc] initWithTitle:@"Turn Left (1)"],
                          [[Episode alloc] initWithTitle:@"The Stolen Earth (2)"],
                          [[Episode alloc] initWithTitle:@"Journey's End (3)"]
                          
                          ], @[
                          
                          [[Episode alloc] initWithTitle:@"The Eleventh Hour"],
                          [[Episode alloc] initWithTitle:@"The Beast Below"],
                          [[Episode alloc] initWithTitle:@"Victory of the Daleks"],
                          [[Episode alloc] initWithTitle:@"The Time of Angels (1)"],
                          [[Episode alloc] initWithTitle:@"Flesh and Stone (2)"],
                          [[Episode alloc] initWithTitle:@"The Vampires of Venice"],
                          [[Episode alloc] initWithTitle:@"Amy's Choice"],
                          [[Episode alloc] initWithTitle:@"The Hungry Earth (1)"],
                          [[Episode alloc] initWithTitle:@"Cold Blood (2)"],
                          [[Episode alloc] initWithTitle:@"Vincent and the Doctor"],
                          [[Episode alloc] initWithTitle:@"The Lodger"],
                          [[Episode alloc] initWithTitle:@"The Pandorica Opens (1)"],
                          [[Episode alloc] initWithTitle:@"The Big Bang (2)"]
                          
                          ], @[
                          
                          [[Episode alloc] initWithTitle:@"The Impossible Astronaut (1)"],
                          [[Episode alloc] initWithTitle:@"Day of the Moon (2)"],
                          [[Episode alloc] initWithTitle:@"The Curse of the Black Spot"],
                          [[Episode alloc] initWithTitle:@"The Doctor's Wife"],
                          [[Episode alloc] initWithTitle:@"The Rebel Flesh (1)"],
                          [[Episode alloc] initWithTitle:@"The Almost People (2)"],
                          [[Episode alloc] initWithTitle:@"A Good Man Goes to War (1)"],
                          [[Episode alloc] initWithTitle:@"Let's Kill Hitler (2)"],
                          [[Episode alloc] initWithTitle:@"Night Terrors"],
                          [[Episode alloc] initWithTitle:@"The Girl Who Waited"],
                          [[Episode alloc] initWithTitle:@"The God Complex"],
                          [[Episode alloc] initWithTitle:@"Closing Time"],
                          [[Episode alloc] initWithTitle:@"The Wedding of River Song"]
                          
                          ], @[
                          
                          [[Episode alloc] initWithTitle:@"Asylum of the Daleks"],
                          [[Episode alloc] initWithTitle:@"Dinosaurs on a Spaceship"],
                          [[Episode alloc] initWithTitle:@"A Town Called Mercy"],
                          [[Episode alloc] initWithTitle:@"The Power of Three"],
                          [[Episode alloc] initWithTitle:@"The Angels Take Manhattan"],
                          [[Episode alloc] initWithTitle:@"The Bells of Saint John"],
                          [[Episode alloc] initWithTitle:@"The Rings of Akhaten"],
                          [[Episode alloc] initWithTitle:@"Cold War"],
                          [[Episode alloc] initWithTitle:@"Hide"],
                          [[Episode alloc] initWithTitle:@"Journey to the Centre of the TARDIS"],
                          [[Episode alloc] initWithTitle:@"The Crimson Horror"],
                          [[Episode alloc] initWithTitle:@"Nightmare in Silver"],
                          [[Episode alloc] initWithTitle:@"The Name of the Doctor"]
                          
                          
                          ], @[
                          
                          [[Episode alloc] initWithTitle:@"Deep Breath"],
                          [[Episode alloc] initWithTitle:@"Into the Dalek"],
                          [[Episode alloc] initWithTitle:@"Robot of Sherwood"],
                          [[Episode alloc] initWithTitle:@"Listen"],
                          [[Episode alloc] initWithTitle:@"Time Heist"],
                          [[Episode alloc] initWithTitle:@"The Caretaker"],
                          [[Episode alloc] initWithTitle:@"Kill the Moon"],
                          [[Episode alloc] initWithTitle:@"Mummy on the Orient Express"],
                          [[Episode alloc] initWithTitle:@"Flatline"],
                          [[Episode alloc] initWithTitle:@"In the Forest of the Night"],
                          [[Episode alloc] initWithTitle:@"Dark Water"],
                          [[Episode alloc] initWithTitle:@"Death in Heaven"]
                          
                          ], @[
                          
                          [[Episode alloc] initWithTitle:@"The Magician's Apprentice"],
                          [[Episode alloc] initWithTitle:@"The Witch’s Familiar"]
                          
                          ]] mutableCopy];


}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"episodeCell" forIndexPath:indexPath];
    
//    Episode *episode = self.episodes[indexPath.section][indexPath.row];

    NSArray *eachSeason = self.episodes[indexPath.section];
    Episode *episode = eachSeason[indexPath.row];
    
    cell.textLabel.text = episode.title;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *seasonNumber = self.episodes[section];
    return seasonNumber.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.episodes.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:@"Season %ld", section+1];
}
- (IBAction)barButtonItemPressed:(UIBarButtonItem *)sender {
    NSArray *episodesInSeason5 = self.episodes[4];
    NSArray *season5WithLatestEpisode = [episodesInSeason5 arrayByAddingObject:[[Episode alloc] initWithTitle:@"Wild Wild East"]];
    self.episodes[4] = season5WithLatestEpisode;
    [self.tableView reloadData];
}

@end
