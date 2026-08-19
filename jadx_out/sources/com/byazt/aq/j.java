package com.byazt.aq;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 403, 38})
/* loaded from: classes2.dex */
public class j {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f18071j = new Object();
    public Context hp;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public jx f18072l = new jx();

    /* renamed from: w, reason: collision with root package name */
    public int f18073w;

    public j(Context context, boolean z2, int i2) {
        this.hp = context;
        this.jx = z2;
        this.f18073w = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(org.json.JSONObject r12) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.aq.j.hp(org.json.JSONObject):void");
    }

    public jx jx() {
        return this.f18072l;
    }

    public void l() {
        try {
            String strHp = com.byazt.xh.j.hp(this.hp, 1, this.f18073w);
            if (TextUtils.isEmpty(strHp)) {
                com.byazt.xh.jx.l("TNCConfigHandler", "loadLocalConfigForOtherProcess, data empty");
                return;
            }
            jx jxVarL = l(new JSONObject(strHp));
            StringBuilder sb = new StringBuilder("loadLocalConfigForOtherProcess, config: ");
            sb.append(jxVarL == null ? "null" : jxVarL.toString());
            com.byazt.xh.jx.l("TNCConfigHandler", sb.toString());
            if (jxVarL != null) {
                this.f18072l = jxVarL;
            }
        } catch (Throwable th) {
            com.byazt.xh.jx.l("TNCConfigHandler", "loadLocalConfigForOtherProcess, except: " + th.getMessage());
        }
    }

    private jx l(JSONObject jSONObject) {
        try {
            jx jxVar = new jx();
            if (jSONObject.has("local_enable")) {
                jxVar.hp = jSONObject.getInt("local_enable") != 0;
            }
            if (jSONObject.has("probe_enable")) {
                jxVar.f18078l = jSONObject.getInt("probe_enable") != 0;
            }
            if (jSONObject.has("local_host_filter")) {
                JSONArray jSONArray = jSONObject.getJSONArray("local_host_filter");
                HashMap map = new HashMap();
                if (jSONArray.length() > 0) {
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        String string = jSONArray.getString(i2);
                        if (!TextUtils.isEmpty(string)) {
                            map.put(string, 0);
                        }
                    }
                }
                jxVar.jx = map;
            } else {
                jxVar.jx = null;
            }
            if (jSONObject.has("host_replace_map")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("host_replace_map");
                HashMap map2 = new HashMap();
                if (jSONObject2.length() > 0) {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String string2 = jSONObject2.getString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string2)) {
                            map2.put(next, string2);
                        }
                    }
                }
                jxVar.f18076j = map2;
            } else {
                jxVar.f18076j = null;
            }
            jxVar.f18082w = jSONObject.optInt("req_to_cnt", jxVar.f18082w);
            jxVar.f18074a = jSONObject.optInt("req_to_api_cnt", jxVar.f18074a);
            jxVar.eb = jSONObject.optInt("req_to_ip_cnt", jxVar.eb);
            jxVar.f18080s = jSONObject.optInt("req_err_cnt", jxVar.f18080s);
            jxVar.f18079q = jSONObject.optInt("req_err_api_cnt", jxVar.f18079q);
            jxVar.f18075e = jSONObject.optInt("req_err_ip_cnt", jxVar.f18075e);
            jxVar.gu = jSONObject.optInt("update_interval", jxVar.gu);
            jxVar.jl = jSONObject.optInt("update_random_range", jxVar.jl);
            jxVar.zy = jSONObject.optString("http_code_black", jxVar.zy);
            return jxVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void hp() {
        if (this.jx) {
            String string = com.byazt.rz.l.l(this.hp, eb.hp().hp(this.f18073w).hp(), 0).getString("tnc_config_str", null);
            if (TextUtils.isEmpty(string)) {
                com.byazt.xh.jx.l("TNCConfigHandler", "loadLocalConfig: no existed");
                return;
            }
            try {
                jx jxVarL = l(new JSONObject(string));
                if (jxVarL != null) {
                    this.f18072l = jxVarL;
                }
                StringBuilder sb = new StringBuilder("loadLocalConfig: ");
                sb.append(jxVarL == null ? "null" : jxVarL.toString());
                com.byazt.xh.jx.l("TNCConfigHandler", sb.toString());
            } catch (Throwable th) {
                com.byazt.xh.jx.l("TNCConfigHandler", "loadLocalConfig: except: " + th.getMessage());
            }
        }
    }
}
