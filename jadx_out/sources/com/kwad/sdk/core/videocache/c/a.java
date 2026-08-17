package com.kwad.sdk.core.videocache.c;

import android.content.Context;
import com.kwad.sdk.core.videocache.f;

/* loaded from: classes4.dex */
public final class a {
    private static f baG;

    public static f b(Context context, int i2, int i3) {
        f fVar = baG;
        if (fVar != null) {
            return fVar;
        }
        f fVarC = c(context, i2, i3);
        baG = fVarC;
        return fVarC;
    }

    private static f c(Context context, int i2, int i3) {
        return new f.a(context).aO(536870912L).eN(i2).eO(i3).OY();
    }

    public static f cm(Context context) {
        return b(context, 0, 0);
    }
}
