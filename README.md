![SFML](media/sfml-logo.png)  

[![Chat on Discord](https://img.shields.io/discord/754884471324672040.svg?logo=discord)](https://discord.gg/tPWjMwK) [![Twitter Follow](https://img.shields.io/twitter/follow/tinyBigGAMES?style=social)](https://twitter.com/tinyBigGAMES)
# SFML
### Simple Fast Multimedia Layer

Pascal bindings that allow you to use **SFML** and other useful C libraries with <a href="https://www.embarcadero.com/es/products/delphi" target="_blank">Delphi</a>. 

### Included
- **CSFML** (https://github.com/SFML/CSFML)
- **pl_mpeg** (https://github.com/phoboslab/pl_mpeg)
- **Nuklear** (https://github.com/Immediate-Mode-UI/Nuklear)
- **physfs** (https://github.com/icculus/physfs)
- **minizip** (https://github.com/madler/zlib)

### Minimum Requirements 
- Windows 10+ (64 bits)
- <a href="https://www.embarcadero.com/products/delphi/starter" target="_blank">Delphi Community Edition</a> (Win64 platform only)

### Usage
You simply add `SFML` to your uses section and everything will be linked in your executable, ready for use with no DLLs to maintain. You will have direct access to all the aforementioned libraries.

```Pascal
uses
  System.SysUtils,
  SFML;

var
  Mode: sfVideoMode;
  Window: PsfRenderWindow;
  Event: sfEvent;
  Music: PsfMusic;
  
begin
  Mode.Width := 800;
  Mode.Height := 600;
  Mode.BitsPerPixel := 32;
  
  Window := sfRenderWindow_create(Mode, 'Hello SFML', sfResize or sfClose, nil);

  Music := sfMusic_createFromFile('arc/audio/music/song01.ogg');
  sfMusic_play(Music);

  while sfRenderWindow_isOpen(Window) = sfTrue do
  begin
    while sfRenderWindow_pollEvent(Window, @Event) = sfTrue do
    begin
      if Event._type = sfEvtClosed then
        sfRenderWindow_close(Window);
    end;

    sfRenderWindow_clear(Window, DARKSLATEBROWN);
    sfRenderWindow_display(Window);
  end;

  sfMusic_stop(Music);
  sfMusic_destroy(Music);
  sfRenderWindow_destroy(Window);
end.
```


### Support
- <a href="https://github.com/tinyBigGAMES/SFML/issues" target="_blank">Issues</a>
- <a href="https://github.com/tinyBigGAMES/SFML/projects/1" target="_blank">Issue Tracking</a>
- <a href="https://github.com/tinyBigGAMES/SFML/discussions" target="_blank">Discussions</a>
- <a href="https://github.com/tinyBigGAMES/SFML/wiki" target="_blank">Wiki</a>
- <a href="https://tinybiggames.com/contact/" target="_blank">Contact</a>
- <a href="https://www.sfml-dev.org/" target="_blank">SFML website</a>
- <a href="https://www.youtube.com/results?search_query=SFML&sp=CAI%253D" target="_blank">SFML on YouTube</a>


<p align="center">
<img src="media/delphi.png" alt="Delphi">
</p>
<h5 align="center">

Made with :heart: in Delphi
</h5>