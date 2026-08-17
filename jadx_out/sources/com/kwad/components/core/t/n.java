package com.kwad.components.core.t;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.components.core.e.d.a;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class n {
    public static boolean e(@NonNull AdTemplate adTemplate, boolean z2) {
        if (!z2 && com.kwad.sdk.core.response.helper.b.dQ(com.kwad.sdk.core.response.helper.e.eO(adTemplate))) {
            return com.kwad.sdk.core.config.e.Kz();
        }
        return false;
    }

    public static void i(@NonNull Context context, @NonNull AdTemplate adTemplate) {
        com.kwad.components.core.e.d.a.a(new a.C0529a(context).aq(true).aJ(adTemplate));
    }
}
