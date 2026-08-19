package com.beizi.fusion;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes2.dex */
public class bp extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    private float f13173a;

    public bp(float f2) {
        this.f13173a = f2;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        outline.setRoundRect(new Rect(0, 0, rect.right - rect.left, rect.bottom - rect.top), this.f13173a);
    }
}
