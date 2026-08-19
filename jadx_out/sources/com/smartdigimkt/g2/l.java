package com.smartdigimkt.g2;

/* loaded from: classes5.dex */
public final class l implements com.smartdigimkt.r2.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f40345a;

    public l(m mVar) {
        this.f40345a = mVar;
    }

    @Override // com.smartdigimkt.r2.m
    public final void a(int i2, int i3) {
        switch (i3) {
            case 36:
                break;
            case 37:
                if (this.f40345a.f40347b.f40351r < 2) {
                    return;
                }
                break;
            case 38:
                if (this.f40345a.f40347b.f40351r < 3) {
                    return;
                }
                break;
            default:
                return;
        }
        a aVar = this.f40345a.f40347b.f40324e;
        if (aVar != null) {
            aVar.a(i2, i3);
        }
    }
}
