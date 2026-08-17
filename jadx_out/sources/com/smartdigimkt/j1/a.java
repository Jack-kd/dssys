package com.smartdigimkt.j1;

import android.content.Context;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.sdk.basead.ui.BaseBannerATView;
import com.smartdigimkt.sdk.basead.ui.MraidBannerATView;
import com.smartdigimkt.sdk.basead.ui.SdkBannerATView;

/* loaded from: classes5.dex */
public final class a extends f {
    public a(Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.a5.f fVar) {
        super(context, aVar, fVar);
    }

    @Override // com.smartdigimkt.j1.f
    public final void a() {
        super.a();
        this.f41070f = null;
    }

    public final BaseBannerATView d() {
        com.smartdigimkt.m3.k kVar;
        com.smartdigimkt.l1.c cVar = this.f41073i;
        if (cVar == null) {
            return null;
        }
        Context context = this.f41066b;
        if (cVar.f41620e == null && (kVar = cVar.f41616a) != null && ((kVar.f41835z != 2 || kVar.f41797R) && t.a(kVar, cVar.f41617b))) {
            if (cVar.f41616a.j()) {
                cVar.f41620e = new MraidBannerATView(context, cVar.f41617b, cVar.f41616a, cVar.f41618c);
            } else {
                cVar.f41620e = new SdkBannerATView(context, cVar.f41617b, cVar.f41616a, cVar.f41618c);
            }
        }
        return cVar.f41620e;
    }
}
