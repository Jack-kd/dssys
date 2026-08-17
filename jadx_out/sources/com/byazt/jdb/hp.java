package com.byazt.jdb;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.jz.sz;
import com.byazt.rx.BaseConstants;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 169, 28})
/* loaded from: classes.dex */
public class hp implements com.byazt.ai.l {
    public static final AtomicLong jx = new AtomicLong(0);

    /* renamed from: a, reason: collision with root package name */
    public String f21363a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.dhy.hp f21364e;
    public String eb;
    public String gu;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f21365j;
    public long jl;

    /* renamed from: k, reason: collision with root package name */
    public AtomicBoolean f21366k = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public final JSONObject f21367l;

    /* renamed from: q, reason: collision with root package name */
    public String f21368q;

    /* renamed from: s, reason: collision with root package name */
    public String f21369s;

    /* renamed from: w, reason: collision with root package name */
    public String f21370w;
    public long zy;

    @com.byazt.kj.hp(hp = {0, 1, 169, 170})
    /* renamed from: com.byazt.jdb.hp$hp, reason: collision with other inner class name */
    public static final class C0281hp {

        /* renamed from: a, reason: collision with root package name */
        public String f21371a;

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.rr.hp f21372e;
        public String eb;
        public com.byazt.dhy.hp gu;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f21373j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f21374l;

        /* renamed from: q, reason: collision with root package name */
        public JSONObject f21375q;

        /* renamed from: s, reason: collision with root package name */
        public String f21376s;

        /* renamed from: w, reason: collision with root package name */
        public String f21377w;

        public C0281hp a(String str) {
            this.eb = str;
            return this;
        }

        public C0281hp eb(String str) {
            this.f21376s = str;
            return this;
        }

        public C0281hp j(String str) {
            this.f21377w = str;
            return this;
        }

        public C0281hp jx(String str) {
            this.f21373j = str;
            return this;
        }

        public C0281hp l(String str) {
            this.jx = str;
            return this;
        }

        public C0281hp w(String str) {
            this.f21371a = str;
            return this;
        }

        public C0281hp hp(String str) {
            this.f21374l = str;
            return this;
        }

        public C0281hp hp(JSONObject jSONObject) {
            if (jSONObject == null) {
                return this;
            }
            this.f21375q = jSONObject;
            return this;
        }

        public void hp(com.byazt.dhy.hp hpVar) {
            if (com.byazt.lf.w.hp(this.jx, 1.0d)) {
                if (this.f21377w != null) {
                    com.byazt.mb.jx.jx().hp(this.jx, this.f21371a, this.f21376s, (JSONObject) null, this.f21377w);
                }
                this.gu = hpVar;
                hp hpVar2 = new hp(this);
                try {
                    com.byazt.rr.hp hpVar3 = this.f21372e;
                    if (hpVar3 != null) {
                        hpVar3.hp(hpVar2.f21367l);
                    } else {
                        new com.byazt.rr.l().hp(hpVar2.f21367l);
                    }
                } catch (Throwable unused) {
                }
                com.byazt.lf.l.hp(hpVar2, this.jx);
            }
        }
    }

    public hp(C0281hp c0281hp) {
        this.f21365j = new JSONObject();
        this.hp = TextUtils.isEmpty(c0281hp.hp) ? UUID.randomUUID().toString() : c0281hp.hp;
        this.f21364e = c0281hp.gu;
        this.gu = c0281hp.f21377w;
        this.f21370w = c0281hp.f21374l;
        this.f21363a = c0281hp.jx;
        if (TextUtils.isEmpty(c0281hp.f21373j)) {
            this.eb = "app_union";
        } else {
            this.eb = c0281hp.f21373j;
        }
        this.f21369s = c0281hp.f21371a;
        this.f21368q = c0281hp.eb;
        this.f21365j = c0281hp.f21375q = c0281hp.f21375q != null ? c0281hp.f21375q : new JSONObject();
        this.zy = System.currentTimeMillis();
        this.f21367l = new JSONObject();
        try {
            eb();
        } catch (Exception unused) {
        }
    }

    private void eb() {
        this.jl = jx.incrementAndGet();
    }

    private void s() throws JSONException {
        this.f21367l.putOpt("tag", this.f21370w);
        this.f21367l.putOpt("label", this.f21363a);
        this.f21367l.putOpt(PointParamKey.CATEGORY, this.eb);
        if (!TextUtils.isEmpty(this.f21369s)) {
            try {
                this.f21367l.putOpt(f.a.f3244d, Long.valueOf(Long.parseLong(this.f21369s)));
            } catch (NumberFormatException unused) {
                this.f21367l.putOpt(f.a.f3244d, 0L);
            }
        }
        if (!TextUtils.isEmpty(this.f21368q)) {
            this.f21367l.putOpt("ext_value", this.f21368q);
        }
        if (!TextUtils.isEmpty(this.gu)) {
            this.f21367l.putOpt("log_extra", this.gu);
        }
        if (!TextUtils.equals(this.f21363a, "pangle_live_sdk_monitor")) {
            this.f21367l.putOpt(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
        }
        this.f21367l.putOpt("nt", Integer.valueOf(vv.jx(sz.getContext())));
        this.f21367l.putOpt("tob_ab_sdk_version", com.byazt.jz.s.u().m());
        Iterator<String> itKeys = this.f21365j.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.f21367l.putOpt(next, this.f21365j.opt(next));
        }
    }

