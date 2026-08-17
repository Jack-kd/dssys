package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.ra;

/* loaded from: classes2.dex */
public final class j9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static final j9 f14655a = new j9();
    }

    public static j9 a() {
        return b.f14655a;
    }

    public ra b(Context context, AdItemModel adItemModel, ra.a aVar) {
        if (adItemModel != null) {
            return a(context, adItemModel, aVar);
        }
        return null;
    }

    private j9() {
    }

    private ra a(Context context, AdItemModel adItemModel, ra.a aVar) {
        return new zl(context, adItemModel, aVar);
    }
}
