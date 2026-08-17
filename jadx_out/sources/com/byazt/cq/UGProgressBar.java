package com.byazt.cq;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.zs.j;

@com.byazt.kj.hp(hp = {0, 1, 796, 2149})
/* loaded from: classes2.dex */
public class UGProgressBar extends FrameLayout {
    public j hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f18952j;
    public View jx;

    /* renamed from: l, reason: collision with root package name */
    public View f18953l;

    /* renamed from: w, reason: collision with root package name */
    public int f18954w;

    public UGProgressBar(Context context) {
        super(context);
        hp(context);
    }

    private void hp(Context context) {
        this.f18953l = new View(context);
        this.jx = new View(context);
        addView(this.f18953l);
        addView(this.jx);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f18953l.getLayoutParams();
        layoutParams.width = 0;
        layoutParams.height = -1;
        layoutParams.gravity = 3;
        this.f18953l.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.jx.getLayoutParams();
        layoutParams2.width = this.f18954w;
        layoutParams2.gravity = 5;
        this.jx.setLayoutParams(layoutParams2);
        TextView textView = new TextView(context);
        this.f18952j = textView;
        textView.setTextColor(-1);
        this.f18952j.setTextSize(16.0f);
        this.f18952j.setGravity(17);
        addView(this.f18952j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(i2, i3, i4, i5);
        }
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(i2, i3);
        }
        super.onMeasure(i2, i3);
        this.f18954w = hp(0, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f18954w = i2;
        j jVar = this.hp;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }

    public void setProgress(float f2) {
        int width = getWidth();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f18953l.getLayoutParams();
        float f3 = width;
        float f4 = (f2 / 100.0f) * f3;
        layoutParams.width = (int) f4;
        this.f18953l.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.jx.getLayoutParams();
        layoutParams2.width = (int) (f3 - f4);
        this.jx.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f18952j.getLayoutParams();
        layoutParams3.width = width;
        layoutParams3.gravity = 17;
        requestLayout();
    }

    public void setProgressBgColor(int i2) {
        this.jx.setBackgroundColor(i2);
    }

    public void setProgressColor(int i2) {
        this.f18953l.setBackgroundColor(i2);
    }

    public void setText(String str) {
        this.f18952j.setText(str);
    }

    public void setTextColor(int i2) {
        this.f18952j.setTextColor(i2);
    }

    private int hp(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        return mode == 1073741824 ? size : mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
    }

    public void hp(j jVar) {
        this.hp = jVar;
    }
}
