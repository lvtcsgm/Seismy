import processing.video.*;
Capture video;

int x = 0;


void setup() {
 size(1280, 240);
 video = new Capture(this, 320,240);
 video.start();
}


void captureEvent(Capture video) {
  video.read();
}


void draw () {
int w = video.width;
int h = video.height;
copy(video, w/2, 0, 1, h, x, 0, 1, h);

x = x + 1;
}
