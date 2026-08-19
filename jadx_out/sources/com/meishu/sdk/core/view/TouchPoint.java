package com.meishu.sdk.core.view;

/* loaded from: classes4.dex */
public class TouchPoint {
    public final long downTime;
    public final float downX;
    public final float downY;
    public final long upTime;
    public final float upX;
    public final float upY;

    public TouchPoint(float f2, float f3, long j2, float f4, float f5, long j3) {
        this.downX = f2;
        this.downY = f3;
        this.downTime = j2;
        this.upX = f4;
        this.upY = f5;
        this.upTime = j3;
    }
}
