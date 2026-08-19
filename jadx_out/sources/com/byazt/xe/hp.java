package com.byazt.xe;

import com.byazt.jw.j;
import com.byazt.jw.l;
import com.byazt.jw.s;
import com.byazt.jw.w;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2425, 28})
/* loaded from: classes3.dex */
public class hp {
    public StringBuffer hp = new StringBuffer();

    /* renamed from: l, reason: collision with root package name */
    public StringBuffer f27637l = new StringBuffer();
    public AtomicLong jx = new AtomicLong(0);

    /* renamed from: j, reason: collision with root package name */
    public AtomicLong f27635j = new AtomicLong(0);

    /* renamed from: w, reason: collision with root package name */
    public AtomicLong f27646w = new AtomicLong(0);

    /* renamed from: a, reason: collision with root package name */
    public AtomicLong f27631a = new AtomicLong(0);
    public AtomicLong eb = new AtomicLong(0);

    /* renamed from: s, reason: collision with root package name */
    public AtomicLong f27643s = new AtomicLong(0);

    /* renamed from: q, reason: collision with root package name */
    public AtomicLong f27641q = new AtomicLong(0);

    /* renamed from: e, reason: collision with root package name */
    public AtomicLong f27634e = new AtomicLong(0);
    public AtomicLong gu = new AtomicLong(0);
    public AtomicLong jl = new AtomicLong(0);
    public AtomicLong zy = new AtomicLong(0);

    /* renamed from: k, reason: collision with root package name */
    public AtomicLong f27636k = new AtomicLong(0);

    /* renamed from: v, reason: collision with root package name */
    public AtomicLong f27645v = new AtomicLong(0);

    /* renamed from: u, reason: collision with root package name */
    public AtomicLong f27644u = new AtomicLong(0);
    public AtomicLong xs = new AtomicLong(0);
    public AtomicLong vv = new AtomicLong(0);
    public AtomicLong ec = new AtomicLong(0);
    public AtomicLong sz = new AtomicLong(0);

    /* renamed from: n, reason: collision with root package name */
    public AtomicLong f27639n = new AtomicLong(0);
    public AtomicLong ns = new AtomicLong(0);
    public AtomicLong cx = new AtomicLong(0);

    /* renamed from: b, reason: collision with root package name */
    public AtomicLong f27632b = new AtomicLong(0);
    public AtomicLong di = new AtomicLong(0);

    /* renamed from: o, reason: collision with root package name */
    public AtomicLong f27640o = new AtomicLong(0);

    /* renamed from: d, reason: collision with root package name */
    public AtomicLong f27633d = new AtomicLong(0);
    public AtomicLong wv = new AtomicLong(0);
    public AtomicLong hq = new AtomicLong(0);
    public AtomicLong ud = new AtomicLong(0);
    public AtomicLong nu = new AtomicLong(0);
    public AtomicLong dy = new AtomicLong(0);
    public AtomicLong lv = new AtomicLong(0);

    /* renamed from: r, reason: collision with root package name */
    public AtomicLong f27642r = new AtomicLong(0);
    public AtomicLong pu = new AtomicLong(0);
    public AtomicLong ky = new AtomicLong(0);
    public AtomicLong xh = new AtomicLong(0);

    /* renamed from: ms, reason: collision with root package name */
    public AtomicLong f27638ms = new AtomicLong(0);

    public synchronized void a() {
        zy().set(0L);
        r().set(0L);
        pu().set(0L);
        lv().set(0L);
        xh().set(0L);
        ky().set(0L);
        dy().set(0L);
        ns().set(0L);
        cx().set(0L);
        b().set(0L);
        di().set(0L);
        o().set(0L);
        ud().set(0L);
        d().set(0L);
        wv().set(0L);
        hq().set(0L);
        nu().set(0L);
        u().set(0L);
        jl().set(0L);
        k().set(0L);
        xs().set(0L);
        vv().set(0L);
        ec().set(0L);
        sz().set(0L);
        n().set(0L);
        v().set(0L);
        e().set(0L);
        s().set(0L);
        q().set(0L);
        eb().set(0L);
        gu().set(0L);
        j().set(0L);
        jx().set(0L);
        l().set(0L);
        hp().set(0L);
        try {
            if (this.hp.length() != 0) {
                this.hp.setLength(0);
            }
        } catch (Exception unused) {
        }
        try {
            if (this.f27637l.length() != 0) {
                this.f27637l.setLength(0);
            }
        } catch (Exception unused2) {
        }
    }

    public StringBuffer as() {
        return this.f27637l;
    }

    public AtomicLong b() {
        return this.vv;
    }

    public AtomicLong cx() {
        return this.xs;
    }

    public AtomicLong d() {
        return this.ns;
    }

    public AtomicLong di() {
        return this.ec;
    }

    public AtomicLong dy() {
        return this.wv;
    }

    public AtomicLong e() {
        return this.f27644u;
    }

    public AtomicLong eb() {
        return this.f27634e;
    }

    public AtomicLong ec() {
        return this.zy;
    }

    public AtomicLong gu() {
        return this.f27642r;
    }

    public AtomicLong hp() {
        return this.f27638ms;
    }

    public AtomicLong hq() {
        return this.f27632b;
    }

