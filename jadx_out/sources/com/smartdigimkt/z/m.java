package com.smartdigimkt.z;

import android.graphics.Rect;
import android.view.View;
import java.util.Random;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Random f45320a = new Random();

    public static Rect a(View view) {
        if (view == null || !view.isShown() || view.getWidth() <= 0 || view.getHeight() <= 0) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        return new Rect(i2, iArr[1], view.getWidth() + i2, view.getHeight() + iArr[1]);
    }
}
