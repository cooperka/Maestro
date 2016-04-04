# Maestro

A full GUI for chess, written entirely in assembly. Allows for both multiplayer and single-player modes, using moderate AI. Chosen as a final project during ENGR 100, Freshman year of college (2011).

![Screenshot of single-player AI mode](/screenshots/ai-mode-2.png "Screenshot of single-player AI mode")

## Usage

Windows only. Linux version of ase100 is available online, but the newer emulator seems to use a slightly modified language from the one used in this lab in 2011.

1. Run `ase100.exe`
  - This is an emulator for the E100 processor used in the lab
2. Click `Choose assembly file` and choose `TOP.e`
3. Click `Assemble`, `Load`, then `Run` and choose `sdcard.bin`
4. The game should load in the VGA window, and you can play using your mouse

## History

ENGR 100 (Microprocessors and Toys with Peter Chen) was one of my favorite courses in college. It was heavily lab- and project-based, and for the final project we had the full autonomy to design anything we wanted to -- as long as it was some sort of "toy" and was built using the Altera DE2 boards in the lab (with E100 processors). Teams came up with projects ranging from Guitar Hero to automated nerf gun launchers.

My team of four, led by myself and Neil Matthews, decided to make a chess GUI (and to meet the "toy" criteria, we proposed shipping it as a tablet-sized device). We started by implementing a simple human vs. human mode, but continued adding more and more features, eventually ending up with a moderate artificially intelligent single-player mode and a suite of challenge modes where the board is given a particular initial setup and you continue from there.

Our demo went wonderfully, and we were very happy with the final product. You can find our presentation slides [here](/Maestro%20Presentation.pdf).

*Note:
All the code here is in its (mostly) original form, and hasn't been modified since I wrote it in college.*

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

The ase100 emulator was created by professor Peter Chen and can be found on his website. It exists for [windows](https://web.eecs.umich.edu/~pmchen/engr100/ase100_windows/) and [linux](https://web.eecs.umich.edu/~pmchen/engr100/ase100_linux/).
