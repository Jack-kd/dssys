package com.byazt.jdb;

import android.text.TextUtils;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.mp;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 169, 94})
/* loaded from: classes.dex */
public class eb {

    /* renamed from: l, reason: collision with root package name */
    public final mp f21359l;
    public volatile boolean hp = false;
    public String jx = "landingpage";

    /* renamed from: j, reason: collision with root package name */
    public long f21358j = 0;

    /* renamed from: w, reason: collision with root package name */
    public long f21362w = 0;

    /* renamed from: a, reason: collision with root package name */
    public long f21356a = 0;
    public long eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public long f21361s = 0;

    /* renamed from: q, reason: collision with root package name */
    public long f21360q = 0;

    /* renamed from: e, reason: collision with root package name */
    public AtomicInteger f21357e = new AtomicInteger(0);
    public boolean gu = false;
    public AtomicBoolean jl = new AtomicBoolean(false);

    public eb(mp mpVar) {
        this.f21359l = mpVar;
    }

    public void j() {
        if (this.jl.get() || !this.hp) {
            return;
        }
        j.hp(this.f21359l, this.jx, "load", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.eb.1
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("render_type", "ugen");
                if (eb.this.f21359l != null && com.byazt.la.e.s(eb.this.f21359l)) {
                    jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(eb.this.f21359l.hd()));
                }
                com.byazt.nwu.hp.hp(jSONObject2, eb.this.f21359l);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
                jSONObject.put("duration", Math.min(System.currentTimeMillis() - eb.this.f21360q, 600000L));
            }
        });
    }

    public void jx() {
        this.f21356a = System.currentTimeMillis();
        this.f21358j = System.currentTimeMillis();
    }

    public eb hp(boolean z2) {
        this.gu = z2;
        return this;
    }

    public void l() throws JSONException {
        if (this.hp) {
            return;
        }
        this.eb = System.currentTimeMillis();
        this.f21360q = System.currentTimeMillis();
        this.hp = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            mp mpVar = this.f21359l;
            if (mpVar != null && com.byazt.la.e.s(mpVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f21359l.hd()));
            }
        } catch (Exception unused) {
        }
        hp("load_start", jSONObject);
    }

    public void hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            mp mpVar = this.f21359l;
            if (mpVar != null && com.byazt.la.e.s(mpVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f21359l.hd()));
            }
        } catch (JSONException unused) {
        }
        hp("open_url_h5", jSONObject);
    }

    public void hp(int i2, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            mp mpVar = this.f21359l;
            if (mpVar != null && com.byazt.la.e.s(mpVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f21359l.hd()));
            }
            jSONObject.putOpt("code", Integer.valueOf(i2));
            jSONObject.putOpt("msg", str);
        } catch (JSONException unused) {
        }
        hp("load_fail", jSONObject);
    }

    public void hp(long j2) throws JSONException {
        if (this.jl.get()) {
            return;
        }
        this.jl.set(true);
        this.f21361s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        long j3 = this.f21361s - this.eb;
        try {
            jSONObject.putOpt("render_type", "ugen");
            jSONObject.put("net_work_duration", j2);
            mp mpVar = this.f21359l;
            if (mpVar != null && com.byazt.la.e.s(mpVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f21359l.hd()));
            }
        } catch (JSONException unused) {
        }
        hp("load_finish", jSONObject, Math.min(j3, 600000L));
    }

    public void hp(int i2) throws JSONException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f21362w = jCurrentTimeMillis;
        long jMax = jCurrentTimeMillis - Math.max(this.f21358j, this.f21356a);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_status", 2);
            jSONObject.put("max_scroll_percent", this.f21357e.get());
            jSONObject.put("is_slide", i2);
            jSONObject.putOpt("render_type", "ugen");
            mp mpVar = this.f21359l;
            if (mpVar != null && com.byazt.la.e.s(mpVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f21359l.hd()));
            }
        } catch (JSONException unused) {
        }
        hp("stay_page", jSONObject, Math.min(jMax, 600000L));
    }

    private void hp(String str, JSONObject jSONObject) throws JSONException {
        hp(str, jSONObject, -1L);
    }

    private void hp(String str, JSONObject jSONObject, long j2) throws JSONException {
        if (!this.gu || this.f21359l == null || TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject2 = null;
        if (jSONObject != null) {
            try {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                    if (j2 > 0) {
                        jSONObject3.put("duration", j2);
                    }
                } catch (JSONException unused) {
                }
                jSONObject2 = jSONObject3;
            } catch (JSONException unused2) {
            }
        }
        j.jx(this.f21359l, this.jx, str, jSONObject2);
    }
}
