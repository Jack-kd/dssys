package com.byazt.nqo;

import android.text.TextUtils;
import com.byazt.gr.hp;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1168, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.gr.hp {
    public l() {
    }

    public static l l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        l lVar = new l();
        lVar.hp(jSONObject.optString("name"));
        lVar.l(jSONObject.optString(cl.f49059n));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    hp.C0258hp c0258hp = new hp.C0258hp();
                    c0258hp.hp(jSONObjectOptJSONObject.optString("url"));
                    c0258hp.l(jSONObjectOptJSONObject.optString(TKDownloadReason.KSAD_TK_MD5));
                    c0258hp.hp(jSONObjectOptJSONObject.optInt("level"));
                    arrayList.add(c0258hp);
                }
            }
        }
        lVar.hp(arrayList);
        if (lVar.a()) {
            return lVar;
        }
        return null;
    }

    public static l w(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return l(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.byazt.gr.hp
    public boolean a() {
        return (TextUtils.isEmpty(jx()) || TextUtils.isEmpty(l())) ? false : true;
    }

    @Override // com.byazt.gr.hp
    public String s() throws JSONException {
        if (!a()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", l());
            jSONObject.putOpt(cl.f49059n, jx());
            JSONArray jSONArray = new JSONArray();
            if (getResources() != null) {
                for (hp.C0258hp c0258hp : getResources()) {
                    if (c0258hp != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("url", c0258hp.hp());
                        jSONObject2.putOpt(TKDownloadReason.KSAD_TK_MD5, c0258hp.l());
                        jSONObject2.putOpt("level", Integer.valueOf(c0258hp.jx()));
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public l(com.byazt.gr.hp hpVar) {
        if (hpVar != null) {
            hp(hpVar.l());
            l(hpVar.jx());
            hp(hpVar.getResources());
        }
    }
}
