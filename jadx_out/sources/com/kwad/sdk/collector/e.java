package com.kwad.sdk.collector;

import com.kwad.sdk.utils.r;
import com.kwad.sdk.utils.y;
import java.io.File;
import java.io.IOException;

/* loaded from: classes4.dex */
public final class e {
    public static String dm(String str) {
        try {
            return new String(com.kwad.sdk.core.a.c.LN().encode(r.o(y.X(new File(str)))));
        } catch (IOException e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            return null;
        }
    }
}
