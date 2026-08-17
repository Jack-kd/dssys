package com.byazt.nf;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Html;
import android.widget.TextView;
import com.byazt.mw.eb;
import com.byazt.mw.s;
import com.byazt.zs.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVNOSYNC_REPORT_THRES, 1808})
/* loaded from: classes3.dex */
public class RichTextView extends TextView implements eb {
    public j hp;

    /* renamed from: l, reason: collision with root package name */
    public s f23557l;

    public RichTextView(Context context) {
        super(context);
        this.f23557l = new s(this);
    }

    public float getBorderRadius() {
        return this.f23557l.hp();
    }

    @Override // com.byazt.mw.eb
    public float getRipple() {
        return this.f23557l.getRipple();
    }

    @Override // com.byazt.mw.eb
    public float getRubIn() {
        return this.f23557l.getRubIn();
    }

    @Override // com.byazt.mw.eb
    public float getShine() {
        return this.f23557l.getShine();
    }

    @Override // com.byazt.mw.eb
    public float getStretch() {
        return this.f23557l.getStretch();
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
            jVar.hp(canvas);
        }
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

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.f23557l.hp(i2);
    }

    public void setBorderRadius(float f2) {
        s sVar = this.f23557l;
        if (sVar != null) {
            sVar.hp(f2);
        }
    }

    public void setRichText(String str) {
        setText(Html.fromHtml(str, 0));
    }

    public void setRipple(float f2) {
        s sVar = this.f23557l;
        if (sVar != null) {
            sVar.l(f2);
        }
    }

    public void setRubIn(float f2) {
        s sVar = this.f23557l;
        if (sVar != null) {
            sVar.w(f2);
        }
    }

    public void setShine(float f2) {
        s sVar = this.f23557l;
        if (sVar != null) {
            sVar.jx(f2);
        }
    }

    public void setStretch(float f2) {
        s sVar = this.f23557l;
        if (sVar != null) {
            sVar.j(f2);
        }
    }
}
