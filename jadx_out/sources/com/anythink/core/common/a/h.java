package com.anythink.core.common.a;

import android.content.Context;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.by;
import com.anythink.core.common.v.ad;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static String f2239a = "h";

    /* renamed from: b, reason: collision with root package name */
    private static h f2240b;

    /* renamed from: c, reason: collision with root package name */
    private Context f2241c;

    /* renamed from: f, reason: collision with root package name */
    private final String f2244f = "rpr_";

    /* renamed from: g, reason: collision with root package name */
    private final String f2245g = "bid_";

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, a> f2242d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, Long> f2243e = new ConcurrentHashMap(5);

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f2246a;

        /* renamed from: b, reason: collision with root package name */
        public int f2247b;

        /* renamed from: c, reason: collision with root package name */
        public long f2248c;
    }

    private h(Context context) {
        this.f2241c = context.getApplicationContext();
    }

    public static h a(Context context) {
        if (f2240b == null) {
            synchronized (h.class) {
                try {
                    if (f2240b == null) {
                        f2240b = new h(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2240b;
    }

    private static String c(String str) {
        return "rpr_".concat(String.valueOf(str));
    }

    private static String d(String str) {
        return "bid_".concat(String.valueOf(str));
    }

    public final Boolean b(String str) {
        a aVar = this.f2242d.get(str);
        if (aVar == null) {
            return null;
        }
        long j2 = aVar.f2248c;
        if (j2 <= 0) {
            return Boolean.FALSE;
        }
        long jA = com.anythink.core.common.c.a().a(str);
        return jA <= 0 ? Boolean.FALSE : System.currentTimeMillis() - jA > j2 ? Boolean.FALSE : Boolean.TRUE;
    }

    public final void a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            this.f2242d.remove(str);
            ad.a(this.f2241c, t.b.f3068k, c(str));
            ad.a(this.f2241c, t.b.f3068k, d(str));
        } else {
            this.f2242d.put(str, a(jSONObject));
            ad.b(this.f2241c, t.b.f3068k, c(str), jSONObject.toString());
        }
    }

    private static a a(JSONObject jSONObject) {
        a aVar = new a();
        aVar.f2246a = jSONObject.optLong("bid_inr", 0L);
        aVar.f2247b = jSONObject.optInt(com.anythink.core.common.k.ab, 2);
        aVar.f2248c = jSONObject.optLong(com.anythink.core.common.k.f5378W, 0L);
        return aVar;
    }

    public final void a() {
        try {
            Map<String, ?> mapB = ad.b(this.f2241c, t.b.f3068k);
            if (mapB == null || mapB.size() <= 0) {
                return;
            }
            for (Map.Entry<String, ?> entry : mapB.entrySet()) {
                String key = entry.getKey();
                if (key != null) {
                    if (key.startsWith("rpr_")) {
                        Object value = entry.getValue();
                        if (value instanceof String) {
                            try {
                                a aVarA = a(new JSONObject((String) value));
                                this.f2242d.put(key.replace("rpr_", ""), aVarA);
                            } catch (Throwable unused) {
                            }
                        }
                    } else if (key.startsWith("bid_")) {
                        Object value2 = entry.getValue();
                        if (value2 instanceof Long) {
                            this.f2243e.put(key.replace("bid_", ""), (Long) value2);
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public final void a(String str, long j2) {
        this.f2243e.put(str, Long.valueOf(j2));
        ad.a(this.f2241c, t.b.f3068k, d(str), j2);
    }

    public final boolean a(String str) {
        Long l2;
        a aVar = this.f2242d.get(str);
        if (aVar == null) {
            return false;
        }
        long j2 = aVar.f2246a;
        return j2 > 0 && (l2 = this.f2243e.get(str)) != null && System.currentTimeMillis() - l2.longValue() <= j2;
    }

    public final Boolean a(by byVar) {
        a aVar = this.f2242d.get(byVar.G());
        if (aVar == null) {
            return null;
        }
        if (aVar.f2247b == 2) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}
