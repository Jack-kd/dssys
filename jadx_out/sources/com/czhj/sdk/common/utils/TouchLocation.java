package com.czhj.sdk.common.utils;

import android.view.MotionEvent;
import android.view.View;
import java.io.Serializable;

/* loaded from: classes3.dex */
public class TouchLocation implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private final int f29550a;

    /* renamed from: b, reason: collision with root package name */
    private final int f29551b;

    public TouchLocation(int i2, int i3) {
        this.f29550a = i2;
        this.f29551b = i3;
    }

    public static TouchLocation getTouchLocation(View view, MotionEvent motionEvent) {
        if (view == null || motionEvent == null) {
            return null;
        }
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new TouchLocation(rawX - iArr[0], rawY - iArr[1]);
    }

    public int getX() {
        return this.f29550a;
    }

    public int getY() {
        return this.f29551b;
    }
}
