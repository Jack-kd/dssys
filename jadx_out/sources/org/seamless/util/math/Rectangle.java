package org.seamless.util.math;

/* loaded from: classes5.dex */
public class Rectangle {
    private int height;
    private Point position;
    private int width;

    public Rectangle() {
    }

    public int getHeight() {
        return this.height;
    }

    public Point getPosition() {
        return this.position;
    }

    public int getWidth() {
        return this.width;
    }

    public Rectangle intersection(Rectangle rectangle) {
        int x2 = this.position.getX();
        int y2 = this.position.getY();
        int x3 = rectangle.position.getX();
        int y3 = rectangle.position.getY();
        long j2 = x2 + this.width;
        long j3 = y2 + this.height;
        long j4 = x3 + rectangle.width;
        long j5 = y3 + rectangle.height;
        if (x2 < x3) {
            x2 = x3;
        }
        if (y2 < y3) {
            y2 = y3;
        }
        if (j2 > j4) {
            j2 = j4;
        }
        if (j3 > j5) {
            j3 = j5;
        }
        long j6 = j2 - x2;
        long j7 = j3 - y2;
        if (j6 < -2147483648L) {
            j6 = -2147483648L;
        }
        if (j7 < -2147483648L) {
            j7 = -2147483648L;
        }
        return new Rectangle(new Point(x2, y2), (int) j6, (int) j7);
    }

    public boolean isOverlapping(Rectangle rectangle) {
        Rectangle rectangleIntersection = intersection(rectangle);
        return rectangleIntersection.getWidth() > 0 && rectangleIntersection.getHeight() > 0;
    }

    public void reset() {
        this.position = new Point(0, 0);
        this.width = 0;
        this.height = 0;
    }

    public void setHeight(int i2) {
        this.height = i2;
    }

    public void setPosition(Point point) {
        this.position = point;
    }

    public void setWidth(int i2) {
        this.width = i2;
    }

    public String toString() {
        return "Rectangle(" + this.position + " - " + this.width + "x" + this.height + ")";
    }

    public Rectangle(Point point, int i2, int i3) {
        this.position = point;
        this.width = i2;
        this.height = i3;
    }
}
