package com.smartdigimkt.e0;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f40002a = false;

    /* renamed from: b, reason: collision with root package name */
    public final k f40003b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f40004c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f40005d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f40006e;

    public n(r rVar, long j2, long j3, boolean z2) {
        this.f40006e = rVar;
        this.f40004c = j3;
        this.f40005d = z2;
        k kVar = new k(this);
        this.f40003b = kVar;
        com.smartdigimkt.x3.g.a().f45120a.a(kVar, j2);
    }

    public final void a(long j2, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        r rVar = this.f40006e;
        if (rVar.f40016g.f41989y1 != 1) {
            a(true, null, 0, "", j2, str);
        } else {
            com.smartdigimkt.b4.e.a().a(new m(this, str, t.a(3, (com.smartdigimkt.l3.a) null, rVar.f40015f), str2, j2));
        }
    }

    public final void a(int i2, String str, String str2) {
        a(false, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.ac, com.anythink.core.common.inner.b.b.ac + str2), i2, str2, 0L, str);
    }

    public final void a(boolean z2, com.smartdigimkt.i0.f fVar, int i2, String str, long j2, String str2) {
        if (this.f40002a) {
            return;
        }
        this.f40002a = true;
        com.smartdigimkt.x3.g.a().a(this.f40003b);
        if (!z2) {
            r rVar = this.f40006e;
            com.smartdigimkt.y3.h.a(rVar.f40015f, rVar.f40017h, false, System.currentTimeMillis() - this.f40004c, i2, str, 0L, str2);
            if (this.f40005d) {
                this.f40006e.a(5);
                return;
            } else {
                this.f40006e.a(fVar);
                return;
            }
        }
        r rVar2 = this.f40006e;
        com.smartdigimkt.y3.h.a(rVar2.f40015f, rVar2.f40017h, true, System.currentTimeMillis() - this.f40004c, 0, "", j2, str2);
        this.f40006e.a(5);
    }
}
