package com.smartdigimkt.q1;

import com.smartdigimkt.v1.p3;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.d1.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f42688a;

    public n(o oVar) {
        this.f42688a = oVar;
    }

    @Override // com.smartdigimkt.d1.b
    public final void a(String str, boolean z2) {
    }

    @Override // com.smartdigimkt.d1.b
    public final void close() {
        this.f42688a.dismiss();
    }

    @Override // com.smartdigimkt.d1.b
    public final void a(String str) {
        try {
            g gVar = this.f42688a.f42694f;
            if (gVar != null) {
                ((p3) gVar).a(str);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.d1.b
    public final void a() {
        this.f42688a.dismiss();
    }

    @Override // com.smartdigimkt.d1.b
    public final void a(boolean z2) {
        try {
            this.f42688a.f42693e.setVisibility(z2 ? 4 : 0);
        } catch (Throwable unused) {
        }
    }
}
