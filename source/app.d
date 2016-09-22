
module sshot;

import gtk.Main;
import gdk.Window;
import gdk.Pixbuf;

// import gtk.MainWindow;
// import gtk.Label;

import std.stdio;

void main(string[] args)
{
  Main.init(args);
  
  writeln("Edit source/app.d to start your project.");
  Window win = Window.getDefaultRootWindow ();

  int width = win.getWidth;
  int height = win.getHeight;

  Pixbuf screenshot = getFromWindow(win, 0, 0, width, height);
  screenshot.savev("screenshot.png","png", null, null);
  
  // MainWindow win = new MainWindow("Hello World");
  // win.setDefaultSize(200, 100);
  // win.add(new Label("Hello World"));
  // win.showAll();

  
  // Main.run();
}
