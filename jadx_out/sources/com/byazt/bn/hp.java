package com.byazt.bn;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.byazt.fub.eb;
import com.byazt.fub.gu;
import com.byazt.fub.j;
import com.byazt.fub.k;
import com.byazt.fub.zy;
import com.byazt.nw.a;
import com.byazt.sq.w;
import com.byazt.uq.DynamicRootView;
import com.byazt.wkx.jx;
import com.byazt.yj.s;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, 28})
/* loaded from: classes2.dex */
public class hp implements gu, j<DynamicRootView> {

    /* renamed from: a, reason: collision with root package name */
    public zy f18616a;
    public ScheduledFuture<?> eb;
    public DynamicRootView hp;

    /* renamed from: j, reason: collision with root package name */
    public eb f18617j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public s f18618l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.fub.s f18621w;

    /* renamed from: s, reason: collision with root package name */
    public AtomicBoolean f18620s = new AtomicBoolean(false);

    /* renamed from: q, reason: collision with root package name */
    public volatile boolean f18619q = false;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, 170})
    /* renamed from: com.byazt.bn.hp$hp, reason: collision with other inner class name */
    public class RunnableC0199hp implements Runnable {

        /* renamed from: l, reason: collision with root package name */
        public int f18623l;

        public RunnableC0199hp(int i2) {
            this.f18623l = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18623l == 2) {
                hp.this.hp.hp(hp.this.f18618l instanceof com.byazt.yj.eb ? 127 : 117, (String) null);
            }
        }
    }

    public hp(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z2, s sVar, zy zyVar, com.byazt.thw.hp hpVar) {
        this.jx = context;
        DynamicRootView dynamicRootView = new DynamicRootView(context, themeStatusBroadcastReceiver, z2, zyVar, hpVar);
        this.hp = dynamicRootView;
        this.f18618l = sVar;
        this.f18616a = zyVar;
        dynamicRootView.setRenderListener(this);
        this.f18616a = zyVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            ScheduledFuture<?> scheduledFuture = this.eb;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.eb.cancel(false);
            this.eb = null;
        } catch (Throwable unused) {
        }
    }

    private boolean q() {
        DynamicRootView dynamicRootView = this.hp;
        return (dynamicRootView == null || dynamicRootView.getChildCount() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.f18616a.eb().l(jx());
        JSONObject jSONObjectW = this.f18616a.w();
        if (com.byazt.ir.l.hp(jSONObjectW)) {
            this.f18618l.hp(new com.byazt.thw.l() { // from class: com.byazt.bn.hp.3
                @Override // com.byazt.thw.l
                public void hp(final com.byazt.nw.s sVar) {
                    hp.this.e();
                    hp.this.f18616a.eb().jx(hp.this.jx());
                    hp.this.hp(sVar);
                    hp.this.l(sVar);
                    if (hp.this.f18619q) {
                        hp.this.jx(sVar);
                    } else {
                        e.l().post(new Runnable() { // from class: com.byazt.bn.hp.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                hp.this.jx(sVar);
                            }
                        });
                    }
                    if (hp.this.hp == null || sVar == null) {
                        return;
                    }
                    hp.this.hp.setBgColor(sVar.hp());
                    hp.this.hp.setBgMaterialCenterCalcColor(sVar.l());
                }
            });
            this.f18618l.hp(this.f18616a);
            return;
        }
        int i2 = this.f18618l instanceof com.byazt.yj.eb ? 123 : 113;
        DynamicRootView dynamicRootView = this.hp;
        StringBuilder sb = new StringBuilder("data null is ");
        sb.append(jSONObjectW == null);
        dynamicRootView.hp(i2, sb.toString());
    }

    public DynamicRootView a() {
        return this.hp;
    }

    public void j() {
        this.hp.hp();
    }

    public void w() {
        this.hp.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.nw.s sVar) {
        float fEb;
        float fA;
        List<com.byazt.nw.s> listGu;
        if (sVar == null) {
            return;
        }
        List<com.byazt.nw.s> listGu2 = sVar.gu();
        if (listGu2 == null || listGu2.size() <= 0) {
            fEb = 0.0f;
        } else {
            fEb = 0.0f;
            for (com.byazt.nw.s sVar2 : listGu2) {
                if (sVar2.eb() > sVar.eb() - sVar2.q() || (listGu = sVar2.gu()) == null || listGu.size() <= 0) {
                    fA = 0.0f;
                } else {
                    fA = 0.0f;
                    for (com.byazt.nw.s sVar3 : listGu) {
                        if (sVar3.e().getType().equals("logo-union")) {
                            fA = sVar3.e().a();
                            fEb = (((-fA) + sVar.eb()) - sVar2.eb()) + sVar2.e().w().ad();
                        }
                    }
                }
                l(sVar2);
                if (fA <= -15.0f) {
                    sVar2.a(sVar2.q() - fA);
                    sVar2.j(sVar2.eb() + fA);
                    for (com.byazt.nw.s sVar4 : sVar2.gu()) {
                        sVar4.j(sVar4.eb() - fA);
                    }
                }
            }
        }
        com.byazt.nw.s sVarJl = sVar.jl();
        if (sVarJl == null) {
            return;
        }
        float fA2 = sVar.a() - sVarJl.a();
        float fEb2 = sVar.eb() - sVarJl.eb();
        sVar.jx(fA2);
        sVar.j(fEb2);
        if (fEb > 0.0f) {
            sVar.j(sVar.eb() - fEb);
            sVar.a(sVar.q() + fEb);
            for (com.byazt.nw.s sVar5 : sVar.gu()) {
                sVar5.j(sVar5.eb() + fEb);
            }
        }
    }

    @Override // com.byazt.fub.j
    public void hp(eb ebVar) {
        this.f18617j = ebVar;
        int iS = this.f18616a.s();
        if (iS < 0) {
            int i2 = this.f18618l instanceof com.byazt.yj.eb ? 127 : 117;
            this.hp.hp(i2, "time is " + iS);
            return;
        }
        this.eb = w.hp(new RunnableC0199hp(2), iS, TimeUnit.MILLISECONDS);
        if (this.f18619q) {
            e.jx().postDelayed(new Runnable() { // from class: com.byazt.bn.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.s();
                }
            }, this.f18616a.gu());
        } else if (Looper.getMainLooper() == Looper.myLooper() && this.f18616a.gu() <= 0) {
            s();
        } else {
            e.l().postDelayed(new Runnable() { // from class: com.byazt.bn.hp.2
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.s();
                }
            }, this.f18616a.gu());
        }
    }

    @Override // com.byazt.fub.j
    public int jx() {
        return this.f18618l instanceof com.byazt.yj.eb ? 3 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(com.byazt.nw.s sVar) {
        if (sVar == null) {
            this.hp.hp(this.f18618l instanceof com.byazt.yj.eb ? 123 : 113, "layoutUnit is null");
            return;
        }
        this.f18616a.eb().j(jx());
        try {
            this.hp.hp(sVar, jx());
        } catch (Exception e2) {
            int i2 = this.f18618l instanceof com.byazt.yj.eb ? 128 : TTVideoEngine.PLAYER_BUFFERING_DATA_OF_MILLISECONDS;
            this.hp.hp(i2, "exception is " + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.nw.s sVar) {
        List<com.byazt.nw.s> listGu;
        if (sVar == null || (listGu = sVar.gu()) == null || listGu.size() <= 0) {
            return;
        }
        Collections.sort(listGu, new Comparator<com.byazt.nw.s>() { // from class: com.byazt.bn.hp.4
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(com.byazt.nw.s sVar2, com.byazt.nw.s sVar3) {
                a aVarW = sVar2.e().w();
                a aVarW2 = sVar3.e().w();
                if (aVarW == null || aVarW2 == null) {
                    return 0;
                }
                return aVarW.zb() >= aVarW2.zb() ? 1 : -1;
            }
        });
        for (com.byazt.nw.s sVar2 : listGu) {
            if (sVar2 != null) {
                hp(sVar2);
            }
        }
    }

    @Override // com.byazt.fub.j
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public DynamicRootView eb() {
        return a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void hp(View view) {
        if (view == 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            int i2 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i2 >= viewGroup.getChildCount()) {
                    break;
                }
                hp(viewGroup.getChildAt(i2));
                i2++;
            }
        }
        if (view instanceof com.byazt.uq.w) {
            ((com.byazt.uq.w) view).l();
        }
    }

    public void l() {
        hp(eb());
    }

    @Override // com.byazt.fub.gu
    public void l(View view, int i2, jx jxVar, int i3) {
        com.byazt.fub.s sVar = this.f18621w;
        if (sVar != null) {
            sVar.l(view, i2, jxVar, i3);
        }
    }

    public void hp(boolean z2) {
        this.hp.setSoundMute(z2);
    }

    public void hp(com.byazt.fub.s sVar) {
        this.f18621w = sVar;
    }

    public void l(boolean z2) {
        this.f18619q = z2;
    }

    @Override // com.byazt.fub.gu
    public void hp(k kVar) {
        if (this.f18620s.get()) {
            return;
        }
        this.f18620s.set(true);
        if (kVar.jx() && q()) {
            this.hp.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f18617j.hp(eb(), kVar);
            return;
        }
        this.f18617j.hp(kVar.gu(), kVar.e());
    }

    @Override // com.byazt.fub.gu
    public void hp(View view, int i2, jx jxVar, int i3) {
        com.byazt.fub.s sVar = this.f18621w;
        if (sVar != null) {
            sVar.hp(view, i2, jxVar, i3);
        }
    }
}
