package com.meishu.sdk.platform.ms.splash;

import java.io.Serializable;

/* loaded from: classes4.dex */
public class ShakeResult implements Serializable {
    private float shakeX;
    private float shakeY;
    private float shakeZ;
    private long totalTurnTime;
    private float turnX;
    private float turnY;
    private float turnZ;

    public float getShakeX() {
        return this.shakeX;
    }

    public float getShakeY() {
        return this.shakeY;
    }

    public float getShakeZ() {
        return this.shakeZ;
    }

    public long getTotalTurnTime() {
        return this.totalTurnTime;
    }

    public float getTurnX() {
        return this.turnX;
    }

    public float getTurnY() {
        return this.turnY;
    }

    public float getTurnZ() {
        return this.turnZ;
    }

    public void setShakeX(float f2) {
        this.shakeX = f2;
    }

    public void setShakeY(float f2) {
        this.shakeY = f2;
    }

    public void setShakeZ(float f2) {
        this.shakeZ = f2;
    }

    public void setTotalTurnTime(long j2) {
        this.totalTurnTime = j2;
    }

    public void setTurnX(float f2) {
        this.turnX = f2;
    }

    public void setTurnY(float f2) {
        this.turnY = f2;
    }

    public void setTurnZ(float f2) {
        this.turnZ = f2;
    }
}
