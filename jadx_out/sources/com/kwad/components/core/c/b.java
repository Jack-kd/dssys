package com.kwad.components.core.c;

import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ae;

/* loaded from: classes4.dex */
public final class b {
    private static void ai(String str) {
        if (oL() && com.kwad.sdk.o.Gs().Fx()) {
            ae.V(ServiceProvider.getContext(), str);
        }
    }

    public static void b(e eVar) {
        ai("使用缓存策略: " + eVar.oQ());
    }

    public static boolean oL() {
        return false;
    }
}
