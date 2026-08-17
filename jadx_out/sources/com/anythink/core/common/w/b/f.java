package com.anythink.core.common.w.b;

import android.content.Context;
import com.anythink.core.api.ATSDK;
import com.anythink.core.common.v.p;
import com.anythink.core.e.m;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class f {
    private static void a(Context context, String str, m mVar, b bVar) {
        if (context != null && !ATSDK.isCnSDK() && p.a(context)) {
            h hVar = new h(context, str, mVar, bVar);
            new g(new ArrayList(1), hVar, 0).a(hVar);
        } else if (bVar != null) {
            bVar.a();
        }
    }

    private static void b(Context context, String str, m mVar, b bVar) {
        h hVar = new h(context, str, mVar, bVar);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new e());
        new g(arrayList, hVar, 0).a(hVar);
    }
}
