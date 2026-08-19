package com.anythink.core.common.m.c;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.v.ad;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class d implements i {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5664a = "anythink_app_pl_cl_retry";

    /* renamed from: b, reason: collision with root package name */
    protected final Context f5665b;

    /* renamed from: d, reason: collision with root package name */
    protected final Object f5667d = new Object();

    /* renamed from: c, reason: collision with root package name */
    protected final Map<String, Long> f5666c = new ConcurrentHashMap(1);

    public d(Context context) {
        this.f5665b = context;
    }

    @Override // com.anythink.core.common.m.c.i
    public com.anythink.core.common.m.b.f a(com.anythink.core.common.m.b.d dVar) {
        String strC = c(dVar);
        if (this.f5666c == null || TextUtils.isEmpty(strC)) {
            return null;
        }
        com.anythink.core.common.m.b.f fVarA = com.anythink.core.common.m.b.f.a();
        synchronized (this.f5667d) {
            try {
                Long lValueOf = this.f5666c.get(strC);
                if (lValueOf == null) {
                    lValueOf = Long.valueOf(ad.b(this.f5665b, "anythink_app_pl_cl_retry", strC, 0L));
                    this.f5666c.put(strC, lValueOf);
                }
                if (lValueOf.longValue() == 0) {
                    fVarA.a(false);
                } else if (lValueOf.longValue() == -1) {
                    fVarA.a(true);
                    fVarA.b(700);
                } else {
                    boolean z2 = System.currentTimeMillis() - lValueOf.longValue() < 0;
                    if (z2) {
                        fVarA.b(700);
                    }
                    fVarA.a(z2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVarA;
    }

    public boolean b(com.anythink.core.common.m.b.d dVar) {
        return false;
    }

    public String c(com.anythink.core.common.m.b.d dVar) {
        return dVar != null ? dVar.a() : "";
    }
}
