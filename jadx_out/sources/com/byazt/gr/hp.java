package com.byazt.gr;

import android.text.TextUtils;
import android.util.Pair;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1684, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public Map<String, hp> f20559a = new ConcurrentHashMap();
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public List<C0258hp> f20560j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f20561l;

    /* renamed from: w, reason: collision with root package name */
    public l f20562w;

    @com.byazt.kj.hp(hp = {0, 1, 1684, 170})
    /* renamed from: com.byazt.gr.hp$hp, reason: collision with other inner class name */
    public static class C0258hp {
        public String hp;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public String f20563l;

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof C0258hp)) {
                return super.equals(obj);
            }
            String str2 = this.hp;
            if (str2 != null) {
                C0258hp c0258hp = (C0258hp) obj;
                if (str2.equals(c0258hp.hp()) && (str = this.f20563l) != null && str.equals(c0258hp.l())) {
                    return true;
                }
            }
            return false;
        }

        public String hp() {
            return this.hp;
        }

        public int jx() {
            return this.jx;
        }

        public String l() {
            return this.f20563l;
        }

        public void hp(String str) {
            this.hp = str;
        }

        public void l(String str) {
            this.f20563l = str;
        }

        public void hp(int i2) {
            this.jx = i2;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1684, 255})
    public static class l {
        public String hp;
        public List<Pair<String, String>> jx;

        /* renamed from: l, reason: collision with root package name */
        public String f20564l;

        public String hp() {
            return this.hp;
        }

        public void l(String str) {
            this.f20564l = str;
        }

        public void hp(String str) {
            this.hp = str;
        }

        public List<Pair<String, String>> l() {
            return this.jx;
        }

        public void hp(List<Pair<String, String>> list) {
            this.jx = list;
        }
    }

    public boolean a() {
        return (TextUtils.isEmpty(j()) || TextUtils.isEmpty(jx()) || TextUtils.isEmpty(l())) ? false : true;
    }

    public JSONObject eb() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", l());
            jSONObject.putOpt(cl.f49059n, jx());
            jSONObject.putOpt("main", j());
            JSONArray jSONArray = new JSONArray();
            if (getResources() != null) {
                for (C0258hp c0258hp : getResources()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", c0258hp.hp());
                    jSONObject2.putOpt(TKDownloadReason.KSAD_TK_MD5, c0258hp.l());
                    jSONObject2.putOpt("level", Integer.valueOf(c0258hp.jx()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            if (!this.f20559a.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                boolean z2 = false;
                for (String str : this.f20559a.keySet()) {
                    hp hpVar = this.f20559a.get(str);
                    if (hpVar != null) {
                        jSONObject3.put(str, hpVar.eb());
                        z2 = true;
                    }
                }
                if (z2) {
                    jSONObject.put("engines", jSONObject3);
                }
            }
            l lVarW = w();
            if (lVarW != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("url", lVarW.hp);
                jSONObject4.put(TKDownloadReason.KSAD_TK_MD5, lVarW.f20564l);
                JSONObject jSONObject5 = new JSONObject();
                List<Pair<String, String>> listL = lVarW.l();
                if (listL != null) {
                    for (Pair<String, String> pair : listL) {
                        jSONObject5.put((String) pair.first, pair.second);
                    }
                }
                jSONObject4.put("map", jSONObject5);
                jSONObject.putOpt("resources_archive", jSONObject4);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public List<C0258hp> getResources() {
        if (this.f20560j == null) {
            this.f20560j = new ArrayList();
        }
        return this.f20560j;
    }

    public Map<String, hp> hp() {
        return this.f20559a;
    }

    public String j() {
        return this.jx;
    }

    public String jx() {
        return this.f20561l;
    }

    public String l() {
        return this.hp;
    }

    public String s() {
        JSONObject jSONObjectEb;
        if (!a() || (jSONObjectEb = eb()) == null) {
            return null;
        }
        return jSONObjectEb.toString();
    }

    public l w() {
        return this.f20562w;
    }

    public static hp j(String str) {
        if (str == null) {
            return null;
        }
        try {
            return hp(new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void jx(String str) {
        this.jx = str;
    }

    public void l(String str) {
        this.f20561l = str;
    }

    public void hp(l lVar) {
        this.f20562w = lVar;
    }

    public void hp(List<C0258hp> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f20560j = list;
    }

    public static hp hp(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return null;
        }
        hp hpVar = new hp();
        hpVar.hp(jSONObject.optString("name"));
        hpVar.l(jSONObject.optString(cl.f49059n));
        hpVar.jx(jSONObject.optString("main"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                C0258hp c0258hp = new C0258hp();
                c0258hp.hp(jSONObjectOptJSONObject2.optString("url"));
                c0258hp.l(jSONObjectOptJSONObject2.optString(TKDownloadReason.KSAD_TK_MD5));
                c0258hp.hp(jSONObjectOptJSONObject2.optInt("level"));
                arrayList.add(c0258hp);
            }
        }
        hpVar.hp(arrayList);
        try {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("engines");
            if (jSONObjectOptJSONObject3 != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject3.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    hp hpVarHp = hp(jSONObjectOptJSONObject3.optJSONObject(next));
                    if (hpVarHp != null) {
                        hpVar.hp().put(next, hpVarHp);
                    }
                }
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
        if (jSONObject.has("resources_archive") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("resources_archive")) != null) {
            l lVar = new l();
            lVar.hp(jSONObjectOptJSONObject.optString("url"));
            lVar.l(jSONObjectOptJSONObject.optString(TKDownloadReason.KSAD_TK_MD5));
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("map");
            if (jSONObjectOptJSONObject4 != null) {
                Iterator<String> itKeys2 = jSONObjectOptJSONObject4.keys();
                ArrayList arrayList2 = new ArrayList();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    arrayList2.add(new Pair<>(next2, jSONObjectOptJSONObject4.optString(next2)));
                }
                lVar.hp(arrayList2);
            }
            hpVar.hp(lVar);
        }
        if (hpVar.a()) {
            return hpVar;
        }
        return null;
    }
}
