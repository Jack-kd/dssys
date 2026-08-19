package com.byazt.my;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.EditText;
import com.byazt.zs.j;

@com.byazt.kj.hp(hp = {0, 1, 662, 2135})
/* loaded from: classes3.dex */
public class UGEditText extends EditText {
    public j hp;

    public UGEditText(Context context) {
        super(context);
    }

    public void hp(j jVar) {
        this.hp = jVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.hp;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(i2, i3, i4, i5);
        }
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.hp;
        if (jVar != null) {
            int[] iArrHp = jVar.hp(i2, i3);
            super.onMeasure(iArrHp[0], iArrHp[1]);
        } else {
            super.onMeasure(i2, i3);
        }
        super.onMeasure(i2, i3);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i5);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }
}
