package com.byazt.psp;

import com.baidu.mobads.sdk.internal.cb;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.umeng.ccg.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1609, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public int f24514a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f24516j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f24517l;

    /* renamed from: w, reason: collision with root package name */
    public int f24520w;
    public final Map<String, String> eb = new HashMap();

    /* renamed from: s, reason: collision with root package name */
    public List<C0344hp> f24519s = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public final List<C0344hp> f24518q = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final List<C0344hp> f24515e = new ArrayList();

    @com.byazt.kj.hp(hp = {0, 1, 1609, 170})
    /* renamed from: com.byazt.psp.hp$hp, reason: collision with other inner class name */
    public static class C0344hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public String f24521l;

        public C0344hp(String str, String str2) {
            this.hp = str;
            this.f24521l = str2;
        }

        public String hp() {
            return this.hp;
        }

        public String l() {
            return this.f24521l;
        }
    }

    public hp(JSONObject jSONObject) {
        hp(jSONObject);
    }

    public Map<String, String> a() {
        return this.eb;
    }

    public List<C0344hp> eb() {
        return this.f24519s;
    }

    public String hp() {
        return this.hp;
    }

    public boolean j() {
        return this.f24516j;
    }

    public String jx() {
        return this.jx;
    }

    public String l() {
        return this.f24517l;
    }

    public List<C0344hp> q() {
        return this.f24515e;
    }

    public List<C0344hp> s() {
        return this.f24518q;
    }

    public int w() {
        return this.f24520w;
    }

    public void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.hp = jSONObject.optString("name");
        this.f24514a = jSONObject.optInt(a.f49746H);
        this.f24517l = jSONObject.optString(NativeModel.JSON_KEY_SCHEME);
        this.jx = jSONObject.optString("condition");
        this.f24516j = jSONObject.optBoolean("enableCondition");
        this.f24520w = jSONObject.optInt("priority", Integer.MAX_VALUE);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.eb.put(next, jSONObjectOptJSONObject.optString(next));
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("next");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject2 != null) {
                    this.f24519s.add(new C0344hp(jSONObjectOptJSONObject2.optString("name"), jSONObjectOptJSONObject2.optString("condition")));
                }
            }
        } else {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("next");
            if (jSONObjectOptJSONObject3 != null) {
                this.f24519s.add(new C0344hp(jSONObjectOptJSONObject3.optString("name"), jSONObjectOptJSONObject3.optString("condition")));
            }
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("callback");
        if (jSONObjectOptJSONObject4 == null) {
            jSONObjectOptJSONObject4 = new JSONObject();
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4.optJSONArray(cb.f11292o);
        if (jSONArrayOptJSONArray2 == null) {
            jSONArrayOptJSONArray2 = new JSONArray();
        }
        for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
            JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray2.optJSONObject(i3);
            if (jSONObjectOptJSONObject5 != null) {
                this.f24518q.add(new C0344hp(jSONObjectOptJSONObject5.optString("name"), jSONObjectOptJSONObject5.optString("condition")));
            }
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject4.optJSONArray("fail");
        if (jSONArrayOptJSONArray3 == null) {
            jSONArrayOptJSONArray3 = new JSONArray();
        }
        for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
            JSONObject jSONObjectOptJSONObject6 = jSONArrayOptJSONArray3.optJSONObject(i4);
            if (jSONObjectOptJSONObject6 != null) {
                this.f24515e.add(new C0344hp(jSONObjectOptJSONObject6.optString("name"), jSONObjectOptJSONObject6.optString("condition")));
            }
        }
    }
}
