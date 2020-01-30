int x = 0;
int y = 499;
int len = 0;

public void setup() {
	size (500, 500);
}

public void draw() {
	background (0);
	stroke (mouseX,  mouseY - 30, mouseX + 100);
	fill (0);
	mouseDragged ();
	sierpinski (x, y, len);
}

public void mouseDragged() {
	len = mouseX;
}

public void sierpinski(int x, int y, int len) {
	if (len <= 20) {
		triangle (x, y, x + len / 2, y - len, x + len, y);
	}
	else {
		sierpinski (x, y, len / 2);
		sierpinski (x + len / 2, y, len / 2);
		sierpinski (x + len / 4, y - len / 2, len / 2);
	}
}