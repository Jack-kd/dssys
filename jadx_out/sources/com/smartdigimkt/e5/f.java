package com.smartdigimkt.e5;

import android.text.TextUtils;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public String f40083a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f40084b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.x3.d f40085c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f40087e = false;

    /* renamed from: d, reason: collision with root package name */
    public final e f40086d = new e(this);

    public f(h hVar) {
        this.f40084b = new WeakReference(hVar);
    }

    public final synchronized void a() {
        try {
            com.smartdigimkt.x3.d dVar = this.f40085c;
            if (dVar != null) {
                dVar.c();
            }
            this.f40085c = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        try {
            if (TextUtils.isEmpty(this.f40083a)) {
                return;
            }
            com.smartdigimkt.a5.e eVarA = com.smartdigimkt.z4.m.a().a(this.f40083a);
            if (this.f40085c != null) {
                a();
            }
            if (eVarA != null && eVarA.f39424n == 1) {
                this.f40087e = true;
                long j2 = eVarA.f39425o;
                if (j2 <= 2000) {
                    j2 = 2000;
                }
                com.smartdigimkt.x3.d dVar = new com.smartdigimkt.x3.d(j2, this.f40086d);
                this.f40085c = dVar;
                dVar.b();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
