package com.smartdigimkt.k2;

import com.smartdigimkt.v1.v1;

/* loaded from: classes5.dex */
public final class x implements v1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f41356a;

    public x(y yVar) {
        this.f41356a = yVar;
    }

    @Override // com.smartdigimkt.v1.v1
    public final boolean a() {
        boolean z2;
        y yVar = this.f41356a;
        if (com.smartdigimkt.r2.n.a(yVar.f41363o, yVar.f41306c)) {
            int i2 = yVar.f41308e;
            z2 = (i2 == 1 || i2 == 2) ? yVar.f41361m : i2 != 3 ? true : !yVar.f41362n;
        } else {
            z2 = false;
        }
        if (!z2) {
            return false;
        }
        e eVar = this.f41356a.f41311h;
        if (eVar != null) {
            eVar.a(4, 5);
        }
        return true;
    }
}
