package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;

/* loaded from: classes2.dex */
public interface ee {

    public static class a {
        public static ee a(Context context, da daVar) {
            return daVar.b() == EnumC1130d.UNIFIED ? new gn(context, daVar) : new cn(context, daVar);
        }
    }

    View a();

    boolean a(AdItemModel adItemModel);

    void b();

    void c();
}
