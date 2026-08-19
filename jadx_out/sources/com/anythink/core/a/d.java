package com.anythink.core.a;

import com.anythink.core.common.d.s;
import com.anythink.core.common.h.by;
import com.anythink.core.e.m;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static volatile d f1537a;

    public static d a() {
        if (f1537a == null) {
            synchronized (d.class) {
                try {
                    if (f1537a == null) {
                        f1537a = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1537a;
    }

    public static int a(String str, m mVar) {
        if (mVar == null) {
            return 3;
        }
        return b.a(s.b().g()).a(str, String.valueOf(mVar.ap()), mVar.aw());
    }

    public static int a(by byVar) {
        if (byVar == null) {
            return 3;
        }
        return b.a(s.b().g()).a(String.valueOf(byVar.n()), byVar.G(), String.valueOf(byVar.bn()), byVar.F());
    }
}
