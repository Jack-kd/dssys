package com.anythink.core.e;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.az;
import com.anythink.core.e.j;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8843a = "k";

    /* renamed from: b, reason: collision with root package name */
    private static volatile k f8844b;

    /* renamed from: c, reason: collision with root package name */
    private Context f8845c;

    public interface a {
        void a(String str);

        void a(JSONObject jSONObject);
    }

    private k(Context context) {
        this.f8845c = context.getApplicationContext();
    }

    private static void b(Object obj, a aVar) {
        if (!(obj instanceof JSONObject)) {
            if (aVar != null) {
                aVar.a("get mediation adapter Strategy error");
            }
        } else {
            JSONObject jSONObject = (JSONObject) obj;
            a(jSONObject);
            if (aVar != null) {
                aVar.a(jSONObject);
            }
        }
    }

    public static k a(Context context) {
        if (f8844b == null) {
            synchronized (k.class) {
                try {
                    if (f8844b == null) {
                        f8844b = new k(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8844b;
    }

    private static j a(JSONObject jSONObject) {
        try {
            jSONObject.put(j.b.f8836b, System.currentTimeMillis());
        } catch (Throwable unused) {
        }
        return j.a(jSONObject);
    }

    public final synchronized void a(az azVar, final a aVar) {
        new com.anythink.core.common.m.o(this.f8845c, azVar).a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.core.e.k.1
            @Override // com.anythink.core.common.m.s
            public final void onLoadCanceled(int i2) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a("Request cancel");
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str, AdError adError) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    if (str == null) {
                        str = "Request Strategy error.";
                    }
                    aVar2.a(str);
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) {
                Context unused = k.this.f8845c;
                k.a(obj, aVar);
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadStart(int i2) {
            }
        });
    }

    public static /* synthetic */ void a(Object obj, a aVar) {
        if (!(obj instanceof JSONObject)) {
            if (aVar != null) {
                aVar.a("get mediation adapter Strategy error");
            }
        } else {
            JSONObject jSONObject = (JSONObject) obj;
            a(jSONObject);
            if (aVar != null) {
                aVar.a(jSONObject);
            }
        }
    }
}
