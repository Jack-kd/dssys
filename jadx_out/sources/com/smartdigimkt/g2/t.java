package com.smartdigimkt.g2;

/* loaded from: classes5.dex */
public final class t implements com.smartdigimkt.r2.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f40359a;

    public t(u uVar) {
        this.f40359a = uVar;
    }

    @Override // com.smartdigimkt.r2.m
    public final void a(int i2, int i3) {
        switch (i3) {
            case 33:
            case 35:
                if (this.f40359a.f40360a.f40365t < 2) {
                    return;
                }
                break;
            case 34:
                break;
            default:
                return;
        }
        a aVar = this.f40359a.f40360a.f40324e;
        if (aVar != null) {
            aVar.a(i2, i3);
        }
    }
}
