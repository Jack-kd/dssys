package com.byazt.ql;

import android.animation.AnimatorSet;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;

@com.byazt.kj.hp(hp = {0, 1, 1306, 302})
/* loaded from: classes3.dex */
public class zy {

    /* renamed from: a, reason: collision with root package name */
    public int f24972a;
    public String eb;
    public Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public View f24973j;
    public AnimatorSet jx = new AnimatorSet();

    /* renamed from: l, reason: collision with root package name */
    public hp f24974l;

    /* renamed from: w, reason: collision with root package name */
    public int f24975w;

    public zy(View view, hp hpVar) {
        this.f24973j = view;
        this.f24974l = hpVar;
        Paint paint = new Paint();
        this.hp = paint;
        paint.setAntiAlias(true);
    }

    public void l() {
        AnimatorSet animatorSet = this.jx;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp() {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ql.zy.hp():void");
    }

    public void hp(Canvas canvas, w wVar) {
        try {
            if (wVar.getRipple() == 0.0f || TextUtils.isEmpty(this.eb)) {
                return;
            }
            this.hp.setColor(com.byazt.xa.hp.hp(this.eb));
            this.hp.setAlpha(90);
            ((ViewGroup) this.f24973j.getParent()).setClipChildren(true);
            canvas.drawCircle(this.f24975w, this.f24972a, Math.min(r0, r2) * 2 * wVar.getRipple(), this.hp);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void hp(int i2, int i3) {
        this.f24975w = i2 / 2;
        this.f24972a = i3 / 2;
    }
}
