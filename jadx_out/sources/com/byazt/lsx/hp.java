package com.byazt.lsx;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byazt.rz.PluginConstants;
import com.byazt.zg.n;
import com.byazt.zg.ns;
import com.byazt.zg.nu;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.ai.l {
    public static final String jx = UUID.randomUUID().toString();
    public final String hp;

    /* renamed from: l, reason: collision with root package name */
    public final JSONObject f22768l;

    public hp(String str, JSONObject jSONObject) {
        this.hp = str;
        this.f22768l = jSONObject;
    }

    private static void jx(JSONObject jSONObject, j jVar) throws JSONException {
        if (jSONObject == null || jVar == null) {
            return;
        }
        if ("media_fill_fail".equals(jVar.hp) || "media_fill".equals(jVar.hp) || "bidding_adm_load".equals(jVar.hp) || "bidding_adm_load_fail".equals(jVar.hp) || "mediation_fill".equals(jVar.hp) || "mediation_request_end".equals(jVar.hp) || "mediation_video_cached".equals(jVar.hp) || "get_config_final".equals(jVar.hp) || "sdk_init_end".equals(jVar.hp) || "sdk_backstage".equals(jVar.hp) || "mediation_request".equals(jVar.hp) || "rit_map_query".equals(jVar.hp) || "return_bidding_result".equals(jVar.hp)) {
            jSONObject.putOpt("duration", Long.valueOf(jVar.ec));
        }
    }

    @Override // com.byazt.ai.l
    public JSONObject hp(String str) {
        return this.f22768l;
    }

    @Override // com.byazt.ai.l
    public long l() {
        JSONObject jSONObject = this.f22768l;
        if (jSONObject == null) {
            return 0L;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.has("params") ? this.f22768l.optJSONObject("params") : this.f22768l;
        if (jSONObjectOptJSONObject == null) {
            return 0L;
        }
        String strOptString = jSONObjectOptJSONObject.optString("event_extra");
        if (TextUtils.isEmpty(strOptString)) {
            return 0L;
        }
        try {
            return new JSONObject(strOptString).optLong("eventIndex");
        } catch (JSONException unused) {
            return 0L;
        }
    }

    public String toString() {
        return "AdEvent{localId='" + this.hp + "', event=" + this.f22768l + '}';
    }

    @Override // com.byazt.ai.l
    public long hp() {
        JSONObject jSONObject = this.f22768l;
        if (jSONObject == null) {
            return 0L;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.has("params") ? this.f22768l.optJSONObject("params") : this.f22768l;
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optLong("timestamp");
        }
        return 0L;
    }

    public static JSONObject hp(j jVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("device_info", n.hp());
            if (jVar != null) {
                jSONObject2.putOpt("type", jVar.hp);
                jSONObject2.putOpt("link_id", jVar.f22774l);
                jSONObject2.putOpt(MediationConstant.EXTRA_ADN_NAME, jVar.jx);
                jSONObject2.putOpt("ad_sdk_version", jVar.f22772j);
                jSONObject2.putOpt("rit_cpm", jVar.eb);
                if (!TextUtils.isEmpty(jVar.f22777s)) {
                    jSONObject2.putOpt("discount", jVar.f22777s);
                }
                jSONObject2.putOpt("mediation_rit", jVar.f22769a);
                jSONObject2.putOpt("adtype", Integer.valueOf(jVar.vv));
                jSONObject2.putOpt("error_msg", jVar.jl);
                jSONObject2.putOpt("error_code", Integer.valueOf(jVar.f22779v));
                jSONObject2.putOpt("creative_id", jVar.zy);
                jSONObject2.putOpt("exchange_rate", jVar.ns);
                jSONObject2.putOpt("msdk_session_id", jx);
                jSONObject2.putOpt("is_trusteeship_monetize", Integer.valueOf(com.byazt.di.l.l().l()));
                String strL = com.byazt.ky.hp.hp().l(com.byazt.di.l.l().xs());
                if (strL != null) {
                    jSONObject2.putOpt("app_abtest", strL);
                }
                hp(jSONObject2, jVar);
                jx(jSONObject2, jVar);
                l(jVar, jSONObject);
                if (!"total_load_fail".equalsIgnoreCase(jVar.hp) && !"adapter_request_fail".equalsIgnoreCase(jVar.hp)) {
                    jSONObject2.putOpt("req_id", TextUtils.isEmpty(jVar.f22780w) ? jVar.f22774l + "_" + jVar.f22769a : jVar.f22780w);
                }
                jSONObject2.putOpt(bv.f48888O, com.byazt.di.l.l().jl());
                com.byazt.tgw.hp hpVarHp = com.byazt.di.l.l().hp(MediationConstant.ADN_PANGLE);
                if (hpVarHp != null) {
                    jSONObject2.putOpt("app_id", hpVarHp.l());
                } else {
                    jSONObject2.putOpt("app_id", com.byazt.di.hp.jl().zy());
                }
                long j2 = jVar.f22771e;
                if (j2 != 0) {
                    jSONObject2.putOpt("waterfall_id", Long.valueOf(j2));
                }
                if (!TextUtils.isEmpty(jVar.gu)) {
                    jSONObject2.putOpt(cl.f49059n, jVar.gu);
                }
                Map<String, Object> map = jVar.cx;
                if (map != null && map.size() > 0) {
                    for (String str : jVar.cx.keySet()) {
                        Object obj = jVar.cx.get(str);
                        if (!TextUtils.isEmpty(str) && obj != null) {
                            jSONObject2.putOpt(str, obj);
                        }
                    }
                }
            }
            if (jSONObject != null) {
                String strL2 = com.byazt.ky.hp.hp().l(com.byazt.di.l.l().vv());
                if (strL2 != null) {
                    jSONObject.putOpt("simple_app_abtest", strL2);
                }
                jSONObject.putOpt("has_server_cache_config", Boolean.valueOf(com.byazt.di.l.l().ec()));
            }
            jSONObject2.putOpt("event_extra", jSONObject != null ? jSONObject.toString() : null);
            jSONObject2.putOpt("app_version", nu.jx());
            jSONObject2.putOpt("conn_type", Integer.valueOf(ns.l()));
            l(jSONObject2, jVar);
            jSONObject2.putOpt("mediation_sdk_version", com.byazt.rt.l.l());
            jSONObject2.putOpt(PluginConstants.KEY_PLUGIN_VERSION, com.byazt.rt.l.j());
            try {
                jSONObject2.put("device_score", Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", com.byazt.el.hp.j())));
                return jSONObject2;
            } catch (NumberFormatException unused) {
                jSONObject2.put("device_score", -1);
                return jSONObject2;
            }
        } catch (Throwable th) {
            try {
                hp(jSONObject2, th, jVar);
            } catch (Throwable unused2) {
            }
            return jSONObject2;
        }
    }

    private static void l(JSONObject jSONObject, j jVar) throws JSONException {
        if (jSONObject == null || jVar == null) {
            jSONObject.putOpt("timestamp", Long.valueOf(System.currentTimeMillis()));
            return;
        }
        if (TextUtils.equals(jVar.hp, "sdk_init")) {
            jSONObject.putOpt("timestamp", Long.valueOf(com.byazt.bki.e.l()));
            return;
        }
        if (TextUtils.equals(jVar.hp, "start_up")) {
            jSONObject.putOpt("timestamp", Long.valueOf(com.byazt.bki.e.jx()));
        } else if (jVar.hp() != -1) {
            jSONObject.putOpt("timestamp", Long.valueOf(jVar.hp()));
        } else {
            jSONObject.putOpt("timestamp", Long.valueOf(System.currentTimeMillis()));
        }
    }

    public String jx() {
        if (TextUtils.isEmpty(this.hp) || this.f22768l == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("localId", this.hp);
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, this.f22768l);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    private static void l(j jVar, JSONObject jSONObject) {
        if (jVar != null) {
            if ("media_request".equals(jVar.hp) || "media_fill".equals(jVar.hp) || "media_fill_fail".equals(jVar.hp) || "get_bidding_adm_to_adn".equals(jVar.hp) || "bidding_adm_load".equals(jVar.hp) || "bidding_adm_load_fail".equals(jVar.hp) || "bidding_win_event".equals(jVar.hp) || "media_show_is_ready".equals(jVar.hp) || "media_will_show".equals(jVar.hp) || "media_show".equals(jVar.hp) || "media_show_fail".equals(jVar.hp) || "media_show_listen".equals(jVar.hp) || "media_show_fail_listen".equals(jVar.hp) || "media_click_listen".equals(jVar.hp) || "sdk_init".equals(jVar.hp) || "sdk_init_end".equals(jVar.hp) || "get_config_start".equals(jVar.hp) || "get_config_final".equals(jVar.hp) || "mediation_request".equals(jVar.hp) || "mediation_fill".equals(jVar.hp) || "mediation_request_end".equals(jVar.hp) || "total_load_fail".equals(jVar.hp)) {
                jVar.hp("grouping_params", com.byazt.bcj.l.hp(com.byazt.di.hp.jl().n()));
                JSONObject jSONObjectL = com.byazt.bcj.l.l(com.byazt.di.hp.jl().n());
                if (jSONObjectL != null) {
                    jVar.hp("user_defined_grouping_params", jSONObjectL.toString());
                } else {
                    jVar.hp("user_defined_grouping_params", null);
                }
                com.byazt.ney.j.hp(jVar.f22776q, jVar.hp, jVar.vv, jSONObject);
            }
        }
    }

    private static void hp(JSONObject jSONObject, j jVar) throws JSONException {
        if (jSONObject == null || jVar == null) {
            return;
        }
        int i2 = jVar.sz;
        if (i2 != -1) {
            jSONObject.putOpt("result", Integer.valueOf(i2));
        }
        int i3 = jVar.f22775n;
        if (i3 != -1) {
            jSONObject.putOpt("status_code", Integer.valueOf(i3));
        }
        String str = jVar.xs;
        if (str != null) {
            jSONObject.putOpt("show_sort", str);
        }
        String str2 = jVar.f22778u;
        if (str2 != null) {
            jSONObject.putOpt("load_sort", str2);
        }
        String str3 = jVar.f22773k;
        if (str3 != null) {
            jSONObject.putOpt("req_bidding_type", str3);
        }
        jSONObject.putOpt(MediationConstant.KEY_GM_PRIME_RIT, jVar.f22776q);
    }

    private static void hp(JSONObject jSONObject, Throwable th, j jVar) throws JSONException {
        if (jSONObject != null && th != null) {
            String strOptString = jSONObject.optString("event_extra");
            if (!TextUtils.isEmpty(strOptString)) {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                jSONObject2.putOpt("err_msg_comm", th.toString());
                jSONObject.putOpt("event_extra", jSONObject2.toString());
            }
        }
        if (jVar == null || th == null) {
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.putOpt("comm_eventId", jVar.cx.get("event_id"));
        jSONObject3.putOpt("err_msg_comm", th.toString());
    }
}
