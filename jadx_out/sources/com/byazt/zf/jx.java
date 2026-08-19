package com.byazt.zf;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.lf.k;
import com.byazt.uhg.e;
import com.byazt.ymw.u;
import com.byazt.zf.hp;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 582, 30})
/* loaded from: classes3.dex */
public class jx extends hp {

    /* renamed from: s, reason: collision with root package name */
    public String f28405s;

    public jx(com.byazt.qg.hp hpVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        super(hpVar, str, str2, jSONObject, str3, str4);
        this.f28405s = "inspect_data";
    }

    @Override // com.byazt.zf.hp
    public void hp(Context context, String str, com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, Map<String, Object> map) {
    }

    public void j() {
        JSONObject jSONObject = this.f28400a;
        if (jSONObject == null) {
            return;
        }
        k.hp().j(jSONObject.toString(), this.f28400a.optString("req_id"));
    }

    @Override // com.byazt.zf.hp
    public void jx() {
        this.hp.hp(new Runnable() { // from class: com.byazt.zf.jx.1
            @Override // java.lang.Runnable
            public void run() {
                jx.this.j();
            }
        });
    }

    @Override // com.byazt.zf.hp
    public void l(Context context, String str, com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, Map<String, Object> map) {
    }

    public JSONObject w() throws JSONException {
        int i2;
        JSONArray jSONArrayOptJSONArray;
        try {
            i2 = this.hp.l().get();
            jSONArrayOptJSONArray = this.f28400a.optJSONArray(this.f28405s);
        } catch (Exception unused) {
        }
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        for (int i3 = 0; i3 < length; i3++) {
            JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i3);
            int iOptInt = jSONObject.optInt("jump_number", -1);
            if (iOptInt != -1 && iOptInt == i2) {
                return jSONObject;
            }
        }
        return null;
    }

    @Override // com.byazt.zf.hp
    public void hp(String str, String str2) {
    }

    @Override // com.byazt.zf.hp
    public void hp(JSONObject jSONObject, String str, e eVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2) {
    }

    @Override // com.byazt.zf.hp
    public boolean hp(WebView webView) {
        return true;
    }

    @Override // com.byazt.zf.hp
    public boolean hp(e eVar) {
        return true;
    }

    @Override // com.byazt.zf.hp
    public void hp() throws JSONException {
        try {
            this.f28400a.putOpt("req_id", this.jx);
            this.f28400a.put(this.f28405s, new JSONArray());
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.zf.hp
    public void hp(String str) throws JSONException {
        int i2 = this.hp.l().get();
        JSONArray jSONArrayOptJSONArray = this.f28400a.optJSONArray(this.f28405s);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("jump_number", i2);
            jSONObject.put("jump_url", str);
            jSONArrayOptJSONArray.put(jSONObject);
            this.f28400a.put("inspect_data", jSONArrayOptJSONArray);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.zf.hp
    public void hp(com.byazt.qg.l lVar, WebResourceResponse webResourceResponse, e eVar, hp.InterfaceC0435hp interfaceC0435hp) throws JSONException {
        Uri uriHp = lVar.hp();
        if (uriHp != null) {
            try {
                String string = uriHp.toString();
                String lowerCase = "unknown";
                if (eVar != null && eVar.l() != null) {
                    lowerCase = eVar.l().trim().toLowerCase();
                }
                JSONObject jSONObjectW = w();
                if (jSONObjectW == null) {
                    u.l("weblp", "error pageCountJson is null");
                } else {
                    JSONArray jSONArrayOptJSONArray = jSONObjectW.optJSONArray(lowerCase);
                    if (jSONArrayOptJSONArray == null) {
                        jSONArrayOptJSONArray = new JSONArray();
                    }
                    jSONArrayOptJSONArray.put(string);
                    jSONObjectW.putOpt(lowerCase, jSONArrayOptJSONArray);
                }
            } catch (Exception e2) {
                u.hp("weblp", "error", e2);
            }
        }
        interfaceC0435hp.hp(false, null);
    }
}
