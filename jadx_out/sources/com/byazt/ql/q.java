package com.byazt.ql;

import android.text.TextUtils;
import com.umeng.analytics.pro.cl;
import com.umeng.analytics.pro.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1306, 150})
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f24932a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f24933e;
    public boolean eb;
    public JSONObject hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f24934j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f24935l;

    /* renamed from: q, reason: collision with root package name */
    public float f24936q;

    /* renamed from: s, reason: collision with root package name */
    public float f24937s;

    /* renamed from: w, reason: collision with root package name */
    public String f24938w;

    @com.byazt.kj.hp(hp = {0, 1, 1306, 3})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public hp f24939a;

        /* renamed from: e, reason: collision with root package name */
        public boolean f24940e;
        public String eb;
        public boolean gu;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public JSONObject f24941j;
        public JSONObject jx;

        /* renamed from: l, reason: collision with root package name */
        public String f24942l;

        /* renamed from: q, reason: collision with root package name */
        public boolean f24943q;

        /* renamed from: s, reason: collision with root package name */
        public String f24944s;

        /* renamed from: w, reason: collision with root package name */
        public LinkedList<hp> f24945w;

        public List<hp> a() {
            return this.f24945w;
        }

        public JSONObject eb() {
            return this.f24941j;
        }

        public String toString() {
            return "UGNode{id='" + this.hp + "', name='" + this.f24942l + "'}";
        }

        public JSONObject w() {
            return this.jx;
        }

        public String j() {
            return this.f24942l;
        }

        public boolean jx() {
            return this.f24943q;
        }

        public String l() {
            return this.eb;
        }

        public void l(boolean z2) {
            this.gu = z2;
        }

        public String hp() {
            return this.hp;
        }

        public void l(hp hpVar) {
            if (this.f24945w == null) {
                this.f24945w = new LinkedList<>();
            }
            this.f24945w.addLast(hpVar);
        }

        public void hp(String str) {
            this.f24942l = str;
        }

        public void hp(boolean z2) {
            this.f24940e = z2;
        }

        public void hp(hp hpVar) {
            if (this.f24945w == null) {
                this.f24945w = new LinkedList<>();
            }
            this.f24945w.add(hpVar);
        }

        public void hp(int i2, hp hpVar) {
            if (this.f24945w == null) {
                this.f24945w = new LinkedList<>();
            }
            this.f24945w.add(i2, hpVar);
        }
    }

    public q(JSONObject jSONObject, JSONObject jSONObject2) {
        this(jSONObject, jSONObject2, null);
    }

    private hp w() throws JSONException {
        if (!j()) {
            return hp(this.hp, (hp) null);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("flexDirection", "row");
            jSONObject.put("justifyContent", "flex_start");
            jSONObject.put("alignItems", "flex_start");
            jSONObject.put("clickable", false);
            jSONObject.put("width", "match_parent");
            jSONObject.put("height", "wrap_content");
            float f2 = this.f24937s;
            if (f2 > 0.0f) {
                jSONObject.put("width", f2);
            }
            float f3 = this.f24936q;
            if (f3 > 0.0f) {
                jSONObject.put("height", f3);
            }
            JSONObject jSONObject2 = this.f24934j;
            if (jSONObject2 != null) {
                String strOptString = jSONObject2.optString("xSize");
                if (!TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject3 = new JSONObject(strOptString);
                    if (jSONObject3.optInt("width") > 0) {
                        jSONObject.put("width", jSONObject3.optInt("width"));
                    }
                    if (jSONObject3.optInt("height") > 0) {
                        jSONObject.put("height", jSONObject3.optInt("height"));
                    }
                }
            }
        } catch (JSONException unused) {
        }
        hp hpVar = new hp();
        hpVar.f24942l = "View";
        hpVar.hp = "virtualNode";
        hpVar.jx = jSONObject;
        hpVar.f24939a = null;
        hpVar.eb = this.jx;
        hpVar.f24943q = this.f24933e;
        hpVar.f24944s = this.f24938w;
        hpVar.hp(hp(this.hp, hpVar));
        return hpVar;
    }

    public hp hp() {
        return w();
    }

    public boolean j() {
        return this.eb;
    }

    public List<hp> jx() throws JSONException {
        if (this.f24935l == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = this.f24935l.keys();
        while (itKeys.hasNext()) {
            hp hpVarHp = hp(this.f24935l.optJSONObject(itKeys.next()), (hp) null);
            if (hpVarHp != null) {
                arrayList.add(hpVarHp);
            }
        }
        return arrayList;
    }

    public String l() {
        return this.jx;
    }

    public q(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        this.f24933e = true;
        if (jSONObject != null) {
            if (jSONObject.has("body")) {
                this.hp = jSONObject.optJSONObject("body");
            } else {
                this.hp = jSONObject.optJSONObject("main_template");
            }
            this.f24935l = jSONObject.optJSONObject("sub_templates");
            JSONObject jSONObjectOptJSONObject = jSONObject.has("meta") ? jSONObject.optJSONObject("meta") : jSONObject.optJSONObject("template_info");
            if (jSONObjectOptJSONObject != null) {
                if (jSONObject.has("body")) {
                    this.eb = true;
                    String strOptString = jSONObjectOptJSONObject.optString(cl.f49059n);
                    this.jx = strOptString;
                    if (TextUtils.isEmpty(strOptString)) {
                        this.jx = "3.0";
                    }
                } else {
                    this.jx = jSONObjectOptJSONObject.optString("sdk_version");
                }
                if (jSONObjectOptJSONObject.has("adType")) {
                    this.f24938w = jSONObjectOptJSONObject.optString("adType");
                }
                if (jSONObjectOptJSONObject.has("gestureThrough")) {
                    this.f24933e = com.byazt.xa.jx.hp(jSONObjectOptJSONObject.optString("gestureThrough"), true);
                }
            } else if (jSONObject.has("body")) {
                this.jx = "3.0";
                this.eb = true;
            }
            this.f24934j = jSONObject2;
            this.f24932a = jSONObject3;
        }
    }

    public static boolean j(hp hpVar) {
        return (hpVar == null || hpVar.jx == null) ? false : true;
    }

    public void hp(float f2, float f3) {
        this.f24937s = f2;
        this.f24936q = f3;
    }

    public boolean l(hp hpVar) {
        JSONObject jSONObjectW;
        if (hpVar == null || (jSONObjectW = hpVar.w()) == null) {
            return false;
        }
        return TextUtils.equals(jSONObjectW.optString("height"), "match_parent");
    }

    private hp hp(JSONObject jSONObject, hp hpVar) throws JSONException {
        String strOptString;
        String strOptString2;
        hp hpVarHp;
        if (jSONObject == null) {
            return null;
        }
        if (jSONObject.has("type")) {
            strOptString = jSONObject.optString("type");
        } else {
            strOptString = jSONObject.optString("name");
        }
        String strOptString3 = jSONObject.optString("id");
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.equals(next, "children")) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException unused) {
                }
            }
        }
        hp hpVar2 = new hp();
        hpVar2.hp = strOptString3;
        if (!this.eb || !TextUtils.equals("Video", strOptString)) {
            hpVar2.f24942l = strOptString;
        } else {
            hpVar2.f24942l = strOptString + "V3";
        }
        hpVar2.jx = jSONObject2;
        hpVar2.f24939a = hpVar;
        hpVar2.eb = this.jx;
        hpVar2.f24943q = this.f24933e;
        hpVar2.f24944s = this.f24938w;
        if (jSONObject2.has("i18n")) {
            hpVar2.f24941j = jSONObject2.optJSONObject("i18n");
        }
        if (TextUtils.equals(strOptString, "CustomComponent")) {
            hp(jSONObject, hpVar2.jx);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i3);
                if (jSONObject.has("type")) {
                    strOptString2 = jSONObject.optString("type");
                } else {
                    strOptString2 = jSONObject.optString("name");
                }
                String strHp = com.byazt.ss.l.hp(jSONObjectOptJSONObject.optString("id"), this.f24934j);
                if (TextUtils.equals(strOptString2, "Template")) {
                    JSONObject jSONObject3 = this.f24935l;
                    if (jSONObject3 != null) {
                        jSONObjectOptJSONObject = jSONObject3.optJSONObject(strHp);
                        hpVarHp = hp(jSONObjectOptJSONObject, hpVar2);
                    } else {
                        hpVarHp = null;
                    }
                } else {
                    hpVarHp = hp(jSONObjectOptJSONObject, hpVar2);
                }
                if (hpVarHp != null) {
                    hpVarHp.l(l(hpVarHp));
                    hpVarHp.hp(hp(hpVarHp));
                }
                if (jx(hpVarHp)) {
                    i2++;
                    hpVar2.l(hpVarHp);
                } else if (hpVarHp != null) {
                    hpVar2.hp(i3 - i2, hpVarHp);
                }
            }
        }
        return hpVar2;
    }

    public boolean jx(hp hpVar) {
        JSONObject jSONObjectW;
        if (hpVar == null || (jSONObjectW = hpVar.w()) == null) {
            return false;
        }
        return TextUtils.equals(jSONObjectW.optString("position"), "absolute");
    }

    public boolean hp(hp hpVar) {
        JSONObject jSONObjectW;
        if (hpVar == null || (jSONObjectW = hpVar.w()) == null) {
            return false;
        }
        return TextUtils.equals(jSONObjectW.optString("width"), "match_parent");
    }

    private void hp(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (this.f24932a == null || jSONObject2 == null) {
            return;
        }
        try {
            String strOptString = this.f24932a.optString(jSONObject2.optString("targetId"));
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject(strOptString);
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("targetProps");
            if (jSONObjectOptJSONObject != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object objOpt = jSONObjectOptJSONObject.opt(next);
                    if (TextUtils.equals(next, g.ax) && jSONObject3.has(g.ax)) {
                        if (objOpt instanceof JSONArray) {
                            com.byazt.xa.l.hp(jSONObject3.optJSONArray(g.ax), (JSONArray) objOpt);
                        }
                    } else {
                        jSONObject3.put(next, objOpt);
                    }
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                jSONArrayOptJSONArray.put(jSONObject3);
                if (jSONObject.has("children")) {
                    return;
                }
                jSONObject.put("children", jSONArrayOptJSONArray);
            }
        } catch (JSONException unused) {
        }
    }
}
