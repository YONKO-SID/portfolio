# portfolio

A dead-simple Flutter web portfolio that starts with "Hello, I am Siddharth" and grows into a one-page site with a hero video, logo, and a couple of scroll sections.


## stack

- Flutter stable channel, web target only.
- Vanilla `Stack`, `Positioned`, `Flexible`, `MediaQuery` for layout.
- `VideoPlayerController.network()` (or asset) set to loop + muted for autoplay.
- Everything lives in `lib/main.dart` until it’s big enough to split.

## run

```bash
flutter pub get
flutter run -d chrome
```

Hot-reload works as usual; if you add assets remember to rerun `flutter pub get`.

## todo (in order)

1. Drop logo png into `assets/` and wire it on top of the video.
2. Add the looping gif as a full-screen background behind the text.
3. Tweak text color / shadow so it’s readable against both video and gif.
4. Add a tiny 60fps scroll-triggered fade for the next section (skills or projects).
5. Call it done when it’s under 1 MB and loads in < 2 s on 3G.

PRs welcome if you spot a cleaner way to do the autoplay or sizing hacks.
