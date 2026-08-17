package com.byazt.zf;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.rz.PluginConstants;
import com.byazt.uhg.e;
import com.byazt.ymw.vv;
import com.byazt.zn.v;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 582, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f28400a;
    public String eb;
    public com.byazt.qg.hp hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f28402l;

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f28401j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f28403w = new AtomicBoolean(false);

    /* renamed from: com.byazt.zf.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0435hp {
        void hp(boolean z2, Map<String, Object> map);
    }

    public hp(com.byazt.qg.hp hpVar, String str, String str2, JSONObject jSONObject, String str3, String str4) throws JSONException {
        this.hp = hpVar;
        this.f28402l = str;
        this.eb = str4;
        this.jx = str2;
        JSONObject jSONObject2 = new JSONObject();
        this.f28400a = jSONObject2;
        try {
            if (this instanceof l) {
                jSONObject2.putOpt("log_extra", str3);
                this.f28400a.putOpt("resource_type", "union");
                this.f28400a.putOpt("ts", Long.valueOf(System.currentTimeMillis() / 1000));
            } else if (this instanceof jx) {
                jSONObject2.putOpt("timestamp", Long.valueOf(System.currentTimeMillis() / 1000));
                this.f28400a.putOpt("ad_id", jSONObject.optString("ad_id"));
                this.f28400a.putOpt("customer_id", jSONObject.optString("customer_id"));
            }
            this.f28400a.putOpt("cid", str);
            this.f28400a.putOpt("ac", Integer.valueOf(vv.jx(sz.getContext())));
            this.f28400a.putOpt("app_name", s.u().cx());
            this.f28400a.putOpt("app_id", s.u().ns());
            this.f28400a.putOpt("app_version", com.byazt.ij.hp.w());
            this.f28400a.putOpt("sdk_version", d.f21860w);
            this.f28400a.putOpt(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            this.f28400a.putOpt("platform", AnalyticsConstants.SDK_TYPE);
            this.f28400a.putOpt("device_id", v.hp());
            this.f28400a.putOpt("web_url", str4);
        } catch (JSONException unused) {
        }
        hp(str, str2);
    }

    public abstract void hp();

    public abstract void hp(Context context, String str, com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, Map<String, Object> map);

    public abstract void hp(com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, InterfaceC0435hp interfaceC0435hp);

    public abstract void hp(String str);

    public abstract void hp(String str, String str2);

    public abstract void hp(JSONObject jSONObject, String str, e eVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2);

    public abstract boolean hp(WebView webView);

    public abstract boolean hp(e eVar);

    public abstract void jx();

    public void l() {
        hp();
    }

    public abstract void l(Context context, String str, com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, Map<String, Object> map);
}
