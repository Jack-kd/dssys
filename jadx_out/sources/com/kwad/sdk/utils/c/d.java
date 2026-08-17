package com.kwad.sdk.utils.c;

import android.content.Context;
import com.kwad.sdk.utils.c.b;
import com.kwad.sdk.utils.c.f;
import com.kwad.sdk.utils.cf;
import java.util.List;

/* loaded from: classes4.dex */
public final class d {
    private static boolean bsN = true;
    private static f bsO;
    private static e bsP;
    private static b bsQ;
    private static c bsR;

    public static String eI(Context context) {
        if (bsP == null) {
            bsP = new e();
        }
        return bsP.a(context, bsN);
    }

    public static com.kwad.sdk.k.a.d eJ(Context context) {
        if (bsR == null) {
            bsR = new c();
        }
        return bsR.a(context, bsN);
    }

    public static com.kwad.sdk.core.request.model.b k(boolean z2, int i2) {
        if (bsQ == null) {
            bsQ = new b();
        }
        b.a aVar = new b.a();
        aVar.bsM = z2;
        aVar.aXf = i2;
        return bsQ.a((b) aVar, bsN);
    }

    public static List<cf.a> p(Context context, int i2) {
        if (bsO == null) {
            bsO = new f();
        }
        f.a aVar = new f.a();
        aVar.mContext = context;
        aVar.maxSize = i2;
        return bsO.a(aVar, false);
    }
}
