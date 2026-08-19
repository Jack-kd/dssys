package com.byazt.fjm;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 54})
/* loaded from: classes2.dex */
public class a extends RecyclerView.ec {

    /* renamed from: a, reason: collision with root package name */
    public final float f19974a;
    public PointF jx;
    public final LinearInterpolator hp = new LinearInterpolator();

    /* renamed from: l, reason: collision with root package name */
    public final DecelerateInterpolator f19976l = new DecelerateInterpolator();

    /* renamed from: j, reason: collision with root package name */
    public int f19975j = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f19977w = 0;

    public a(Context context) {
        this.f19974a = hp(context.getResources().getDisplayMetrics());
    }

    private int l(int i2, int i3) {
        int i4 = i2 - i3;
        if (i2 * i4 <= 0) {
            return 0;
        }
        return i4;
    }

    @Override // com.byazt.fjm.RecyclerView.ec
    public void hp(View view, RecyclerView.sz szVar, RecyclerView.ec.hp hpVar) {
        int iL = l(view, l());
        int iHp = hp(view, jx());
        int iHp2 = hp((int) Math.sqrt((iL * iL) + (iHp * iHp)));
        if (iHp2 > 0) {
            hpVar.update(-iL, -iHp, iHp2, this.f19976l);
        }
    }

    public int jx() {
        PointF pointF = this.jx;
        if (pointF == null) {
            return 0;
        }
        float f2 = pointF.y;
        if (f2 != 0.0f) {
            return f2 > 0.0f ? 1 : -1;
        }
        return 0;
    }

    public int l(int i2) {
        return (int) Math.ceil(Math.abs(i2) * this.f19974a);
    }

    public int l() {
        PointF pointF = this.jx;
        if (pointF == null) {
            return 0;
        }
        float f2 = pointF.x;
        if (f2 != 0.0f) {
            return f2 > 0.0f ? 1 : -1;
        }
        return 0;
    }

    public int l(View view, int i2) {
        RecyclerView.q qVarJ = j();
        if (qVarJ == null || !qVarJ.jx()) {
            return 0;
        }
        RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
        return hp(qVarJ.eb(view) - ((ViewGroup.MarginLayoutParams) eVar).leftMargin, qVarJ.q(view) + ((ViewGroup.MarginLayoutParams) eVar).rightMargin, qVarJ.b(), qVarJ.ns() - qVarJ.o(), i2);
    }

    @Override // com.byazt.fjm.RecyclerView.ec
    public void hp(int i2, int i3, RecyclerView.sz szVar, RecyclerView.ec.hp hpVar) {
        if (q() == 0) {
            w();
            return;
        }
        this.f19975j = l(this.f19975j, i2);
        int iL = l(this.f19977w, i3);
        this.f19977w = iL;
        if (this.f19975j == 0 && iL == 0) {
            hp(hpVar);
        }
    }

    @Override // com.byazt.fjm.RecyclerView.ec
    public void hp() {
        this.f19977w = 0;
        this.f19975j = 0;
        this.jx = null;
    }

    public float hp(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int hp(int i2) {
        return (int) Math.ceil(l(i2) / 0.3356d);
    }

    public void hp(RecyclerView.ec.hp hpVar) {
        PointF pointFJ = j(s());
        if (pointFJ != null && (pointFJ.x != 0.0f || pointFJ.y != 0.0f)) {
            hp(pointFJ);
            this.jx = pointFJ;
            this.f19975j = (int) (pointFJ.x * 10000.0f);
            this.f19977w = (int) (pointFJ.y * 10000.0f);
            hpVar.update((int) (this.f19975j * 1.2f), (int) (this.f19977w * 1.2f), (int) (l(10000) * 1.2f), this.hp);
            return;
        }
        hpVar.hp(s());
        w();
    }

    public int hp(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 != 0) {
            if (i6 == 1) {
                return i5 - i3;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i7 = i4 - i2;
        if (i7 > 0) {
            return i7;
        }
        int i8 = i5 - i3;
        if (i8 < 0) {
            return i8;
        }
        return 0;
    }

    public int hp(View view, int i2) {
        RecyclerView.q qVarJ = j();
        if (qVarJ == null || !qVarJ.j()) {
            return 0;
        }
        RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
        return hp(qVarJ.s(view) - ((ViewGroup.MarginLayoutParams) eVar).topMargin, qVarJ.e(view) + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin, qVarJ.di(), qVarJ.cx() - qVarJ.d(), i2);
    }
}
