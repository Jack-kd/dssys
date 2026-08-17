package com.byazt.fub;

import android.content.Context;
import android.view.View;
import com.byazt.fub.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 694, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public class u implements e {

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f20157a = new AtomicBoolean(false);
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public zy f20158j;
    public s jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.wx.hp f20159l;

    /* renamed from: w, reason: collision with root package name */
    public ScheduledFuture<?> f20160w;

    @com.byazt.kj.hp(hp = {0, 1, 694, MediaPlayer.MEDIA_PLAYER_OPTION_NO_BUFFERING_UPDATE})
    public class hp implements Runnable {
        public e.hp hp;
        public int jx;

        public hp(int i2, e.hp hpVar) {
            this.jx = i2;
            this.hp = hpVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.jx == 1) {
                u.this.f20159l.hp(true);
                u.this.hp(this.hp, 107, null);
            }
        }
    }

    public u(Context context, zy zyVar, com.byazt.wx.hp hpVar, s sVar) {
        this.hp = context;
        this.f20158j = zyVar;
        this.jx = sVar;
        this.f20159l = hpVar;
        hpVar.hp(this.jx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f20160w;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.f20160w.cancel(false);
            this.f20160w = null;
        } catch (Throwable unused) {
        }
    }

    public com.byazt.wx.hp l() {
        return this.f20159l;
    }

    @Override // com.byazt.fub.e
    public boolean hp(final e.hp hpVar) {
        int iS = this.f20158j.s();
        if (iS < 0) {
            hp(hpVar, 107, "time is ".concat(String.valueOf(iS)));
        } else {
            this.f20160w = com.byazt.sq.w.hp(new hp(1, hpVar), iS, TimeUnit.MILLISECONDS);
            this.f20159l.hp(new eb() { // from class: com.byazt.fub.u.1
                @Override // com.byazt.fub.eb
                public void hp(View view, k kVar) {
                    v vVarL;
                    u.this.jx();
                    if (hpVar.jx() || (vVarL = hpVar.l()) == null) {
                        return;
                    }
                    vVarL.hp(u.this.f20159l, kVar);
                    hpVar.hp(true);
                }

                @Override // com.byazt.fub.eb
                public void hp(int i2, String str) {
                    u.this.hp(hpVar, i2, str);
                }
            });
        }
        return true;
    }

    @Override // com.byazt.fub.e
    public void hp() {
        this.f20159l.j();
        jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(e.hp hpVar, int i2, String str) {
        v vVarL;
        if (hpVar.jx() || this.f20157a.get()) {
            return;
        }
        jx();
        this.f20158j.eb().hp(i2, str);
        if (hpVar.l(this)) {
            hpVar.hp(this);
        } else {
            if (hpVar.jx() || (vVarL = hpVar.l()) == null) {
                return;
            }
            hpVar.hp(true);
            vVarL.a_(i2);
        }
        this.f20157a.getAndSet(true);
    }
}
