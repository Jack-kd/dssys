package com.baidu.mobads.sdk.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* loaded from: classes2.dex */
public class ct extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11409a = "ContainerView";

    /* renamed from: b, reason: collision with root package name */
    private a f11410b;

    public interface a {
        void dispatchTouchEvent(MotionEvent motionEvent);

        void onAttachedToWindow();

        @SuppressLint({"MissingSuperCall"})
        void onDetachedFromWindow();

        boolean onKeyDown(int i2, KeyEvent keyEvent);

        void onLayoutComplete(int i2, int i3);

        void onWindowFocusChanged(boolean z2);

        void onWindowVisibilityChanged(int i2);
    }

    public ct(Context context) {
        super(context);
    }

    public void a(a aVar) {
        this.f11410b = aVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a aVar = this.f11410b;
        if (aVar != null) {
            aVar.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f11410b;
        if (aVar != null) {
            aVar.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f11410b;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        a aVar = this.f11410b;
        if (aVar != null) {
            return aVar.onKeyDown(i2, keyEvent);
        }
        super.onKeyDown(i2, keyEvent);
        return false;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        a aVar;
        super.onLayout(z2, i2, i3, i4, i5);
        if (!z2 || (aVar = this.f11410b) == null) {
            return;
        }
        aVar.onLayoutComplete(getWidth(), getHeight());
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        a aVar = this.f11410b;
        if (aVar != null) {
            aVar.onWindowFocusChanged(z2);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        a aVar = this.f11410b;
        if (aVar != null) {
            aVar.onWindowVisibilityChanged(i2);
        }
    }
}
