package com.smartdigimkt.a0;

import android.text.TextUtils;
import android.view.View;

/* loaded from: classes5.dex */
public final class i extends com.smartdigimkt.a4.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f39241a;

    public i(j jVar) {
        this.f39241a = jVar;
    }

    @Override // com.smartdigimkt.a4.a
    public final int getImpressionMinPercentageViewed() {
        return 50;
    }

    @Override // com.smartdigimkt.a4.a
    public final void recordImpression(View view) {
        g gVar;
        if (!TextUtils.isEmpty(this.f39241a.f39242a)) {
            j jVar = this.f39241a;
            if (!jVar.f39243b.equals(jVar.f39242a)) {
                j jVar2 = this.f39241a;
                int i2 = jVar2.f39244c;
                if (i2 != 2 && i2 != 3) {
                    k kVar = jVar2.f39245d;
                    String str = kVar.f39218a;
                    com.smartdigimkt.y3.h.a(kVar.f39221d, kVar.f39220c, jVar2.f39243b, jVar2.f39242a, 2);
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                j jVar3 = this.f39241a;
                k kVar2 = jVar3.f39245d;
                if (jCurrentTimeMillis - kVar2.f39247i > 5000) {
                    return;
                }
                com.smartdigimkt.y3.h.a(kVar2.f39221d, kVar2.f39220c, jVar3.f39243b, jVar3.f39242a, 0);
                k kVar3 = this.f39241a.f39245d;
                if (kVar3.f39221d.f41644r.f41938h1 == 1 && (gVar = kVar3.f39249k) != null) {
                    this.f39241a.f39245d.f39249k.a(5, gVar.b());
                    return;
                }
                return;
            }
        }
        j jVar4 = this.f39241a;
        k kVar4 = jVar4.f39245d;
        String str2 = kVar4.f39218a;
        com.smartdigimkt.y3.h.a(kVar4.f39221d, kVar4.f39220c, jVar4.f39243b, jVar4.f39242a, 1);
    }
}
