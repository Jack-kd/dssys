package com.byazt.br;

import android.content.Context;
import android.text.TextUtils;
import com.byakv.z.TTEncryptUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1662, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.lw.hp {
    public hp(Context context, JSONObject jSONObject) {
        super(context, jSONObject);
    }

    public String hp(String str) {
        try {
            String dA0Result = TTEncryptUtils.getDA0Result(str);
            if (com.byazt.fg.hp.l()) {
                com.byazt.fg.hp.hp("__kite", "p：" + str + " r:" + dA0Result);
            }
            return !TextUtils.isEmpty(dA0Result) ? dA0Result : "";
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.byazt.lw.hp
    public String jx() {
        return "d_a0";
    }

    @Override // com.byazt.lw.hp
    public String l() throws JSONException {
        JSONArray jSONArrayOptJSONArray = this.f22790j.optJSONArray("path");
        if (jSONArrayOptJSONArray == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            try {
                String string = jSONArrayOptJSONArray.getString(i2);
                jSONObject.put(string, hp(string));
            } catch (Exception e2) {
                if (e2.getCause() != null) {
                    this.jx = e2.getCause().getMessage();
                } else {
                    this.jx = e2.getMessage();
                }
            }
        }
        return jSONObject.toString();
    }
}
