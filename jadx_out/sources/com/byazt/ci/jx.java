package com.byazt.ci;

import android.text.TextUtils;
import com.byazt.gg.a;
import com.byazt.ql.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1925, 30})
/* loaded from: classes2.dex */
public final class jx {
    public final String hp;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, Object> f18862l;

    private jx(String str, Map<String, Object> map) {
        this.hp = str;
        this.f18862l = map;
    }

    public static jx hp(u uVar, JSONObject jSONObject, Map<String, Object> map) {
        String strHp;
        JSONObject jSONObjectJx = uVar != null ? uVar.jx() : null;
        HashMap map2 = new HashMap();
        if (jSONObjectJx != null) {
            strHp = com.byazt.ss.l.hp(jSONObjectJx.optString("type"), jSONObject);
            JSONObject jSONObjectOptJSONObject = jSONObjectJx.optJSONObject("params");
            if (jSONObjectOptJSONObject != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map2.put(next, hp(jSONObjectOptJSONObject.opt(next), jSONObject));
                }
            }
        } else {
            strHp = "";
        }
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        return new jx(strHp, map2);
    }

    public JSONArray jx(String str) {
        Map<String, Object> map = this.f18862l;
        Object obj = map != null ? map.get(str) : null;
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
            try {
                return new JSONArray(String.valueOf(obj));
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public Map<String, Object> l() {
        return this.f18862l;
    }

    public JSONObject l(String str) {
        Map<String, Object> map = this.f18862l;
        Object obj = map != null ? map.get(str) : null;
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
            try {
                return new JSONObject(String.valueOf(obj));
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static jx hp(a.hp hpVar, JSONObject jSONObject, Map<String, Object> map) {
        String strHp = com.byazt.ss.l.hp(hpVar != null ? hpVar.l() : "", jSONObject);
        HashMap map2 = new HashMap();
        if (hpVar != null && hpVar.jx() != null) {
            for (Map.Entry<String, Object> entry : hpVar.jx().entrySet()) {
                map2.put(entry.getKey(), hp(entry.getValue(), jSONObject));
            }
        }
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        return new jx(strHp, map2);
    }

    public String hp() {
        return this.hp;
    }

    public String hp(String str) {
        Map<String, Object> map = this.f18862l;
        Object obj = map != null ? map.get(str) : null;
        return obj == null ? "" : String.valueOf(obj);
    }

    public int hp(String str, int i2) {
        Map<String, Object> map = this.f18862l;
        Object obj = map != null ? map.get(str) : null;
        if (obj != null) {
            try {
                return Integer.parseInt(String.valueOf(obj));
            } catch (Exception unused) {
            }
        }
        return i2;
    }

    public <T> T hp(String str, Class<T> cls) {
        Map<String, Object> map = this.f18862l;
        T t2 = map != null ? (T) map.get(str) : null;
        if (t2 != null && cls.isInstance(t2)) {
            return t2;
        }
        return null;
    }

    private static Object hp(Object obj, JSONObject jSONObject) {
        return obj instanceof JSONObject ? obj : com.byazt.ss.l.hp(Objects.toString(obj, ""), jSONObject);
    }
}
