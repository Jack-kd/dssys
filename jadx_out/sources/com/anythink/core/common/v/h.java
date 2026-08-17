package com.anythink.core.common.v;

import android.util.Log;
import com.anythink.core.api.ATAdInfo;

/* loaded from: classes2.dex */
public class h {
    public static void a(String str, String str2, ATAdInfo aTAdInfo, boolean z2) {
        if (aTAdInfo != null) {
            return;
        }
        try {
            com.anythink.core.common.u.f.b("ATAdInfo is null", String.format("An exception occurred for placementId (%s) in the method %s. External adInfo is null: %s", str, str2, Boolean.valueOf(z2)), com.anythink.core.common.d.s.b().r());
        } catch (Throwable th) {
            Log.e(h.class.getSimpleName(), "sendATAdInfoNullPointException error: " + th.getMessage());
        }
    }
}
