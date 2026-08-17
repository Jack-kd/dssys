package com.byazt.wgi;

import android.text.TextUtils;
import com.anythink.core.common.f.a;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1410, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public String f26907a;
    public int eb;
    public List<Integer> hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26908j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f26909l;

    /* renamed from: w, reason: collision with root package name */
    public String f26910w;

    public l(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("behavior_state");
        if (jSONArrayOptJSONArray != null) {
            this.hp = new LinkedList();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                try {
                    this.hp.add(Integer.valueOf(jSONArrayOptJSONArray.getInt(i2)));
                } catch (JSONException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("rule_excs");
        if (jSONObjectOptJSONObject != null) {
            this.eb = jSONObjectOptJSONObject.optInt("condition");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("perform");
            this.f26909l = jSONObjectOptJSONObject2;
            if (jSONObjectOptJSONObject2 != null) {
                this.jx = jSONObjectOptJSONObject2.optInt("condition");
                this.f26908j = this.f26909l.optString("opt");
                this.f26910w = this.f26909l.optString(a.C0051a.f3218o);
                this.f26907a = this.f26909l.optString("rule_timestamp");
            }
        }
    }

    public String a() {
        return this.f26908j;
    }

    public boolean eb() {
        return "1".equals(this.f26908j) || "2".equals(this.f26908j) || "3".equals(this.f26908j) || "4".equals(this.f26908j) || "5".equals(this.f26908j);
    }

    public int hp() {
        return this.jx;
    }

    public String j() {
        return this.f26907a;
    }

    public String jx() {
        return this.f26910w;
    }

    public int l() {
        return this.eb;
    }

    public JSONObject w() {
        return this.f26909l;
    }

    public boolean hp(int i2) {
        List<Integer> list = this.hp;
        if (list != null) {
            return list.contains(Integer.valueOf(i2));
        }
        return false;
    }

    public double l(String str, String str2) {
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || (jSONObject = this.f26909l) == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("prime_rits")) == null || (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str2)) == null || (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("srr")) == null) {
            return 0.0d;
        }
        return jSONObjectOptJSONObject3.optDouble(str, 0.0d);
    }

    public boolean hp(String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = this.f26909l.optJSONObject("prime_rits");
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(str)) == null) {
            return false;
        }
        return (jSONObjectOptJSONObject.optJSONObject("ssr") == null && jSONObjectOptJSONObject.optJSONObject("srr") == null) ? false : true;
    }

    public double hp(String str, String str2) {
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || (jSONObject = this.f26909l) == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("prime_rits")) == null || (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str2)) == null || (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("ssr")) == null) {
            return 0.0d;
        }
        return jSONObjectOptJSONObject3.optDouble(str, 0.0d);
    }
}
