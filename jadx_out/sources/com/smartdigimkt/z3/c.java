package com.smartdigimkt.z3;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f45444a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f45445b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f45446c;

    public c(View view, float f2, View view2) {
        this.f45444a = view;
        this.f45445b = f2;
        this.f45446c = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Rect rect = new Rect();
        this.f45444a.getHitRect(rect);
        int iWidth = ((int) ((this.f45445b - 1.0f) * rect.width())) / 2;
        int iHeight = ((int) ((this.f45445b - 1.0f) * rect.height())) / 2;
        int i2 = rect.top - iHeight;
        if (i2 < 0) {
            rect.top = 0;
        } else {
            rect.top = i2;
        }
        if (rect.bottom + iHeight > this.f45446c.getHeight()) {
            rect.bottom = this.f45446c.getHeight();
        } else {
            rect.bottom += iHeight;
        }
        int i3 = rect.left - iWidth;
        if (i3 < 0) {
            rect.left = 0;
        } else {
            rect.left = i3;
        }
        if (rect.right + iWidth > this.f45446c.getWidth()) {
            rect.right = this.f45446c.getWidth();
        } else {
            rect.right += iWidth;
        }
        this.f45446c.setTouchDelegate(new TouchDelegate(rect, this.f45444a));
    }
}
