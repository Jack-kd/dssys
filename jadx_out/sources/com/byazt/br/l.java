package com.byazt.br;

import android.content.Context;
import com.byakv.z.TTEncryptUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1662, 34})
/* loaded from: classes2.dex */
public class l extends com.byazt.lw.hp {
    public l(Context context, JSONObject jSONObject) {
        super(context, jSONObject);
    }

    public String hp(String[] strArr) throws JSONException {
        try {
            int[] dI0Result = TTEncryptUtils.getDI0Result(strArr);
            if (dI0Result == null || dI0Result.length <= 0) {
                return "";
            }
            JSONObject jSONObject = new JSONObject();
            for (int i2 = 0; i2 < dI0Result.length; i2++) {
                jSONObject.put(strArr[i2], dI0Result[i2]);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.byazt.lw.hp
    public String jx() {
        return "d_i0";
    }

    @Override // com.byazt.lw.hp
    public String l() {
        JSONArray jSONArrayOptJSONArray = this.f22790j.optJSONArray("path");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return "";
        }
        int length = jSONArrayOptJSONArray.length();
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            try {
                strArr[i2] = jSONArrayOptJSONArray.getString(i2);
            } catch (JSONException e2) {
                com.byazt.fg.hp.l("__kite" + jx() + "jsonArray parse error " + e2.getMessage());
            }
        }
        if (com.byazt.fg.hp.l()) {
            com.byazt.fg.hp.hp("__kite" + jx() + " plist size: " + length);
        }
        try {
            return hp(strArr);
        } catch (Exception e3) {
            if (e3.getCause() != null) {
                this.jx = e3.getCause().getMessage();
            } else {
                this.jx = e3.getMessage();
            }
            return "";
        }
    }
}
