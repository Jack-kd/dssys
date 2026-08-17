package com.byazt.xoi;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.core.common.f.f;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1415, 38})
/* loaded from: classes3.dex */
public class j {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f27723j;

    /* renamed from: l, reason: collision with root package name */
    public final String f27724l;

    /* renamed from: w, reason: collision with root package name */
    public String[] f27725w;
    public final Map<String, Float> jx = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, w> f27722a = new ConcurrentHashMap();

    public j(String str, String str2, @NonNull JSONObject jSONObject) {
        this.hp = str;
        this.f27724l = str2;
        this.f27723j = jSONObject.optString("symbol");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("score_fit_type");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            this.f27725w = new String[jSONArrayOptJSONArray.length()];
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                String strOptString = jSONArrayOptJSONArray.optString(i2);
                if (!TextUtils.isEmpty(strOptString)) {
                    this.f27725w[i2] = strOptString;
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(strOptString);
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("range");
                        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray(f.a.f3244d);
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0 && jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                            this.f27722a.put(strOptString, new w(strOptString, jSONArrayOptJSONArray2, jSONArrayOptJSONArray3));
                        }
                    }
                }
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("rule_exc_mode");
        if (jSONObjectOptJSONObject2 == null || jSONObjectOptJSONObject2.length() <= 0) {
            return;
        }
        Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.jx.put(next, Float.valueOf((float) jSONObjectOptJSONObject2.optDouble(next, 0.0d)));
        }
    }

    public String hp() {
        return this.hp;
    }

    public String j() {
        return this.f27723j;
    }

    public String[] jx() {
        return this.f27725w;
    }

    public Map<String, Float> l() {
        return this.jx;
    }

    public Map<String, w> w() {
        return this.f27722a;
    }
}
