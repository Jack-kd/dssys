package com.smartdigimkt.a0;

import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.z.w;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class e implements w {

    /* renamed from: a, reason: collision with root package name */
    public w f39227a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f39228b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f39229c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f39230d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f39231e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f39232f;

    public e() {
        this.f39228b = false;
        this.f39229c = false;
        this.f39230d = false;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f39231e = atomicBoolean;
        this.f39232f = false;
        atomicBoolean.set(false);
        this.f39232f = false;
        this.f39228b = false;
        this.f39229c = false;
        this.f39230d = false;
    }

    @Override // com.smartdigimkt.z.w
    public final void a() {
        if (this.f39232f || this.f39228b) {
            return;
        }
        this.f39228b = true;
        w wVar = this.f39227a;
        if (wVar != null) {
            wVar.a();
        }
    }

    @Override // com.smartdigimkt.z.w
    public final void b() {
        if (this.f39232f || this.f39229c) {
            return;
        }
        this.f39229c = true;
        com.smartdigimkt.b4.e.a().a(new c(this));
    }

    @Override // com.smartdigimkt.z.w
    public final void c() {
        this.f39231e.set(false);
        if (this.f39232f || this.f39230d) {
            return;
        }
        this.f39230d = true;
        com.smartdigimkt.b4.e.a().a(new d(this));
    }

    @Override // com.smartdigimkt.z.w
    public final void a(boolean z2) {
        w wVar;
        if (this.f39232f || (wVar = this.f39227a) == null) {
            return;
        }
        wVar.a(z2);
    }

    @Override // com.smartdigimkt.z.w
    public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        w wVar = this.f39227a;
        if (wVar != null) {
            return wVar.a(str, iOfferClickHandler);
        }
        return false;
    }
}
