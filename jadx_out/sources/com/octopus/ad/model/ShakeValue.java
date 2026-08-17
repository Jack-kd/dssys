package com.octopus.ad.model;

/* loaded from: classes4.dex */
public class ShakeValue {
    private double acceleration;
    private double angle;
    private int time;

    public ShakeValue() {
    }

    public double getAcceleration() {
        return this.acceleration;
    }

    public double getAngle() {
        return this.angle;
    }

    public int getTime() {
        return this.time;
    }

    public void setAcceleration(double d2) {
        this.acceleration = d2;
    }

    public void setAngle(double d2) {
        this.angle = d2;
    }

    public void setTime(int i2) {
        this.time = i2;
    }

    public String toString() {
        return "ShakeValue{acceleration=" + this.acceleration + ", angle=" + this.angle + ", time=" + this.time + '}';
    }

    public ShakeValue(double d2, double d3, int i2) {
        this.acceleration = d2;
        this.angle = d3;
        this.time = i2;
    }
}
