package com.smartdigimkt.p1;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.Map;

/* loaded from: classes5.dex */
public abstract class d implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Map f42551a;

    /* renamed from: b, reason: collision with root package name */
    public int f42552b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f42553c = false;

    public d() {
    }

    public abstract void a();

    public abstract void a(com.smartdigimkt.i0.f fVar);

    public abstract void a(u uVar);

    public abstract void a(boolean z2);

    public abstract void b();

    public abstract void b(u uVar);

    public void c() {
    }

    public abstract void d();

    public abstract void e();

    public d(String str, Map map) {
        this.f42551a = map;
        com.smartdigimkt.y3.a aVarA = com.smartdigimkt.y3.a.a();
        c cVar = new c(this, str);
        aVarA.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        aVarA.f45192a.put(str, cVar);
    }
}
