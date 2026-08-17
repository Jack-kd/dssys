package com.byazt.oo;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.pg.jl;
import com.byazt.rz.PluginConstants;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.ym.j;
import com.byazt.ymw.a;
import com.byazt.ymw.vv;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.ky;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bv;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1356, 34})
/* loaded from: classes3.dex */
public class l extends eb {

    @com.byazt.kj.hp(hp = {0, 1, 1356, 123})
    public static class hp {
        public static final l hp = new l();
    }

    private JSONObject j() {
        JSONObject jSONObject = new JSONObject();
        try {
            j.getService("device_info_new");
            com.byazt.pg.jx jxVar = (com.byazt.pg.jx) j.getService("embed_applog");
            jSONObject.put("oaid", jxVar.getOAID(false));
            jSONObject.put("conn_type", vv.l(sz.getContext()));
            jSONObject.put(bv.f48923x, 1);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("sdk_version", d.f21860w);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            jSONObject.put("package_name", ky.s());
            jSONObject.put("app_version", ky.e());
            jSONObject.put("app_code", ky.q());
            jSONObject.put("vendor", Build.MANUFACTURER);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            String strNs = s.u().ns();
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("app_id", strNs);
            jSONObject.put("req_sign", a.l(strNs != null ? strNs.concat(String.valueOf(jCurrentTimeMillis)).concat(d.f21860w) : ""));
            jSONObject.put("channel", d.f21859s);
            jSONObject.put("applog_did", jxVar.getDid());
            jSONObject.put("imei", DeviceUtils.hp((Boolean) null));
            jSONObject.put(n.f36449l, 1);
            jSONObject.put("device_abi", com.byazt.xgv.l.hp());
            jSONObject.put("plugins", w());
            jSONObject.put("csj_type", s.u().as() ? 1 : 0);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static l l() {
        return hp.hp;
    }

    private JSONObject w() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectPu = s.u().pu();
        boolean zPp = sz.l().pp();
        if (jSONObjectPu != null) {
            Iterator<String> itKeys = jSONObjectPu.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!TextUtils.isEmpty(next)) {
                    JSONObject jSONObjectOptJSONObject = jSONObjectPu.optJSONObject(next);
                    if (jSONObjectOptJSONObject != null) {
                        jSONObjectOptJSONObject.put("plugin_update_network", s.u().o().hp(next));
                    }
                    if (zPp && next.equals("com.byted.live.lite")) {
                        jSONObject.putOpt(jx.l(), jSONObjectOptJSONObject);
                    } else {
                        jSONObject.putOpt(next, jSONObjectOptJSONObject);
                    }
                }
            }
        }
        return jSONObject;
    }

    public void jx() {
        if (vv.hp(sz.getContext())) {
            w.l(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
        wVarL.hp(ky.gu("/api/ad/union/sdk/settings/plugins"));
        wVarL.l("User-Agent", ((jl) j.getService("device_info_new")).getWebViewUA(false));
        wVarL.hp(com.byazt.ymw.hp.hp(j()));
        wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.oo.l.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (lVar == null || !lVar.q() || TextUtils.isEmpty(lVar.w())) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(lVar.w());
                    if (jSONObject.optInt("cypher") == 3) {
                        String strJx = com.byazt.ymw.hp.jx(jSONObject.optString("message"));
                        if (TextUtils.isEmpty(strJx)) {
                            return;
                        }
                        jx.hp().hp(new JSONObject(strJx).optJSONArray("plugins"));
                    }
                } catch (JSONException unused) {
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                try {
                    Iterator<String> itKeys = s.u().pu().keys();
                    while (itKeys.hasNext()) {
                        jx.hp().hp(itKeys.next(), 1007);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private l() {
        super("PluginSettingsFetchTask");
    }
}
