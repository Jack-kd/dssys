package com.byazt.hm;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import com.byazt.xs.jx;
import com.byazt.zs.j;

@com.byazt.kj.hp(hp = {0, 1, 787, 1632})
/* loaded from: classes2.dex */
public class Swiper extends BaseSwiper<jx> {

    /* renamed from: j, reason: collision with root package name */
    public j f20748j;

    public Swiper(Context context) {
        super(context);
    }

    @Override // com.byazt.hm.BaseSwiper
    public View gu(int i2) {
        return ((jx) this.hp.get(i2)).q();
    }

    public void hp(j jVar) {
        this.f20748j = jVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.f20748j;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f20748j;
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
        j jVar = this.f20748j;
        if (jVar != null) {
            jVar.j();
        }
        super.onLayout(z2, i2, i3, i4, i5);
        j jVar2 = this.f20748j;
        if (jVar2 != null) {
            jVar2.hp(i2, i3, i4, i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.f20748j;
        if (jVar != null) {
            int[] iArrHp = jVar.hp(i2, i3);
            super.onMeasure(iArrHp[0], iArrHp[1]);
        } else {
            super.onMeasure(i2, i3);
        }
        j jVar2 = this.f20748j;
        if (jVar2 != null) {
            jVar2.jx();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        j jVar = this.f20748j;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.f20748j;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }
}
