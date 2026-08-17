package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;

/* loaded from: classes2.dex */
public interface xc extends kb {

    public static class a {
        public static xc a(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
            return (daVar == null || EnumC1130d.VIDEO != daVar.b()) ? new xf(context, adItemModel, daVar, adTraceModel) : new wf(context, adItemModel, daVar, adTraceModel);
        }
    }

    void a(fe feVar);

    void k();
}
