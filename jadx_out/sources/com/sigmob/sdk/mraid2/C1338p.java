package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid2.p, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1338p {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<String, String> f38204a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, a> f38205b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, a> f38206c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private final Context f38207d;

    /* renamed from: com.sigmob.sdk.mraid2.p$a */
    public interface a {
        void valueChange(JSONObject jSONObject);
    }

    public C1338p(Context context) {
        this.f38207d = context;
    }

    public String a(int i2, String str) {
        Object objB;
        if (i2 == 1) {
            objB = C1336n.b(this.f38207d, str, "");
        } else {
            Map<String, String> map = f38204a;
            if (map.get(str) == null) {
                return "";
            }
            objB = map.get(str);
        }
        return (String) objB;
    }

    public int b(int i2) {
        if (i2 != 1) {
            return f38204a.size();
        }
        Map<String, ?> mapA = C1336n.a(this.f38207d);
        if (mapA == null) {
            return 0;
        }
        return mapA.size();
    }

    public void a(int i2) throws JSONException {
        if (i2 == 1) {
            Map<String, ?> mapA = C1336n.a(this.f38207d);
            if (mapA != null && !mapA.isEmpty()) {
                for (Map.Entry<String, ?> entry : mapA.entrySet()) {
                    a aVar = this.f38205b.get(entry.getKey());
                    if (aVar != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put(f.a.f3242b, entry.getKey());
                            jSONObject.put("newValue", "");
                            jSONObject.put("oldValue", entry.getValue());
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                        aVar.valueChange(jSONObject);
                    }
                }
            }
            C1336n.b(this.f38207d);
            return;
        }
        Map<String, String> map = f38204a;
        if (map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            a aVar2 = this.f38206c.get(entry2.getKey());
            if (aVar2 != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(f.a.f3242b, entry2.getKey());
                    jSONObject2.put("newValue", "");
                    jSONObject2.put("oldValue", entry2.getValue());
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
                aVar2.valueChange(jSONObject2);
            }
        }
        f38204a.clear();
    }

    public void b(int i2, String str) throws JSONException {
        a aVar;
        a aVar2;
        if (i2 == 1) {
            String str2 = (String) C1336n.b(this.f38207d, str, "");
            if (!TextUtils.isEmpty(str2) && (aVar2 = this.f38205b.get(str)) != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(f.a.f3242b, str);
                    jSONObject.put("newValue", "");
                    jSONObject.put("oldValue", str2);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                aVar2.valueChange(jSONObject);
            }
            C1336n.b(this.f38207d, str);
            return;
        }
        String str3 = f38204a.get(str);
        if (!TextUtils.isEmpty(str3) && (aVar = this.f38206c.get(str)) != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(f.a.f3242b, str);
                jSONObject2.put("newValue", "");
                jSONObject2.put("oldValue", str3);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
            aVar.valueChange(jSONObject2);
        }
        f38204a.remove(str);
    }

    public void a(int i2, String str, a aVar) {
        (i2 == 1 ? this.f38205b : this.f38206c).put(str, aVar);
    }

    public void a(int i2, String str, String str2) throws JSONException {
        a aVar;
        a aVar2;
        if (i2 == 1) {
            String str3 = (String) C1336n.b(this.f38207d, str, "");
            if (str3 != null && !str3.equals(str2) && (aVar2 = this.f38205b.get(str)) != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(f.a.f3242b, str);
                    jSONObject.put("newValue", str2);
                    jSONObject.put("oldValue", str3);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                aVar2.valueChange(jSONObject);
            }
            C1336n.a(this.f38207d, str, str2);
            return;
        }
        Map<String, String> map = f38204a;
        String str4 = map.get(str) != null ? map.get(str) : "";
        if (str4 != null && !str4.equals(str2) && (aVar = this.f38206c.get(str)) != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(f.a.f3242b, str);
                jSONObject2.put("newValue", str2);
                jSONObject2.put("oldValue", str4);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
            aVar.valueChange(jSONObject2);
        }
        f38204a.put(str, str2);
    }
}
