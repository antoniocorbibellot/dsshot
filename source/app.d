
module sshot;

import gdk.Gdk;
import gdk.Window;
import gdk.Pixbuf;

void main(string[] args)
{
  Gdk.init(args);
  
  Window win = Window.getDefaultRootWindow ();

  int width = win.getWidth;
  int height = win.getHeight;

  Pixbuf screenshot = getFromWindow(win, 0, 0, width, height);
  screenshot.savev("screenshot.png","png", null, null);
}
