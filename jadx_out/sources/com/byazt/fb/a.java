package com.byazt.fb;

import android.content.Context;
import android.view.View;
import com.byazt.fub.e;
import com.byazt.fub.k;
import com.byazt.fub.s;
import com.byazt.fub.v;
import com.byazt.fub.zy;
import com.byazt.pg.r;
import com.byazt.ql.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 528, 54})
/* loaded from: classes2.dex */
public class a implements e {
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public ScheduledFuture<?> f19591j;
    public zy jx;

    /* renamed from: l, reason: collision with root package name */
    public w f19592l;

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f19593w = new AtomicBoolean(false);

    @com.byazt.kj.hp(hp = {0, 1, 528, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
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
                a.this.f19592l.hp(true);
                a.this.hp(this.hp, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME);
            }
        }
    }

    public a(Context context, w wVar, s sVar, zy zyVar, com.byazt.ci.l lVar) {
        this.hp = context;
        this.f19592l = wVar;
        this.jx = zyVar;
        this.f19592l.hp(sVar);
        this.f19592l.hp(lVar);
    }

    private void l() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f19591j;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.f19591j.cancel(false);
            this.f19591j = null;
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.fub.e
    public boolean hp(final e.hp hpVar) throws JSONException {
        int iS = this.jx.s();
        if (iS < 0) {
            hp(hpVar, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME);
        } else {
            this.f19591j = ((r) com.byazt.ym.j.getService("thread_service")).getScheduledThreadPool().schedule(new hp(1, hpVar), iS, TimeUnit.MILLISECONDS);
            this.f19592l.hp(new com.byazt.fub.eb() { // from class: com.byazt.fb.a.1
                @Override // com.byazt.fub.eb
                public void hp(View view, k kVar) {
                    if (hpVar.jx()) {
                        return;
                    }
                    n nVar = new n();
                    nVar.hp(0);
                    ((l) a.this.jx).lv().hp(nVar);
                    a.this.jx.eb().zy();
                    v vVarL = hpVar.l();
                    if (vVarL == null) {
                        return;
                    }
                    vVarL.hp(a.this.f19592l, kVar);
                    hpVar.hp(true);
                }

                @Override // com.byazt.fub.eb
                public void hp(int i2, String str) {
                    v vVarL;
                    n nVar = new n();
                    nVar.hp(i2);
                    nVar.hp(str);
                    ((l) a.this.jx).lv().hp(nVar);
                    if (hpVar.l(a.this)) {
                        hpVar.hp(a.this);
                    } else {
                        if (hpVar.jx() || (vVarL = hpVar.l()) == null) {
                            return;
                        }
                        vVarL.a_(i2);
                    }
                }
            });
        }
        return true;
    }

    @Override // com.byazt.fub.e
    public void hp() {
        w wVar = this.f19592l;
        if (wVar != null) {
            wVar.jl();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(e.hp hpVar, int i2) {
        v vVarL;
        if (hpVar.jx() || this.f19593w.get()) {
            return;
        }
        l();
        n nVar = new n();
        nVar.hp(i2);
        ((l) this.jx).lv().hp(nVar);
        if (hpVar.l(this)) {
            hpVar.hp(this);
        } else {
            if (hpVar.jx() || (vVarL = hpVar.l()) == null) {
                return;
            }
            hpVar.hp(true);
            vVarL.a_(i2);
        }
        this.f19593w.getAndSet(true);
    }
}
