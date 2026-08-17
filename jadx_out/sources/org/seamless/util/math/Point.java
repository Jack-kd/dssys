package org.seamless.util.math;

import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class Point {

    /* renamed from: x, reason: collision with root package name */
    private int f52692x;

    /* renamed from: y, reason: collision with root package name */
    private int f52693y;

    public Point(int i2, int i3) {
        this.f52692x = i2;
        this.f52693y = i3;
    }

    public Point divide(double d2) {
        int i2 = this.f52692x;
        int i3 = i2 != 0 ? (int) (i2 / d2) : 0;
        int i4 = this.f52693y;
        return new Point(i3, i4 != 0 ? (int) (i4 / d2) : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Point point = (Point) obj;
        return this.f52692x == point.f52692x && this.f52693y == point.f52693y;
    }

    public int getX() {
        return this.f52692x;
    }

    public int getY() {
        return this.f52693y;
    }

    public int hashCode() {
        return (this.f52692x * 31) + this.f52693y;
    }

    public Point multiply(double d2) {
        int i2 = this.f52692x;
        int i3 = i2 != 0 ? (int) (i2 * d2) : 0;
        int i4 = this.f52693y;
        return new Point(i3, i4 != 0 ? (int) (i4 * d2) : 0);
    }

    public String toString() {
        return "Point(" + this.f52692x + ServiceReference.DELIMITER + this.f52693y + ")";
    }
}
