package com.byazt.qk;

import com.byazt.xci.mp;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, 45})
/* loaded from: classes3.dex */
public class e implements com.byazt.ql.ns, com.byazt.fub.q {

    /* renamed from: a, reason: collision with root package name */
    public long f24838a;
    public com.byazt.es.s eb;
    public com.byazt.tq.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public String f24839j;
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    public String f24840l;

    /* renamed from: w, reason: collision with root package name */
    public long f24841w;

    public e(com.byazt.tq.hp hpVar, String str, mp mpVar, String str2) {
        this.hp = hpVar;
        this.f24840l = str;
        this.f24839j = str2;
        this.jx = mpVar;
    }

    @Override // com.byazt.fub.q
    public void a() {
        this.hp.hp();
    }

    @Override // com.byazt.fub.q
    public void e() {
        this.hp.hp(true);
        this.hp.w();
        com.byazt.uid.w.jx(new com.byazt.uid.eb("native_success") { // from class: com.byazt.qk.e.2
            @Override // java.lang.Runnable
            public void run() {
                q.hp(e.this.f24840l, e.this.f24839j, e.this.jx);
                com.byazt.jdb.j.eb(e.this.jx, e.this.f24840l, "dynamic_backup_render", null);
            }
        });
    }

    @Override // com.byazt.fub.q
    public void eb() {
        com.byazt.es.s sVar = this.eb;
        if (sVar == null) {
            return;
        }
        sVar.a(o.hp(this.jx));
    }

    @Override // com.byazt.fub.q
    public void gu() {
        this.hp.hp(true);
        this.hp.zy();
    }

    @Override // com.byazt.ql.ns
    public void hp(boolean z2) {
    }

    @Override // com.byazt.ql.ns
    public void j() {
    }

    @Override // com.byazt.fub.q
    public void jl() {
        this.hp.k();
    }

    public void k() {
        this.hp.v();
        this.hp.u();
    }

    @Override // com.byazt.fub.q
    public void q() {
        this.hp.jx();
    }

    @Override // com.byazt.fub.q
    public void s() {
        this.hp.l();
        com.byazt.es.s sVar = this.eb;
        if (sVar == null) {
            return;
        }
        sVar.eb(o.hp(this.jx));
    }

    @Override // com.byazt.ql.ns
    public void w() {
    }

    @Override // com.byazt.fub.q
    public void zy() {
        this.hp.l();
    }

    @Override // com.byazt.fub.q
    public void a(int i2) {
        final String str;
        this.f24838a = System.currentTimeMillis();
        if (i2 == 3) {
            this.hp.jx("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.hp.jx("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.hp.hp(true);
        com.byazt.uid.w.jx(new com.byazt.uid.eb("dynamic_success") { // from class: com.byazt.qk.e.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.jdb.j.eb(e.this.jx, e.this.f24840l, str, null);
            }
        });
    }

    @Override // com.byazt.fub.q
    public void j(int i2) {
        if (i2 == 3) {
            this.hp.l("dynamic_sub_render2_start");
        } else {
            this.hp.l("dynamic_sub_render_start");
        }
    }

    @Override // com.byazt.fub.q
    public void jx(int i2) {
        if (i2 == 3) {
            this.hp.l("dynamic_sub_analysis2_end");
        } else {
            this.hp.l("dynamic_sub_analysis_end");
        }
    }

    @Override // com.byazt.fub.q
    public void l(boolean z2) {
        this.hp.hp(z2 ? 1 : 0);
    }

    @Override // com.byazt.fub.q
    public void w(int i2) {
        if (i2 == 3) {
            this.hp.l("dynamic_sub_render2_end");
        } else {
            this.hp.l("dynamic_sub_render_end");
        }
    }

    @Override // com.byazt.fub.q
    public void hp(int i2, String str) {
        this.hp.hp(i2, str);
        q.hp(i2, this.f24840l, this.f24839j, this.jx);
        com.byazt.es.s sVar = this.eb;
        if (sVar == null) {
            return;
        }
        sVar.hp(true, o.hp(this.jx), 105);
    }

    @Override // com.byazt.fub.q
    public void l(int i2) {
        if (i2 == 3) {
            this.hp.l("dynamic_sub_analysis2_start");
        } else {
            this.hp.l("dynamic_sub_analysis_start");
        }
    }

    @Override // com.byazt.ql.ns
    public void jx() {
        this.hp.j("ugen_sub_render_start");
    }

    @Override // com.byazt.ql.ns
    public void l() {
        this.hp.j("ugen_sub_analysis_end");
    }

    @Override // com.byazt.fub.q
    public void hp(int i2) {
        this.f24841w = System.currentTimeMillis();
        if (i2 == 3) {
            this.hp.hp("dynamic_render2_start");
        } else {
            this.hp.hp("dynamic_render_start");
        }
    }

    @Override // com.byazt.fub.q
    public void hp(int i2, int i3, String str, boolean z2) {
        this.hp.hp(true);
        if (i2 == 3) {
            this.hp.l(i3, "dynamic_render2_error");
        } else {
            this.hp.l(i3, "dynamic_render_error");
        }
        q.hp(i3, this.f24840l, this.f24839j, this.jx);
    }

    public void hp(com.byazt.es.s sVar) {
        this.eb = sVar;
    }

    @Override // com.byazt.ql.ns
    public void hp() {
        this.hp.j("ugen_render_start");
        this.hp.j("ugen_sub_analysis_start");
    }

    @Override // com.byazt.ql.ns
    public void hp(com.byazt.ql.n nVar) {
        if (nVar.hp() == 0) {
            this.hp.j("ugen_sub_render_end");
            this.hp.w("ugen_render_success");
        } else {
            this.hp.jx(nVar.hp(), "ugen_render_error");
        }
        this.hp.hp(true);
    }

    @Override // com.byazt.ql.ns
    public void hp(JSONObject jSONObject) {
        this.hp.hp(jSONObject);
    }
}
