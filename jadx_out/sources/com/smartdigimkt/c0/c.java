package com.smartdigimkt.c0;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class c implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.i0.d f39618a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f39619b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f39620c;

    public c(d dVar, com.smartdigimkt.i0.d dVar2, boolean z2) {
        this.f39620c = dVar;
        this.f39618a = dVar2;
        this.f39619b = z2;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        this.f39618a.getClass();
        synchronized (this.f39620c) {
            try {
                this.f39620c.f39624c.remove(this.f39618a.f40642a);
                if (this.f39619b) {
                    this.f39620c.a(this.f39618a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f39618a.getClass();
        synchronized (this.f39620c) {
            try {
                this.f39620c.f39624c.remove(this.f39618a.f40642a);
                if (!this.f39619b) {
                    this.f39620c.b(this.f39618a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
