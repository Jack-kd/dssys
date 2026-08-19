package com.byazt.ie;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.byazt.ql.u;
import com.byazt.zs.j;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1482, 1483})
/* loaded from: classes.dex */
public class UGFrameLayout extends FrameLayout {
    public j hp;

    /* renamed from: l, reason: collision with root package name */
    public Map<Integer, u> f21054l;

    public UGFrameLayout(Context context) {
        super(context);
    }

    public void hp(j jVar) {
        this.hp = jVar;
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

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Map<Integer, u> map = this.f21054l;
        if (map == null || !map.containsKey(4)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.j();
        }
        super.onLayout(z2, i2, i3, i4, i5);
        j jVar2 = this.hp;
        if (jVar2 != null) {
            jVar2.hp(i2, i3, i4, i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.hp;
        if (jVar != null) {
            int[] iArrHp = jVar.hp(i2, i3);
            super.onMeasure(iArrHp[0], iArrHp[1]);
        } else {
            super.onMeasure(i2, i3);
        }
        j jVar2 = this.hp;
        if (jVar2 != null) {
            jVar2.jx();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
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

    public void setEventMap(Map<Integer, u> map) {
        this.f21054l = map;
    }
}
