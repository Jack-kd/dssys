package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;

/* loaded from: classes2.dex */
public interface td {

    public static class a {
        public static td a(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
            return new qi(context, adItemModel, daVar, adTraceModel);
        }
    }

    AdTraceModel a();

    da b();

    AdItemModel c();

    Context getContext();
}
