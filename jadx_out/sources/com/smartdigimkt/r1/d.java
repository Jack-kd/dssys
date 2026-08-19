package com.smartdigimkt.r1;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42945a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f42946b;

    /* renamed from: c, reason: collision with root package name */
    public final String f42947c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f42948d;

    /* renamed from: e, reason: collision with root package name */
    public com.smartdigimkt.p3.a f42949e;

    /* renamed from: f, reason: collision with root package name */
    public Map f42950f;

    public d(Context context, com.smartdigimkt.l3.a aVar, String str, boolean z2) {
        this.f42945a = context.getApplicationContext();
        this.f42946b = aVar;
        this.f42947c = str;
        this.f42948d = z2;
    }

    public final boolean a() {
        if (this.f42945a == null || TextUtils.isEmpty(this.f42946b.f41627a) || TextUtils.isEmpty(this.f42947c)) {
            return false;
        }
        if (this.f42949e != null) {
            return true;
        }
        com.smartdigimkt.s1.b bVarA = com.smartdigimkt.s1.b.a(this.f42945a);
        String str = this.f42946b.f41627a;
        String str2 = this.f42947c;
        bVarA.getClass();
        com.smartdigimkt.p3.a aVarA = com.smartdigimkt.s1.b.a(str, str2);
        this.f42949e = aVarA;
        return aVarA != null;
    }

    public final com.smartdigimkt.i0.f b() {
        if (TextUtils.isEmpty(this.f42947c) || TextUtils.isEmpty(this.f42946b.f41627a)) {
            return new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, com.anythink.core.common.inner.b.b.f4558A);
        }
        com.smartdigimkt.s1.b bVarA = com.smartdigimkt.s1.b.a(this.f42945a);
        String str = this.f42946b.f41627a;
        String str2 = this.f42947c;
        bVarA.getClass();
        com.smartdigimkt.p3.a aVarA = com.smartdigimkt.s1.b.a(str, str2);
        this.f42949e = aVarA;
        if (aVarA == null) {
            return new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, com.anythink.core.common.inner.b.b.f4561D);
        }
        if (this.f42946b.f41644r == null) {
            return new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4593j, com.anythink.core.common.inner.b.b.f4562E);
        }
        return null;
    }

    public void c() {
    }

    public boolean d() {
        try {
            if (a()) {
                return com.smartdigimkt.s1.b.a(this.f42945a).a(this.f42949e, this.f42946b, this.f42948d);
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
