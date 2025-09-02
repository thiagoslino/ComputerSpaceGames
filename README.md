# Classic Terminal Games in Cuis Smalltalk

This repository contains my implementations of classic text-based games, based on the listings from the **Computer Space Games** magazine.

[![Computer Space Games Magazine Cover](https://img.shields.io/badge/Inspired%20by-Computer%20Space%20Games-orange)](https://drive.google.com/file/d/0Bxv0SsvibDMTNlMwTi1PTlVxc2M/view)


## About

"Computer Space Games" was a legendary magazine from the early 1980s that published source code for games, often in BASIC, for readers to type into their home computers. This project revives that spirit of learning and fun by porting those classic game concepts to the modern and powerful [Cuis Smalltalk](https://cuis-smalltalk.github.io/) environment.

<img width="1406" height="798" alt="computergames" src="https://github.com/user-attachments/assets/b9e1349c-674a-44b2-a7b4-c076ea2fb7c2" />

## Games Included (wip)

*   **Evil Alien** - Somewhere beneath you, in deepest, blackest space, lurks Elron, the Evil Alien.
*   **Intergalactic Games** - You are Engineer in charge of the launch for new Century TV. The crucial decisions about the angle and speed of the launching rocket rests on yout shoulders. Can you do it?.
*   **Starship Takeoff** - You are a starship captain. You have crashed your ship on a strange planet and must take off again quickly in the alien ship you have captured.
*   *...add more to come...*

## Getting Started

### Prerequisites

You need to have Cuis Smalltalk installed.
*   Download the latest version from the [official Cuis Smalltalk GitHub page](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev).

### Installation & Running

1.  Clone this repository:
    ```bash
    git clone https://github.com/thiagoslino/Cuis-ComputerSpaceGames.git
    ```
2.  Open the Cuis-Smalltalk image.
3.  In Cuis,open a workspace in Cuis and type:
```smalltalk
  Feature require: #ComputerSpaceGames
```
4.  To start the game, evaluate the following in a workspace (or follow the specific instructions in the class comment):
    ```smalltalk
    EvilAlienPresenter new start.
    ```
    (Replace `EvilAlienPresenter` with any class in ComputerSpaceGames-Presenter category).


## Acknowledgments

*   The original authors and editors of [**Computer Space Games** magazine](https://usborne.com/gb/books/computer-and-coding-books).
*   The dedicated developers and community behind [Cuis Smalltalk](https://cuis-smalltalk.github.io/).
*   The spirit of the 80s home computing era, where typing in code from a magazine was the way to get new games.
*   The YouTube channel [Kari](https://www.youtube.com/@Kari_78), whose [this video](https://www.youtube.com/watch?v=Oo47qPvs3HQ) provided direct inspiration and motivation for this Smalltalk version.
