package com.smartdigimkt.e0;

import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.File;

/* loaded from: classes5.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39997a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39998b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f39999c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f40000d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f40001e;

    public m(n nVar, String str, String str2, String str3, long j2) {
        this.f40001e = nVar;
        this.f39997a = str;
        this.f39998b = str2;
        this.f39999c = str3;
        this.f40000d = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            WTWebView wTWebView = new WTWebView(SDKContext.getInstance().d());
            try {
                int i2 = this.f40001e.f40006e.f40017h.f41628b;
                Object aVar = (i2 == 1 || i2 == 3) ? new com.smartdigimkt.y2.a() : i2 != 4 ? null : new com.smartdigimkt.z2.a();
                String str = this.f39998b;
                String string = new File(this.f39999c).toURI().toString();
                l lVar = new l(this);
                r rVar = this.f40001e.f40006e;
                com.smartdigimkt.w2.y.a(1, rVar.f40017h, rVar.f40015f, wTWebView, lVar, aVar, str, string);
            } catch (Throwable th) {
                this.f40001e.a(false, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4569L, com.anythink.core.common.inner.b.b.ab + th.getMessage()), 6, com.anythink.core.common.inner.b.b.f4578U + th.getMessage(), 0L, this.f39997a);
            }
        } catch (Throwable th2) {
            this.f40001e.a(false, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4569L, com.anythink.core.common.inner.b.b.ab + th2.getMessage()), 6, com.anythink.core.common.inner.b.b.f4578U + th2.getMessage(), 0L, this.f39997a);
        }
    }
}