    public boolean a() {
        JSONObject jSONObject = this.f21367l;
        if (jSONObject == null) {
            return false;
        }
        String strOptString = jSONObject.optString("label");
        if (!TextUtils.isEmpty(strOptString)) {
            return jx.hp.contains(strOptString);
        }
        if (TextUtils.isEmpty(this.f21363a)) {
            return false;
        }
        return jx.hp.contains(this.f21363a);
    }

    @Override // com.byazt.ai.l
    public long hp() {
        return this.zy;
    }

    public String j() {
        return this.hp;
    }

    public String jx() {
        if (!TextUtils.isEmpty(this.f21363a)) {
            return this.f21363a;
        }
        JSONObject jSONObject = this.f21367l;
        return jSONObject != null ? jSONObject.optString("label") : "";
    }

    @Override // com.byazt.ai.l
    public long l() {
        return this.jl;
    }

    public JSONObject w() {
        if (this.f21366k.get()) {
            return this.f21367l;
        }
        try {
            s();
            com.byazt.dhy.hp hpVar = this.f21364e;
            if (hpVar != null) {
                hpVar.onSend(this.f21367l);
            }
            hp(this.f21367l);
            this.f21366k.set(true);
        } catch (Throwable unused) {
        }
        return this.f21367l;
    }

    @Override // com.byazt.ai.l
    public JSONObject hp(String str) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObjectW = w();
        try {
            String strOptString = jSONObjectW.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject = new JSONObject();
                if (sz.l().dy() && !TextUtils.isEmpty(str)) {
                    jSONObject.put("will_save_labels", str);
                }
            } else {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                if (sz.l().dy() && TextUtils.isEmpty(jSONObject2.optString("will_save_labels")) && !TextUtils.isEmpty(str)) {
                    jSONObject2.put("will_save_labels", str);
                }
                jSONObject = jSONObject2;
            }
            String strEb = com.byazt.yx.l.hp().eb();
            if (strEb != null) {
                jSONObject.putOpt("live_plugin_version", strEb.replaceAll("\\.", ""));
            }
            if (com.byazt.jz.s.u().a()) {
                jSONObject.putOpt("first_of_two", 1);
            }
            jSONObjectW.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
        } catch (Exception unused) {
        }
        return jSONObjectW;
    }

    private void hp(JSONObject jSONObject) throws JSONException {
        String str;
        try {
            if (this.jl != 0) {
                String strOptString = jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                if (!TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    if (jSONObject2.optInt("sdk_event_index") == 0) {
                        str = BaseConstants.EVENT_LABEL_AD_EXTRA_DATA;
                        jSONObject2.put("sdk_event_index", this.jl);
                    } else {
                        str = BaseConstants.EVENT_LABEL_AD_EXTRA_DATA;
                    }
                    if (jSONObject2.optInt("sdk_event_self_count") == 0) {
                        jSONObject2.put("sdk_event_self_count", com.byazt.giz.hp.hp(this.f21363a));
                    }
                    jSONObject2.put("create_ts", System.currentTimeMillis());
                    jSONObject2.put("csj_type", com.byazt.jz.s.u().as() ? 1 : 0);
                    jSONObject2.put("sdk_boost_type", com.byazt.wu.hp.w());
                    try {
                        jSONObject2.put("device_score", Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", com.byazt.el.hp.j())));
                    } catch (Throwable unused) {
                    }
                    jSONObject2.put("sdk_session_id", com.byazt.lf.l.hp);
                    if (!TextUtils.isEmpty(ky.f28539q)) {
                        jSONObject2.put("wrong_stats_url", ky.f28539q);
                    }
                    if (!TextUtils.isEmpty(ky.f28535e)) {
                        jSONObject2.put("wrong_applog_url", ky.f28535e);
                    }
                    com.byazt.xy.hp.hp().hp(jSONObject2);
                    jSONObject.put(str, jSONObject2.toString());
                    return;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("sdk_event_index", this.jl);
                jSONObject3.put("sdk_event_self_count", com.byazt.giz.hp.hp(this.f21363a));
                jSONObject3.put("sdk_session_id", com.byazt.lf.l.hp);
                jSONObject3.put("csj_type", com.byazt.jz.s.u().as() ? 1 : 0);
                jSONObject3.put("sdk_boost_type", com.byazt.wu.hp.w());
                try {
                    jSONObject3.put("device_score", Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", com.byazt.el.hp.j())));
                } catch (Throwable unused2) {
                }
                jSONObject3.put("create_ts", System.currentTimeMillis());
                if (!TextUtils.isEmpty(ky.f28539q)) {
                    jSONObject3.put("wrong_stats_url", ky.f28539q);
                }
                if (!TextUtils.isEmpty(ky.f28535e)) {
                    jSONObject3.put("wrong_applog_url", ky.f28535e);
                }
                com.byazt.xy.hp.hp().hp(jSONObject3);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject3.toString());
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }
}