    public AtomicLong j() {
        return this.pu;
    }

    public AtomicLong jl() {
        return this.jx;
    }

    public AtomicLong jx() {
        return this.ky;
    }

    public AtomicLong k() {
        return this.eb;
    }

    public AtomicLong ky() {
        return this.dy;
    }

    public AtomicLong l() {
        return this.xh;
    }

    public AtomicLong lv() {
        return this.hq;
    }

    public StringBuffer ms() {
        return this.hp;
    }

    public AtomicLong n() {
        return this.f27645v;
    }

    public AtomicLong ns() {
        return this.f27640o;
    }

    public AtomicLong nu() {
        return this.di;
    }

    public AtomicLong o() {
        return this.sz;
    }

    public AtomicLong pu() {
        return this.nu;
    }

    public AtomicLong q() {
        return this.f27635j;
    }

    public AtomicLong r() {
        return this.ud;
    }

    public AtomicLong s() {
        return this.f27631a;
    }

    public AtomicLong sz() {
        return this.f27636k;
    }

    public AtomicLong u() {
        return this.f27641q;
    }

    public AtomicLong ud() {
        return this.f27639n;
    }

    public AtomicLong v() {
        return this.f27643s;
    }

    public AtomicLong vv() {
        return this.jl;
    }

    public AtomicLong w() {
        return this.f27633d;
    }

    public AtomicLong wv() {
        return this.cx;
    }

    public AtomicLong xh() {
        return this.lv;
    }

    public AtomicLong xs() {
        return this.gu;
    }

    public AtomicLong zy() {
        return this.f27646w;
    }

    public synchronized void hp(long j2, l lVar) {
        this.jx.getAndAdd(j2);
        this.f27635j.incrementAndGet();
        if (com.byazt.giz.hp.hp(lVar)) {
            this.zy.incrementAndGet();
        } else {
            if (com.byazt.giz.hp.l(lVar)) {
                this.f27645v.incrementAndGet();
            }
        }
    }

    public JSONObject hp(long j2, w wVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            long j3 = q().get();
            long j4 = 1;
            jSONObject.put("create_save_cost_ts_avg", (jl().get() * 1.0f) / (j3 == 0 ? 1L : j3));
            jSONObject.put("save_success_count", j3);
            long j5 = s().get();
            jSONObject.put("save_upload_cost_ts_avg", (zy().get() * 1.0f) / (j5 == 0 ? 1L : j5));
            jSONObject.put("will_send_count", j5);
            jSONObject.put("sdk_event_index", j2);
            jSONObject.put("sdk_send_success_count", this.f27633d.get());
            jSONObject.put("all_delete_count", k().get());
            jSONObject.put("success_delete_count", v().get());
            jSONObject.put("invalid_delete_count", u().get());
            jSONObject.put("will_save_count", xs().get());
            jSONObject.put("will_save_show_count", vv().get());
            jSONObject.put("save_success_show_count", ec().get());
            jSONObject.put("will_save_click_count", sz().get());
            jSONObject.put("save_success_click_count", n().get());
            jSONObject.put("did_send_count", e().get());
            jSONObject.put("did_send_distinct_count", cx().get());
            jSONObject.put("did_send_show_count", b().get());
            jSONObject.put("did_send_show_distinct_count", di().get());
            jSONObject.put("send_show_success_valid_count", o().get());
            jSONObject.put("send_show_success_invalid_count", ud().get());
            jSONObject.put("did_send_click_count", d().get());
            jSONObject.put("did_send_click_distinct_count", wv().get());
            jSONObject.put("send_click_success_valid_count", hq().get());
            jSONObject.put("send_click_success_invalid_count", nu().get());
            jSONObject.put("send_success_valid_count", ns().get());
            long j6 = eb().get();
            jSONObject.put("send_success_invalid_count", dy().get());
            jSONObject.put("send_fail_count", j6);
            jSONObject.put("before_save_count", gu().get());
            jSONObject.put("success_tm", j().get());
            jSONObject.put("queue_timeout_tm", jx().get());
            jSONObject.put("after_upload_tm", l().get());
            jSONObject.put("quit_tm", hp().get());
            long j7 = r().get();
            long j8 = pu().get();
            jSONObject.put("success_request_cost_ts_avg", (ky().get() * 1.0f) / (j7 == 0 ? 1L : j7));
            float f2 = xh().get() * 1.0f;
            if (j8 != 0) {
                j4 = j8;
            }
            jSONObject.put("fail_request_cost_ts_avg", f2 / j4);
            jSONObject.put("request_count", lv().get());
            jSONObject.put("request_success_count", j7);
            jSONObject.put("request_fail_count", j8);
            jSONObject.put("is_multi_process", wVar.gu());
            jSONObject.put("app_start_time", com.byazt.fxy.l.jx);
            jSONObject.put("app_first_time", com.byazt.fxy.l.f20200j);
            jSONObject.put("fail_code_list", this.hp.toString());
            jSONObject.put("delete_msg", this.f27637l.toString());
            j jVarJ = wVar.j();
            if (jVarJ != null) {
                jSONObject.put("is_debug", jVarJ.hp());
                s sVarJl = jVarJ.jl();
                if (sVarJl != null) {
                    jSONObject.put("is_plugin", sVarJl.s());
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
