package com.smartdigimkt.q4;

import com.smartdigimkt.sdk.api.AdError;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class i implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f42863a;

    public i(n nVar) {
        this.f42863a = nVar;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
        synchronized (this.f42863a.f42868k) {
            if (this.f42863a.f42867j != null) {
                try {
                    Iterator it = this.f42863a.f42867j.iterator();
                    while (it.hasNext()) {
                        ((com.smartdigimkt.l4.b) it.next()).a(i2);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        synchronized (this.f42863a.f42868k) {
            if (this.f42863a.f42867j != null) {
                try {
                    Iterator it = this.f42863a.f42867j.iterator();
                    while (it.hasNext()) {
                        ((com.smartdigimkt.l4.b) it.next()).a(i2, obj);
                    }
                    this.f42863a.f42867j.clear();
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        synchronized (this.f42863a.f42868k) {
            if (this.f42863a.f42867j != null) {
                try {
                    Iterator it = this.f42863a.f42867j.iterator();
                    while (it.hasNext()) {
                        ((com.smartdigimkt.l4.b) it.next()).a(i2, str, adError);
                    }
                    this.f42863a.f42867j.clear();
                } catch (Throwable unused) {
                }
            }
        }
    }
}
