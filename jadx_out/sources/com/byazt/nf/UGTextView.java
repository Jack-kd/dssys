package com.byazt.nf;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.widget.TextView;
import androidx.core.view.PointerIconCompat;
import com.byazt.mw.eb;
import com.byazt.mw.s;
import com.byazt.ql.w;
import com.byazt.zs.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVNOSYNC_REPORT_THRES, PointerIconCompat.TYPE_NO_DROP})
/* loaded from: classes3.dex */
public class UGTextView extends TextView implements eb, w {

    /* renamed from: a, reason: collision with root package name */
    public float f23558a;
    public float eb;
    public j hp;

    /* renamed from: j, reason: collision with root package name */
    public float f23559j;
    public s jx;

    /* renamed from: l, reason: collision with root package name */
    public float f23560l;

    /* renamed from: w, reason: collision with root package name */
    public float f23561w;

    public UGTextView(Context context) {
        super(context);
        this.f23559j = -1.0f;
        this.f23558a = 1.0f;
        this.eb = 0.0f;
        this.jx = new s(this);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.l(canvas);
        }
    }

    public float getBorderRadius() {
        return this.jx.hp();
    }

    @Override // com.byazt.mw.eb
    public float getRipple() {
        return this.f23560l;
    }

    @Override // com.byazt.mw.eb
    public float getRubIn() {
        return this.jx.getRubIn();
    }

    @Override // com.byazt.mw.eb
    public float getShine() {
        return this.jx.getShine();
    }

    @Override // com.byazt.mw.eb
    public float getStretch() {
        return this.jx.getStretch();
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
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(canvas, this);
            this.hp.hp(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(i2, i3, i4, i5);
        }
        if (z2 && this.f23559j > 0.0f) {
            hp(((i4 - i2) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), ((i5 - i3) - getCompoundPaddingBottom()) - getCompoundPaddingTop());
        }
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.hp;
        if (jVar == null) {
            super.onMeasure(i2, i3);
        } else {
            int[] iArrHp = jVar.hp(i2, i3);
            super.onMeasure(iArrHp[0], iArrHp[1]);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        j jVar = this.hp;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i4);
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

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.jx.hp(i2);
    }

    public void setBorderRadius(float f2) {
        s sVar = this.jx;
        if (sVar != null) {
            sVar.hp(f2);
        }
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f2, float f3) {
        super.setLineSpacing(f2, f3);
        this.f23558a = f3;
        this.eb = f2;
    }

    public void setMinTextSize(float f2) {
        this.f23559j = f2;
    }

    public void setRipple(float f2) {
        this.f23560l = f2;
        s sVar = this.jx;
        if (sVar != null) {
            sVar.l(f2);
        }
        postInvalidate();
    }

    public void setRubIn(float f2) {
        s sVar = this.jx;
        if (sVar != null) {
            sVar.w(f2);
        }
    }

    public void setShine(float f2) {
        s sVar = this.jx;
        if (sVar != null) {
            sVar.jx(f2);
        }
    }

    public void setStretch(float f2) {
        s sVar = this.jx;
        if (sVar != null) {
            sVar.j(f2);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(float f2) {
        super.setTextSize(f2);
        this.f23561w = getTextSize();
    }

    private void hp(int i2, int i3) {
        CharSequence text = getText();
        if (text == null || text.length() == 0 || i3 <= 0 || i2 <= 0 || this.f23561w == 0.0f) {
            return;
        }
        TextPaint paint = getPaint();
        float fMax = this.f23561w;
        int iHp = hp(text, paint, i2, fMax);
        while (iHp > i3) {
            float f2 = this.f23559j;
            if (fMax <= f2) {
                break;
            }
            fMax = Math.max(fMax - 1.0f, f2);
            iHp = hp(text, paint, i2, fMax);
        }
        setTextSize(0, fMax);
        setLineSpacing(this.eb, this.f23558a);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f2) {
        super.setTextSize(i2, f2);
        this.f23561w = getTextSize();
    }

    private int hp(CharSequence charSequence, TextPaint textPaint, int i2, float f2) {
        TextPaint textPaint2 = new TextPaint(textPaint);
        textPaint2.setTextSize(f2);
        return new StaticLayout(charSequence, textPaint2, i2, Layout.Alignment.ALIGN_NORMAL, this.f23558a, this.eb, true).getHeight();
    }
}
