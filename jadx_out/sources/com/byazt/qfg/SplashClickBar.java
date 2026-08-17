package com.byazt.qfg;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 1309})
/* loaded from: classes3.dex */
public class SplashClickBar extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public String f24570a;
    public boolean eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f24571j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f24572l;

    /* renamed from: q, reason: collision with root package name */
    public SplashClickBarBtn f24573q;

    /* renamed from: s, reason: collision with root package name */
    public int f24574s;

    /* renamed from: w, reason: collision with root package name */
    public int f24575w;

    public SplashClickBar(Context context, mp mpVar) {
        super(context);
        hp(context, mpVar);
    }

    public void hp(Context context, mp mpVar) {
        setClipChildren(false);
        SplashClickBarBtn splashClickBarBtn = new SplashClickBarBtn(getContext(), mpVar);
        this.f24573q = splashClickBarBtn;
        addView(splashClickBarBtn);
        this.f24573q.setClipChildren(false);
    }

    public void setBtnLayout(boolean z2) {
        int iJx;
        int i2 = this.f24572l + 150;
        if (this.hp <= i2 && this.f24574s != 4) {
            this.hp = i2;
        }
        int i3 = z2 ? this.jx : this.f24571j;
        if (i3 < 0) {
            i3 = 0;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f24573q.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        int i4 = this.f24574s;
        if (i4 != 4) {
            if (i4 == 5) {
                layoutParams.height = -50;
                layoutParams.width = -50;
                iJx = xh.jx(getContext(), 10.0f);
            } else if (i4 != 7) {
                layoutParams.height = xh.jx(sz.getContext(), this.f24572l);
                layoutParams.width = xh.jx(sz.getContext(), this.hp);
            } else {
                layoutParams.height = -50;
                layoutParams.width = -50;
                iJx = xh.jx(getContext(), 20.0f);
            }
            i3 += iJx;
        } else {
            layoutParams.height = -50;
            layoutParams.width = -50;
        }
        layoutParams.bottomMargin = xh.jx(sz.getContext(), i3);
        layoutParams.gravity = 81;
        this.f24573q.setLayoutParams(layoutParams);
    }

    public void hp(mp mpVar) {
        this.hp = mpVar.tn();
        this.f24572l = mpVar.gy();
        this.jx = mpVar.tr();
        this.f24571j = mpVar.pf();
        this.f24575w = mpVar.fu();
        this.f24570a = mpVar.ld();
        this.f24574s = mpVar.ti();
        this.eb = mpVar.ly();
        SplashClickBarBtn splashClickBarBtn = this.f24573q;
        if (splashClickBarBtn != null) {
            splashClickBarBtn.setShakeValue(mpVar.rm());
            this.f24573q.setDeepShakeValue(mpVar.kq());
            this.f24573q.setWriggleValue(mpVar.aj());
            this.f24573q.setTwistConfig(mpVar.ki());
            this.f24573q.setShakeInteractConf(mpVar.wj());
            this.f24573q.setTwistInteractConf(mpVar.sf());
            this.f24573q.setCalculationTwistMethod(mpVar.gv());
            this.f24573q.setCalculationMethod(mpVar.cs());
        }
        this.f24573q.hp(mpVar.sh());
        if (this.f24575w == 1 && this.eb) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    public void hp(com.byazt.go.hp hpVar) {
        this.f24573q.hp(hpVar);
    }
}
