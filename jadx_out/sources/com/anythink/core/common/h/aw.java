package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class aw {

    /* renamed from: a, reason: collision with root package name */
    private final List<a> f3853a = new ArrayList();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final String f3854a;

        /* renamed from: b, reason: collision with root package name */
        private final long f3855b;

        /* renamed from: c, reason: collision with root package name */
        private Map<String, Long> f3856c;

        public a(String str, long j2) {
            this.f3854a = str;
            this.f3855b = j2;
        }

        public final String a() {
            return this.f3854a;
        }

        public final long b() {
            return this.f3855b;
        }

        public final Map<String, Long> c() {
            return this.f3856c;
        }

        public final String toString() {
            return "{errorCode='" + this.f3854a + "', errorCodeInterval=" + this.f3855b + ", msgMap=" + this.f3856c + '}';
        }

        public final void a(Map<String, Long> map) {
            this.f3856c = map;
        }
    }

    public aw(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    try {
                        String next = itKeys.next();
                        if (!TextUtils.isEmpty(next) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(next)) != null) {
                            a aVar = new a(next, jSONObjectOptJSONObject.optLong("c_t", 0L));
                            try {
                                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("msg");
                                if (jSONObjectOptJSONObject2 != null) {
                                    HashMap map = new HashMap();
                                    Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                                    while (itKeys2.hasNext()) {
                                        try {
                                            String next2 = itKeys2.next();
                                            if (!TextUtils.isEmpty(next2)) {
                                                long jOptLong = jSONObjectOptJSONObject2.optLong(next2, 0L);
                                                if (jOptLong > 0) {
                                                    map.put(next2, Long.valueOf(jOptLong));
                                                }
                                            }
                                        } catch (Throwable unused) {
                                        }
                                    }
                                    if (!map.isEmpty()) {
                                        aVar.a(map);
                                    }
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            this.f3853a.add(aVar);
                        }
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable unused3) {
            }
        }
    }

    public final List<a> a() {
        return this.f3853a;
    }
}
