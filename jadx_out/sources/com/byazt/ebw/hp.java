package com.byazt.ebw;

import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.uq.DynamicImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public int f19396a;
    public Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public int f19397j;

    /* renamed from: w, reason: collision with root package name */
    public int f19399w;

    /* renamed from: l, reason: collision with root package name */
    public Path f19398l = new Path();
    public Path jx = new Path();

    public hp() {
        Paint paint = new Paint();
        this.hp = paint;
        paint.setAntiAlias(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(android.graphics.Canvas r21, com.byazt.ebw.l r22, android.view.View r23) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ebw.hp.hp(android.graphics.Canvas, com.byazt.ebw.l, android.view.View):void");
    }

    public void hp(View view, float f2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) (this.f19396a * f2);
        view.setTranslationX((r1 - r6) / 2);
        if (view instanceof DynamicImageView) {
            int i2 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i2 >= viewGroup.getChildCount()) {
                    break;
                }
                viewGroup.getChildAt(i2).setTranslationX((-(this.f19396a - layoutParams.width)) / 2);
                i2++;
            }
        }
        view.setLayoutParams(layoutParams);
    }

    public void hp(View view, int i2, int i3) {
        String str;
        this.f19397j = i2 / 2;
        this.f19399w = i3 / 2;
        if (this.f19396a == 0 && view.getLayoutParams().width > 0) {
            this.f19396a = view.getLayoutParams().width;
        }
        try {
            str = (String) view.getTag(2097610710);
            try {
                this.jx.addRoundRect(new RectF(0.0f, 0.0f, i2, i3), i3 / 2, i3 / 2, Path.Direction.CW);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str = "";
        }
        if (ScrollClickView.DIR_RIGHT.equals(str)) {
            view.setPivotX(this.f19397j * 2);
            view.setPivotY(this.f19399w);
        } else if (ScrollClickView.DIR_LEFT.equals(str)) {
            view.setPivotX(0.0f);
            view.setPivotY(this.f19399w);
        } else {
            view.setPivotX(this.f19397j);
            view.setPivotY(this.f19399w);
        }
    }
}
