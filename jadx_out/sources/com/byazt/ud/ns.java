package com.byazt.ud;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 166})
/* loaded from: classes3.dex */
public class ns implements com.byazt.ii.hp {
    public final String hp;

    public ns(String str) {
        this.hp = str;
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp;
        if (map == null || map.size() <= 0 || (objHp = hp(this.hp, map.get("default_key"))) == JSONObject.NULL) {
            return null;
        }
        return objHp;
    }

    @Override // com.byazt.ii.hp
    public String l() {
        return this.hp;
    }

    public String toString() {
        return "VariableNode [literals=" + this.hp + "]";
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return com.byazt.ki.a.VARIABLE;
    }

    public Object hp(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return hp(str.split("\\."), 0, jSONObject);
    }

    private Object hp(String[] strArr, int i2, JSONObject jSONObject) throws NumberFormatException {
        Object objOpt;
        if (strArr != null && strArr.length > 0 && i2 < strArr.length && jSONObject != null) {
            String str = strArr[i2];
            int iIndexOf = str.indexOf("[");
            int iIndexOf2 = str.indexOf("]");
            if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf <= iIndexOf2) {
                String strSubstring = str.substring(0, iIndexOf);
                try {
                    int i3 = Integer.parseInt(str.substring(iIndexOf + 1, iIndexOf2));
                    Object objOpt2 = jSONObject.opt(strSubstring);
                    objOpt = objOpt2 instanceof JSONArray ? ((JSONArray) objOpt2).opt(i3) : null;
                } catch (NumberFormatException unused) {
                    return null;
                }
            } else {
                objOpt = jSONObject.opt(str);
            }
            if (i2 == strArr.length - 1) {
                return objOpt;
            }
            if (objOpt instanceof String) {
                try {
                    return hp(strArr, i2 + 1, new JSONObject((String) objOpt));
                } catch (JSONException unused2) {
                    return objOpt;
                }
            }
            if (objOpt instanceof JSONObject) {
                return hp(strArr, i2 + 1, (JSONObject) objOpt);
            }
        }
        return null;
    }
}
