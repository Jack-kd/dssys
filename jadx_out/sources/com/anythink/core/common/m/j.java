package com.anythink.core.common.m;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.cg;
import java.util.Map;

/* loaded from: classes2.dex */
public final class j extends AbstractC1114b {

    /* renamed from: c, reason: collision with root package name */
    public static final int f5820c = 1;

    /* renamed from: a, reason: collision with root package name */
    String f5821a;

    /* renamed from: b, reason: collision with root package name */
    int f5822b;

    /* renamed from: l, reason: collision with root package name */
    boolean f5823l;

    /* renamed from: m, reason: collision with root package name */
    private cg f5824m;

    private j(String str) {
        this.f5822b = 0;
        this.f5823l = false;
        this.f5821a = str;
    }

    public static j b(String str) {
        return new j(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        com.anythink.core.common.v.b.c.a().c(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aE, new Runnable() { // from class: com.anythink.core.common.m.B
            @Override // java.lang.Runnable
            public final void run() {
                this.f5505b.u();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        a(0, this.f5593i);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 2;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        return new byte[0];
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String k() {
        return "";
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    public static j a(String str, cg cgVar) {
        return new j(str, cgVar);
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        return this.f5821a;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        cg cgVar;
        if (1 != this.f5822b || (cgVar = this.f5824m) == null) {
            return null;
        }
        cgVar.a("200");
        com.anythink.core.common.v.d.a().a(this.f5824m.y(), this.f5824m.z(), com.anythink.core.common.v.d.f8153c, "0");
        com.anythink.core.c.d.c.a(this.f5824m);
        return null;
    }

    private j(String str, cg cgVar) {
        this(str);
        this.f5822b = 1;
        this.f5824m = cgVar;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
        cg cgVar;
        if (1 != this.f5822b || (cgVar = this.f5824m) == null) {
            return;
        }
        int iK = cgVar.k();
        com.anythink.core.common.h.n nVarY = this.f5824m.y();
        by byVarZ = this.f5824m.z();
        if (iK == 50 && com.anythink.core.common.v.d.a().a(nVarY, byVarZ) && !this.f5823l) {
            this.f5823l = true;
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aD, new Runnable() { // from class: com.anythink.core.common.m.A
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5504b.t();
                }
            }), 3000L);
        } else {
            this.f5824m.a(adError.getPlatformCode());
            this.f5824m.b(adError.getPlatformMSG());
            com.anythink.core.common.v.d.a().a(nVarY, byVarZ, com.anythink.core.common.v.d.f8153c, "1");
            com.anythink.core.c.d.c.a(this.f5824m);
        }
    }
}
