package com.smartdigimkt.u1;

import android.text.TextUtils;
import android.view.View;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.t1.m;
import com.smartdigimkt.z.z;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f44383b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f44384c;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f44387f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f44388g;

    /* renamed from: a, reason: collision with root package name */
    public final String f44382a = c.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    public boolean f44385d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f44386e = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f44389h = false;

    public c(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        this.f44383b = cVar;
        this.f44384c = aVar;
        m.a().getClass();
        boolean z2 = com.smartdigimkt.z4.d.c().a().f39356R == 1;
        this.f44387f = z2;
        if (z2) {
            return;
        }
        SDKContext.getInstance().getClass();
    }

    public final void a(View view, int i2) {
        if (this.f44385d || !this.f44387f || !d.a().b() || this.f44389h || TextUtils.isEmpty(this.f44383b.f41809b0)) {
            return;
        }
        e.a().a(new b(this, view, i2));
    }

    public final boolean a() {
        return !z.h(this.f44383b, this.f44384c) && this.f44383b.j();
    }
}
