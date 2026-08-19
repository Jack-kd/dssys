package com.smartdigimkt.w4;

import java.lang.ref.ReferenceQueue;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f44973a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final ReferenceQueue f44974b = new ReferenceQueue();

    public final synchronized Object a(String str) {
        d0 d0Var;
        a();
        d0Var = (d0) this.f44973a.get(str);
        return d0Var != null ? d0Var.get() : null;
    }

    public final synchronized void b(String str) {
        this.f44973a.remove(str);
    }

    public final synchronized void b() {
        this.f44973a.clear();
        a();
    }

    public final synchronized void a(Object obj, String str) {
        d0 d0Var;
        try {
            a();
            if (obj != null && ((d0Var = (d0) this.f44973a.get(str)) == null || d0Var.get() != obj)) {
                this.f44973a.put(str, new d0(str, obj, this.f44974b));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a() {
        d0 d0Var = (d0) this.f44974b.poll();
        while (d0Var != null) {
            d0 d0Var2 = (d0) this.f44973a.get(d0Var.f44971a);
            if (d0Var2 != null && d0Var2.get() == 0) {
                this.f44973a.remove(d0Var.f44971a);
            }
            d0Var = (d0) this.f44974b.poll();
        }
    }
}
