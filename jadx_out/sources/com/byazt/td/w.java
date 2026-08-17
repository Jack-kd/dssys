package com.byazt.td;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.byazt.cc.RewardBrowserMixTopLayoutImpl;
import com.byazt.cc.TopLayoutImpl;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.nk.TopProxyLayout;
import com.byazt.ono.UgenBanner;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.go.l f25754a;
    public com.byazt.cc.a eb;
    public final TTBaseVideoActivity hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f25755j;
    public com.byazt.cc.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public mp f25756l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.cc.w f25757q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.cc.j f25758s;

    /* renamed from: w, reason: collision with root package name */
    public UgenBanner f25759w;

    public w(TTBaseVideoActivity tTBaseVideoActivity) {
        this.hp = tTBaseVideoActivity;
    }

    private void s() {
        TopProxyLayout topProxyLayout = (TopProxyLayout) this.hp.findViewById(2114387721);
        if (topProxyLayout != null) {
            hp(topProxyLayout);
        }
        this.f25755j = (TextView) this.hp.findViewById(2114387801);
        this.f25759w = (UgenBanner) this.hp.findViewById(2114387901);
    }

    public void a(boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setShowBack(z2);
        }
    }

    public void eb(boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setShowAgain(z2);
        }
    }

    public void j(boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setSoundMute(z2);
        }
    }

    public void jx(boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setDislikeLeft(z2);
        }
    }

    public void l(boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setShowDislike(z2);
        }
    }

    public void w(boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setShowSound(z2);
        }
    }

    public void hp(mp mpVar, l lVar, boolean z2, com.byazt.go.l lVar2) {
        this.f25756l = mpVar;
        this.f25754a = lVar2;
        s();
        this.eb = new com.byazt.cc.a(this.hp, this.f25756l, lVar, this, z2);
        this.f25757q = new com.byazt.cc.w(this.hp, this.f25756l, lVar, this, z2);
        this.f25758s = new com.byazt.cc.j(this.hp, this.f25756l, lVar, this, z2);
        hp(1);
    }

    public void a() {
        UgenBanner ugenBanner = this.f25759w;
        if (ugenBanner == null) {
            return;
        }
        ugenBanner.hp(this.f25756l, this.f25754a);
    }

    public void eb() {
        UgenBanner ugenBanner = this.f25759w;
        if (ugenBanner == null) {
            return;
        }
        ugenBanner.hp();
    }

    public View j() {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.getCloseButton();
        }
        return null;
    }

    public void jx() {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.jx();
        }
    }

    public void l() {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.l();
        }
    }

    public boolean w() {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            return hpVar.getSkipOrCloseVisible();
        }
        return false;
    }

    public void l(String str) {
        TextView textView = this.f25755j;
        if (textView != null) {
            textView.setText(str);
            this.f25755j.setVisibility(0);
            this.f25755j.postDelayed(new Runnable() { // from class: com.byazt.td.w.1
                @Override // java.lang.Runnable
                public void run() {
                    w.this.f25755j.setVisibility(8);
                }
            }, 3000L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.byazt.cc.RewardBrowserMixTopLayoutImpl] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.byazt.td.w] */
    public void hp(TopProxyLayout topProxyLayout) {
        TopLayoutImpl topLayoutImplHp;
        if (ec.zy(this.f25756l)) {
            topLayoutImplHp = new RewardBrowserMixTopLayoutImpl(topProxyLayout.getContext()).hp(this.f25756l);
        } else {
            topLayoutImplHp = new TopLayoutImpl(topProxyLayout.getContext()).hp(this.f25756l);
        }
        if (topLayoutImplHp != null) {
            this.jx = topLayoutImplHp;
        } else {
            u.l("RewardFullTopProxyManager", "view not implements ITopLayout interface");
        }
        ViewParent parent = topProxyLayout.getParent();
        if (parent instanceof ViewGroup) {
            hp(topProxyLayout, topLayoutImplHp, (ViewGroup) parent);
        }
    }

    private void hp(TopProxyLayout topProxyLayout, View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(topProxyLayout);
        viewGroup.removeViewInLayout(topProxyLayout);
        ViewGroup.LayoutParams layoutParams = topProxyLayout.getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }

    public void hp(boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setVisible(z2);
        }
    }

    public void hp(boolean z2, String str, String str2, boolean z3, boolean z4) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.hp(z2, str, str2, z3, z4);
        }
    }

    public void hp(String str, String str2, boolean z2) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.hp(str, str2, z2);
        }
    }

    public void hp() {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.hp();
        }
    }

    public void hp(int i2) {
        if (i2 == 2) {
            hp(this.f25758s);
        } else if (i2 != 4) {
            hp(this.eb);
        } else {
            hp(this.f25757q);
        }
    }

    public void hp(com.byazt.cc.l lVar) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setListener(lVar);
        }
    }

    public void hp(String str) {
        com.byazt.cc.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.setPlayAgainEntranceText(str);
        }
    }

    public void hp(mp mpVar) {
        com.byazt.cc.a aVar = this.eb;
        if (aVar != null) {
            aVar.hp(mpVar);
        }
        com.byazt.cc.j jVar = this.f25758s;
        if (jVar != null) {
            jVar.hp(mpVar);
        }
        com.byazt.cc.w wVar = this.f25757q;
        if (wVar != null) {
            wVar.hp(mpVar);
        }
    }
}
