package com.meishu.sdk.core.utils;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.SoftReference;

/* loaded from: classes4.dex */
public class t1 {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f32025a = new int[2];

    /* renamed from: b, reason: collision with root package name */
    public int f32026b;

    /* renamed from: c, reason: collision with root package name */
    public int f32027c;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ SoftReference f32028a;

        public a(SoftReference softReference) {
            this.f32028a = softReference;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                t1.this.f32026b = ((View) this.f32028a.get()).getWidth();
                t1.this.f32027c = ((View) this.f32028a.get()).getHeight();
                ((View) this.f32028a.get()).getLocationOnScreen(t1.this.f32025a);
                ((View) this.f32028a.get()).getViewTreeObserver().removeOnGlobalLayoutListener(this);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public t1(View view) {
        if (view == null) {
            return;
        }
        try {
            view.getViewTreeObserver().addOnGlobalLayoutListener(new a(new SoftReference(view)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean a(float f2, float f3) {
        try {
            int[] iArr = this.f32025a;
            if (f2 > iArr[0] && f2 < r2 + this.f32026b) {
                if (f3 > iArr[1]) {
                    if (f3 < r1 + this.f32027c) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean a(View view, float f2, float f3) {
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            return f2 >= ((float) i2) && f2 <= ((float) (view.getWidth() + i2)) && f3 >= ((float) i3) && f3 <= ((float) (view.getHeight() + i3));
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
