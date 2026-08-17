package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.asnp.adn.ad.publish.ad.unified.view.ASNPUnifiedExpressContainer;
import java.util.List;

/* loaded from: classes2.dex */
public interface yc extends kb {

    public static class a {
        public static yc a(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
            return new yf(context, adItemModel, daVar, adTraceModel);
        }
    }

    void a(Activity activity, ASNPUnifiedExpressContainer aSNPUnifiedExpressContainer, List list);

    List c();

    ef d();

    String g();

    String getAdLogoUrl();

    String getDesc();

    String getIconUrl();

    String getTitle();

    String h();

    u0 i();
}
