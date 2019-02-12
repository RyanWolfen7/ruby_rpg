# RUBY RPG
-----------

## Overview
---
This App is me practicing using Single Responsibility principles and Object Orientated Design. I don't expect anything to come from this repository, except increasing my coding proficiency.
Another thing to note is, I'm not using any Minimal Viable Product
design, this is completely free flow meaning no user stories, no
domain models, and no diagrams(at this point anyway). The idea is to increase proficiency with writing complex code.

### Installation

* Clone this Repo
  ````
  $ git clone ##THIS REPO##
  ````
* Bundle install
  ````
  $ bundle install
  ````
* Run rake file
  ````
  $ rake
  ````
--------------
  ### How to use
---------
#### Character Creation
  Characters can be created with anything, but it needs to have at least name, race, c-class.

  - Character.new(name, race, c_class, stats)
  ```
  // example
  NEW_CHAR = Character.new('ENTER_NAME', Human.new, Fighter.new(Skills_fighters.new), stats)
  ```
  - Actions
    - xp_gain(xp) : adds to xp[:current]
    - level_up : goes to next level and increases xp[:max]

#### Stat Generation
  While there are default stats on character creation the, stat generator allows for random stat enhancement. As soon as it is initialized it loads default stats and assigns a random amount of points.

  - Stat_gen.new
  ```
  // example
  stat_gen = Stat_gen.new
  ```

  - Actions
    - add(stat) : adds stat and subtracts a point
    - subtract(stat) : subtracts a stat and adds a point
#### Class Creation
  Classes are the arch class of the skills that a character can use. They must be initialized with the class and corresponding skill file. Once created they can be passed to a character. Class < Fighter
  - Fighter.new(Skills_fighters.new)
  ```
  // example
  fighter = Fighter.new(Skills_fighters.new)
  ```
#### Race Creation
  Races are the arch class of the various races you wish to create. Races give certain bonuses to characters. Races can be passed sub races as strings. Race < Human < Outlander
  - Human.new
  ```
  // example
  human = Human.new
  ```
#### Weapon Creation
  Weapons are the arch class of a sub class of a particular weapon. Weapon < Sword < Short_sword. If you wish to make a weapon usable you must declare it. If you pass it a string it will change the unique name.
  - Short_sword.new
  ```
  // example
  short_sword = Short_sword.new
  ```
  - Actions
    - damage : returns a random number

#### Check if dead
  the dead class can be used to determine if a character, creature, or object is destroyed/dead. It will return a true/false boolean
  - Dead.new
  ```
  //example
  dead = Dead.new
  destroyed = Dead.new
  dead.true?(ryan.hp)
  destroyed.true?(box.condition)
  ```

#### Attack
  the attack class can be used with anything and doesn't need to be specific in any way.
  - attack.damage(target, weapon.damage) : attacks target .hp
  ```
  // example
  char_atk = Attack.new
  char_atk.attack(enemy.hp, short_sword.damage)
  or
  char_atk.attack(enemy.hp) // For unarmed attack
  ```
#### Switch_handed
  switch handed checks weapon boolians if they are switchable and changes the hand. It takes a true/false boolean and a number. a switch hand must be initialized with a weapon to work. it will not switch for weapons that are not switchable
  - switch_handed.switch
  ```
  // example
  weapon = Long_sword.new
  switch_hand = Switch_handed.new(weapon)
  switch_hand.switch
  ```
#### Current Classes
  - Fighter
    - +1 to str, dex, const
    - simple_first_aid : heals random health from 3-5
    - front_kick: deals random damage 0-5 and adds stun for 3

#### Current Races
    - Human
      - +1 int, char
      - 20% less xp required for lvl up
    - Elf
      - +1 wis, int
      - +5 Health
      - +15 Magic
      - 20% more xp required for lvl up

#### Current Weapons
  - Swords
    - Short_sword
      - 1h
      - 1d6
      - reach 3
    - Long_sword
      - 1/2h
      - 1d8 1h
      - 2d6 2h
      - reach 4
    - Bastard_sword
      - 1/2h
      - 1d8 1h
      - 2d8 2h
      - reach 5
    - Two_handed_sword
      - 2h
      - 2d8
      - reach 6
    - Great_sword
      - 2h
      - 2d10
      - reach 8
