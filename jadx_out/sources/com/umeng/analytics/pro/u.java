package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    private static final int f49659a = 0;

    /* renamed from: b, reason: collision with root package name */
    private static final int f49660b = 1;

    /* renamed from: c, reason: collision with root package name */
    private static final int f49661c = 2;

    /* renamed from: d, reason: collision with root package name */
    private static final int f49662d = 3;

    /* renamed from: e, reason: collision with root package name */
    private final long f49663e;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final u f49664a = new u();

        private a() {
        }
    }

    public static u a() {
        return a.f49664a;
    }

    private JSONArray c() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", ab.a().d(UMGlobalContext.getAppContext(null)));
            jSONObject.put("start_time", jCurrentTimeMillis);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }

    public void b(JSONObject jSONObject, Context context) {
        int iA = a(context);
        if (iA == 1) {
            if (jSONObject.has(g.f49325L)) {
                jSONObject.remove(g.f49325L);
            }
            if (jSONObject.has(g.f49353n)) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray(g.f49353n);
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        if (jSONObject2.has(g.aA)) {
                            jSONObject2.remove(g.aA);
                        }
                        if (jSONObject2.has(g.aB)) {
                            jSONObject2.remove(g.aB);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
            l.a(context).a(false, true);
            return;
        }
        if (iA == 2) {
            if (jSONObject.has(g.f49325L)) {
                jSONObject.remove(g.f49325L);
            }
            if (jSONObject.has(g.f49353n)) {
                jSONObject.remove(g.f49353n);
            }
            try {
                jSONObject.put(g.f49353n, c());
            } catch (Exception unused2) {
            }
            l.a(context).a(false, true);
            return;
        }
        if (iA == 3) {
            if (jSONObject.has(g.f49325L)) {
                jSONObject.remove(g.f49325L);
            }
            jSONObject.remove(g.f49353n);
            l.a(context).a(false, true);
        }
    }

    private u() {
        this.f49663e = 60000L;
    }

    public int a(Context context) {
        return Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", String.valueOf(0))).intValue();
    }

    private void a(JSONObject jSONObject, boolean z2) {
        if (!z2 && jSONObject.has(g.f49353n)) {
            jSONObject.remove(g.f49353n);
        }
        if (jSONObject.has(g.f49325L)) {
            jSONObject.remove(g.f49325L);
        }
        if (jSONObject.has("error")) {
            jSONObject.remove("error");
        }
        if (jSONObject.has("ekv")) {
            jSONObject.remove("ekv");
        }
        if (jSONObject.has(g.f49339Z)) {
            jSONObject.remove(g.f49339Z);
        }
        if (jSONObject.has(g.f49325L)) {
            jSONObject.remove(g.f49325L);
        }
        if (jSONObject.has("userlevel")) {
            jSONObject.remove("userlevel");
        }
    }

    public void a(JSONObject jSONObject, Context context) throws JSONException {
        int iA = a(context);
        if (iA == 1) {
            a(jSONObject, true);
            l.a(context).b(false, true);
        } else {
            if (iA == 2) {
                jSONObject.remove(g.f49353n);
                try {
                    jSONObject.put(g.f49353n, b());
                } catch (Exception unused) {
                }
                a(jSONObject, true);
                l.a(context).b(false, true);
                return;
            }
            if (iA == 3) {
                a(jSONObject, false);
                l.a(context).b(false, true);
            }
        }
    }

    private JSONArray b() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", ab.a().a(UMGlobalContext.getAppContext(null)));
            jSONObject.put("start_time", jCurrentTimeMillis);
            jSONObject.put("end_time", jCurrentTimeMillis + 60000);
            jSONObject.put("duration", 60000L);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }
}
