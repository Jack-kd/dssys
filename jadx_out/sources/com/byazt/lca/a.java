package com.byazt.lca;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.rz.PluginConstants;
import com.byazt.ymw.u;
import com.byazt.zn.b;
import com.byazt.zn.e;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 957, 54})
/* loaded from: classes3.dex */
public class a {
    public static volatile a hp;

    private Pair<Integer, JSONObject> a(String str) {
        return sz.l().ks() == 1 ? new Pair<>(3, new JSONObject()) : j(str);
    }

    private Pair<Integer, JSONObject> eb(String str) {
        com.byazt.pg.w wVarL = b.l();
        if (TextUtils.isEmpty(str)) {
            return a(str);
        }
        if (wVarL != null) {
            jSONObjectW = wVarL.getArmorLoadStatus() ? w(str) : null;
            if (jSONObjectW == null || TextUtils.isEmpty(jSONObjectW.optString("message"))) {
                k.hp().hp(3, -1L, (String) null, wVarL.getSpecificArmorLoadStatus());
                return a(str);
            }
        }
        return new Pair<>(4, jSONObjectW);
    }

    public static a hp() {
        if (hp == null) {
            synchronized (a.class) {
                try {
                    if (hp == null) {
                        hp = new a();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public Pair<Integer, JSONObject> j(String str) {
        return new Pair<>(3, com.byazt.ymw.hp.hp(str));
    }

    public Pair<Integer, ?> jx(String str) {
        try {
            if (!TextUtils.isEmpty(str) && sz.l().ly()) {
                return hp(str, "get_ad");
            }
        } catch (Throwable th) {
            u.hp(th.getMessage());
        }
        return j(str);
    }

    public com.byazt.ic.l l(String str) {
        int iIntValue;
        JSONObject jSONObject = new JSONObject();
        com.byazt.ic.l lVar = new com.byazt.ic.l();
        HashMap map = new HashMap();
        try {
            lVar.hp(str.length());
            Pair<Integer, JSONObject> pairHp = hp().hp(str, false);
            if (pairHp != null) {
                JSONObject jSONObject2 = (JSONObject) pairHp.second;
                try {
                    Object obj = pairHp.first;
                    iIntValue = obj != null ? ((Integer) obj).intValue() : 3;
                    jSONObject = jSONObject2;
                } catch (Throwable unused) {
                    jSONObject = jSONObject2;
                }
            } else {
                iIntValue = 3;
            }
            jSONObject.put("ad_sdk_version", d.f21860w);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            if (iIntValue != 3) {
                map.put("x-ad-sdk-version", d.f21860w);
                map.put("x-plugin-version", "7.6.4.3");
                map.put("x-pglcypher", String.valueOf(iIntValue));
            }
        } catch (Throwable unused2) {
        }
        lVar.hp(map);
        lVar.l(jSONObject);
        return lVar;
    }

    public JSONObject w(String str) {
        com.byazt.pg.w wVarL = b.l();
        if (!TextUtils.isEmpty(str) && wVarL != null && wVarL.getArmorLoadStatus()) {
            try {
                byte[] bArrEncrypt = wVarL.encrypt(str.getBytes(StandardCharsets.UTF_8));
                if (bArrEncrypt != null) {
                    String strEncodeToString = Base64.encodeToString(bArrEncrypt, 0);
                    if (!TextUtils.isEmpty(strEncodeToString)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("message", strEncodeToString);
                        jSONObject.put("cypher", 4);
                        return jSONObject;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public com.byazt.ic.l hp(String str) {
        int iIntValue;
        Object obj;
        com.byazt.ic.l lVar = new com.byazt.ic.l();
        HashMap map = new HashMap();
        try {
            lVar.hp(str.length());
            Pair<Integer, ?> pairJx = hp().jx(str);
            iIntValue = 3;
            if (pairJx != null) {
                obj = pairJx.second;
                Object obj2 = pairJx.first;
                if (obj2 != null) {
                    iIntValue = ((Integer) obj2).intValue();
                }
            } else {
                obj = null;
            }
        } catch (Throwable unused) {
        }
        if (iIntValue == 4) {
            map.put("x-ad-sdk-version", d.f21860w);
            map.put("x-plugin-version", "7.6.4.3");
            map.put("x-pglcypher", String.valueOf(iIntValue));
            map.put(AbstractC1114b.f5589g, "application/octet-stream");
            lVar.hp((byte[]) obj);
            lVar.hp(map);
            return lVar;
        }
        JSONObject jSONObject = (JSONObject) obj;
        jSONObject.put("ad_sdk_version", d.f21860w);
        jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
        lVar.l(jSONObject);
        lVar.hp(map);
        return lVar;
    }

    private static String l(byte[] bArr, String str) {
        com.byazt.pg.w wVarL;
        if (bArr != null) {
            try {
                if (bArr.length == 0 || (wVarL = b.l()) == null) {
                    return null;
                }
                byte[] bArrDecrypt = wVarL.decrypt(bArr);
                String strL = e.l(bArrDecrypt);
                if (!TextUtils.isEmpty(strL)) {
                    return strL;
                }
                k.hp().hp((bArrDecrypt == null || bArrDecrypt.length == 0) ? 1 : 2, -1L, str, wVarL.getSpecificArmorLoadStatus());
                return null;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public Pair<Integer, JSONObject> hp(String str, boolean z2) {
        try {
            if (sz.l().ly()) {
                return eb(str);
            }
        } catch (Throwable th) {
            u.hp(th.getMessage());
        }
        return j(str);
    }

    public Pair<Integer, ?> hp(String str, String str2) {
        com.byazt.pg.w wVarL = b.l();
        if (TextUtils.isEmpty(str)) {
            return a(str);
        }
        if (wVarL != null) {
            bArrEncrypt = wVarL.getArmorLoadStatus() ? wVarL.encrypt(e.hp(str.getBytes(StandardCharsets.UTF_8))) : null;
            if (bArrEncrypt == null || bArrEncrypt.length == 0) {
                k.hp().hp(3, -1L, str2, wVarL.getSpecificArmorLoadStatus());
                if ("settings".equals(str2)) {
                    return j(str);
                }
                return a(str);
            }
        }
        return new Pair<>(4, bArrEncrypt);
    }

    public static Pair<Boolean, JSONObject> hp(com.byazt.oyr.l lVar, String str, boolean z2) {
        if (com.byazt.xh.hp.hp(lVar.j())) {
            return new Pair<>(Boolean.FALSE, hp(lVar.gu(), str));
        }
        String strW = lVar.w();
        if (strW != null && !strW.startsWith("{") && !strW.endsWith("}") && !strW.contains("message") && !strW.contains("cypher")) {
            return new Pair<>(Boolean.FALSE, hp(lVar.gu(), str));
        }
        JSONObject jSONObject = null;
        if (strW != null) {
            try {
                jSONObject = new JSONObject(strW);
            } catch (JSONException unused) {
            }
        }
        return new Pair<>(Boolean.TRUE, hp(jSONObject, true, z2));
    }

    public static JSONObject hp(JSONObject jSONObject, boolean z2, boolean z3) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String strHp = hp(jSONObject, z2);
            String strOptString = jSONObject.optString("auction_price", "");
            if (TextUtils.isEmpty(strHp)) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(strHp);
            if (!z3) {
                return jSONObject2;
            }
            try {
                jSONObject2.put("auction_price", strOptString);
                return jSONObject2;
            } catch (Throwable unused) {
                return jSONObject2;
            }
        } catch (Throwable unused2) {
            return jSONObject;
        }
    }

    public static String hp(JSONObject jSONObject, boolean z2) {
        if (jSONObject == null) {
            return null;
        }
        try {
            int iOptInt = jSONObject.optInt("cypher", -1);
            String strOptString = jSONObject.optString("message");
            com.byazt.pg.w wVarL = b.l();
            if (iOptInt == 3) {
                return com.byazt.ymw.hp.jx(strOptString);
            }
            if (iOptInt == 4 && wVarL != null) {
                strOptString = wVarL.decryptWithCBC(strOptString);
                if (TextUtils.isEmpty(strOptString) && z2) {
                    k.hp().hp(1, -1L, (String) null, wVarL.getSpecificArmorLoadStatus());
                }
            }
            return strOptString;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject hp(byte[] bArr, String str) {
        try {
            String strL = l(bArr, str);
            if (TextUtils.isEmpty(strL)) {
                return null;
            }
            return new JSONObject(strL);
        } catch (Exception unused) {
            return null;
        }
    }
}
