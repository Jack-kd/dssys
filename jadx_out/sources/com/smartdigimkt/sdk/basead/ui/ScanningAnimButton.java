package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.smartdigimkt.w1.a;
import com.smartdigimkt.x1.b;

/* loaded from: classes5.dex */
public class ScanningAnimButton extends Button {

    /* renamed from: a, reason: collision with root package name */
    public b f43570a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f43571b;

    /* renamed from: c, reason: collision with root package name */
    public int f43572c;

    public ScanningAnimButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i2 = this.f43572c;
        if (i2 != 0) {
            startAnimation(i2);
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        b bVar = this.f43570a;
        if (bVar != null) {
            bVar.a(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        b bVar = this.f43570a;
        if (bVar != null) {
            bVar.a(getWidth(), getHeight());
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        b bVar = this.f43570a;
        if (bVar != null) {
            bVar.a(i2, i3);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            b bVar = this.f43570a;
            if (bVar != null) {
                bVar.a();
                return;
            }
            return;
        }
        b bVar2 = this.f43570a;
        if (bVar2 != null) {
            bVar2.pause();
        }
    }

    public void startAnimation(int i2) {
        this.f43572c = i2;
        if (this.f43571b) {
            return;
        }
        this.f43571b = true;
        b bVar = this.f43570a;
        if (bVar != null) {
            bVar.stop();
        }
        b bVarA = a.a(this, i2);
        this.f43570a = bVarA;
        bVarA.start();
    }

    public void stopAnimation() {
        b bVar = this.f43570a;
        if (bVar != null) {
            bVar.stop();
        }
        this.f43571b = false;
    }

    public ScanningAnimButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScanningAnimButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43572c = 0;
        setGravity(17);
    }
}
