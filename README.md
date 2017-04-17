I created this script to help automating icons resizing for my [theme pack support](https://fravaccaro.github.io/themepacksupport-sailfishos).

## What you need

1. Icons in svg.
2. A GNU/Linux distro.
3. Inkscape (install it via your package manager).

## Usage
1. Place your icons in `jolla/scalable/icons` if they are Jolla stock icons, `native/scalable/apps` if they are native apps icons and `apk/scalable` if they are Android icons.
2. Rename your icons accordingly with the [wiki](https://fravaccaro.github.io/themepacksupport-sailfishos/docs/icons.html).
3. Launch the script.
4. Go on [packaging your theme](https://github.com/fravaccaro/themepacksupport-sailfishos/wiki).

### Pro tip

You can leave the svg files in the final package - I'm looking for a way to enable a more complete icon support in Sailfish OS, so in case they will be already there (Remember to delete `.gitignore` files before compiling).

## Contributors

- (fravaccaro)[https://github.com/fravaccaro]
- (dfstorm)[https://github.com/dfstorm]
