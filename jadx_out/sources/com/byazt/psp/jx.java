package com.byazt.psp;

import android.text.TextUtils;
import com.byazt.psp.hp;
import com.umeng.analytics.pro.cl;
import com.umeng.analytics.pro.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1609, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f24522a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, hp> f24523j = new HashMap();
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public String f24524l;

    /* renamed from: w, reason: collision with root package name */
    public hp f24525w;

    public jx(JSONObject jSONObject) {
        this.jx = false;
        String next = jSONObject.keys().next();
        this.f24524l = next;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
        this.hp = jSONObjectOptJSONObject.optString(cl.f49059n);
        boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("lazyLoad");
        this.jx = zOptBoolean;
        if (zOptBoolean) {
            this.f24522a = jSONObjectOptJSONObject;
        } else {
            hp(jSONObjectOptJSONObject);
        }
    }

    private void hp(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(g.ax);
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            hp hpVar = new hp(jSONArrayOptJSONArray.optJSONObject(i2));
            this.f24523j.put(hpVar.hp(), hpVar);
            if (hpVar.hp().equals(jSONObject.optString("main"))) {
                this.f24525w = hpVar;
            }
        }
    }

    public String jx() {
        return this.f24524l;
    }

    public hp l() {
        if (this.jx) {
            hp(this.f24522a);
        }
        return this.f24525w;
    }

    public List<hp> jx(hp hpVar, JSONObject jSONObject, Map<String, Object> map) {
        List<hp.C0344hp> listEb = hpVar.eb();
        ArrayList arrayList = new ArrayList();
        for (hp.C0344hp c0344hp : listEb) {
            if (c0344hp != null && hp(c0344hp.l(), jSONObject, map)) {
                arrayList.add(hp(c0344hp.hp()));
            }
        }
        return arrayList;
    }

    public List<hp> l(hp hpVar, JSONObject jSONObject, Map<String, Object> map) {
        return hp(jSONObject, map, hpVar.q());
    }

    public hp hp(String str) {
        if (this.jx) {
            hp(this.f24522a);
        }
        return this.f24523j.get(str);
    }

    public Map<String, hp> hp() {
        return this.f24523j;
    }

    public List<hp> hp(hp hpVar, JSONObject jSONObject, Map<String, Object> map) {
        return hp(jSONObject, map, hpVar.s());
    }

    private List<hp> hp(JSONObject jSONObject, Map<String, Object> map, List<hp.C0344hp> list) {
        hp hpVarHp;
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty()) {
            for (hp.C0344hp c0344hp : list) {
                if (c0344hp != null && (hpVarHp = hp(c0344hp.hp())) != null && hp(c0344hp.l(), jSONObject, map)) {
                    arrayList.add(hpVarHp);
                }
            }
        }
        return arrayList;
    }

    public static boolean hp(String str, JSONObject jSONObject, Map<String, Object> map) {
        if (TextUtils.isEmpty(str) || map == null) {
            return true;
        }
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    jSONObject.put(key, entry.getValue());
                }
            }
            if (str.startsWith("${") && str.endsWith("}")) {
                return Boolean.parseBoolean(com.byazt.nh.hp.hp(str.substring(2, str.length() - 1)).hp(jSONObject).toString());
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
