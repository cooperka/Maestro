# Maestro

A full GUI for chess, written entirely in assembly. Chosen as a final project during ENGR 100 with Peter Chen, Freshman year of college (2011).

![Screenshot of single-player AI mode](/screenshots/ai-mode-2.png "Screenshot of single-player AI mode")

## Usage

Windows only. Linux version of ase100 is available online, but the newer emulator seems to use a slightly modified language from the one used in this lab in 2011.

1. Run `ase100.exe`
  - This is an emulator for the E100 processor used in the lab
2. Click `Choose assembly file` and choose `TOP.e`
3. Click `Assemble`, `Load`, then `Run` and choose `sdcard.bin`
4. The game should load in the VGA window, and you can play using your mouse

## History

My father is the girls' cross country coach at Grosse Pointe North high school, and he puts together slideshows at the end of every season for the entire sports department. This involves collecting thousands of photos from parents and photographers across hundreds of sports events. He then sorts through those photos and chooses the best ones to put into a slideshow. In order to make this task easier and to make the final presentation an acceptable file size, most photos must be downsized significantly.

I wrote this utility so he could downsize the photos efficiently, instead of using Photoshop's batch utility which is much slower and harder to use.

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
