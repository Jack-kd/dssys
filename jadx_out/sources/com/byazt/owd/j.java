package com.byazt.owd;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import com.byazt.bki.hp;
import com.byazt.bki.jl;
import com.byazt.bki.s;
import com.byazt.jz.d;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1061, 38})
/* loaded from: classes3.dex */
public class j {
    public static volatile boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public static volatile boolean f24223j;
    public static volatile SparseArray<Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile AtomicBoolean f24224l = new AtomicBoolean(false);

    /* renamed from: s, reason: collision with root package name */
    public static volatile boolean f24225s = false;

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.jz.jx f24226a;
    public long eb;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.hde.jx f24227w;

    private void j() {
        com.byazt.ami.w.hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        if (this.f24227w != null) {
            f24223j = true;
            if (this.eb != 0) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                a.f24201l = jElapsedRealtime - this.eb;
                a.f24200j = jElapsedRealtime - a.f24203s;
            }
            com.byazt.aw.l.l("TMe", "sdk init call callback success");
            com.byazt.wi.w wVarHp = com.byazt.wi.w.hp().hp(true);
            if (this.f24226a != null && d.f21856j < 7500) {
                com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
                jVarHp.hp(23, this.f24226a.getReuseServiceMap());
                wVarHp.hp(jVarHp.l());
            }
            jx = wVarHp.l();
            this.f24227w.hp(0, jx);
            com.byazt.fct.j.jx();
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (f24224l.get()) {
            com.byazt.aw.l.l("TMe", "通知成功或失败了不在通知");
            return;
        }
        f24224l.set(true);
        com.byazt.aw.l.l("TMe", "通知成功=----notifySdkSuccess");
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.owd.j.3
            @Override // java.lang.Runnable
            public void run() {
                j.this.jx();
            }
        });
    }

    public void hp(Context context, com.byazt.lz.hp hpVar, com.byazt.hde.jx jxVar, long j2, com.byazt.jz.jx jxVar2, long j3, JSONObject jSONObject) throws JSONException {
        this.f24227w = jxVar;
        this.eb = j2;
        this.f24226a = jxVar2;
        if (hpVar == null) {
            com.byazt.aw.l.l("TMe", "init csjm configValueSet is null");
            return;
        }
        com.byazt.di.hp.jl().jx(hpVar.w());
        if (com.byazt.jz.s.u().rz()) {
            com.byazt.ri.a.hp(hpVar);
        }
        com.byazt.aw.l.l("TMe", "init csjm " + hp);
        if (hp) {
            com.byazt.aw.l.l("TMe", "init csjm already");
            if (jxVar != null && f24225s) {
                f24225s = false;
                f24224l.set(false);
                com.byazt.ky.hp.hp().hp(new com.byazt.ky.l() { // from class: com.byazt.owd.j.2
                    @Override // com.byazt.ky.l
                    public void hp() {
                        com.byazt.ky.hp.hp().hp((com.byazt.ky.l) null);
                        j.this.l();
                    }

                    @Override // com.byazt.ky.l
                    public void hp(int i2, String str) {
                        com.byazt.ky.hp.hp().hp((com.byazt.ky.l) null);
                        j.this.hp(i2, str);
                    }
                });
                com.byazt.bcj.l.hp(com.byazt.di.l.l()).hp(1);
                return;
            }
            if (jxVar == null || jx == null || !f24223j) {
                com.byazt.aw.l.l("TMe", "sdk正在初始化....");
                return;
            } else {
                jxVar.hp(0, jx);
                return;
            }
        }
        com.byazt.aw.l.l("TMe", "init csjm ");
        hp = true;
        f24224l.set(false);
        com.byazt.ky.hp.hp().l();
        com.byazt.ky.hp.hp().hp(new com.byazt.ky.l() { // from class: com.byazt.owd.j.1
            @Override // com.byazt.ky.l
            public void hp() {
                com.byazt.ky.hp.hp().hp((com.byazt.ky.l) null);
                j.this.l();
            }

            @Override // com.byazt.ky.l
            public void hp(int i2, String str) {
                com.byazt.ky.hp.hp().hp((com.byazt.ky.l) null);
                j.this.hp(i2, str);
            }
        });
        com.byazt.bki.e.hp(context, hp(hpVar));
        try {
            jSONObject.put("0-init", a.f24199a - a.f24204w);
            jSONObject.put("0-start", a.eb - a.f24204w);
            jSONObject.put("s-csj", j3 - a.eb);
            jSONObject.put("s-m_init_end", SystemClock.elapsedRealtime() - a.eb);
        } catch (JSONException unused) {
        }
        com.byazt.bki.e.hp(jSONObject);
    }

    private void l(int i2, String str) {
        if (i2 == 40004) {
            com.byazt.aw.l.l("TMe", "sdk init call code is 40004 callback success");
            jx();
        } else if (this.f24227w != null) {
            com.byazt.aw.l.l("TMe", "sdk init call callback fail");
            jx = com.byazt.wi.w.hp().hp(false).hp(i2).hp(str).l();
            this.f24227w.hp(0, jx);
            com.byazt.fct.j.jx();
        }
    }

    public boolean hp() {
        return f24223j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str) {
        f24225s = true;
        if (!f24224l.get()) {
            f24224l.set(true);
            l(i2, str);
        } else {
            com.byazt.aw.l.l("TMe", "通知成功或失败了不在通知");
        }
    }

    private com.byazt.bki.hp hp(com.byazt.lz.hp hpVar) {
        return new hp.C0197hp().hp(hpVar.w()).l(hpVar.a()).hp(hpVar.j()).jx(hpVar.v()).l(hpVar.u()).hp(jx.hp(hpVar.xs())).hp(hpVar.vv()).hp(hpVar.k()).jx(hpVar.ec()).hp(hpVar.sz()).j(hpVar.jl()).hp(new jl.hp().hp(hpVar.eb()).l(hpVar.s()).hp(hpVar.q()).hp(hpVar.e()).l(hpVar.gu()).hp(hpVar.zy()).hp(jx.hp(hpVar.vv())).hp()).hp(new s.hp().hp(hpVar.ns()).hp(hpVar.n()).l(hpVar.cx()).jx(hpVar.b()).hp()).hp(hpVar.l()).hp();
    }
}
