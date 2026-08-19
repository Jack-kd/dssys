package com.kwad.components.core.c;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public class g {
    private static volatile g PB;
    private ConcurrentHashMap<String, WeakReference<Object>> PA = new ConcurrentHashMap<>();

    private static String aD(AdTemplate adTemplate) {
        return com.kwad.sdk.core.response.helper.e.eH(adTemplate) + "-" + com.kwad.sdk.core.response.helper.e.eY(adTemplate);
    }

    private static String b(i iVar) {
        return iVar.oP() + "-" + iVar.pc();
    }

    @NonNull
    public static g oV() {
        if (PB == null) {
            synchronized (g.class) {
                try {
                    if (PB == null) {
                        PB = new g();
                    }
                } finally {
                }
            }
        }
        return PB;
    }

    public final boolean a(i iVar) {
        String strB = b(iVar);
        com.kwad.sdk.core.d.c.d("AdMemCachePool", "contains key: " + strB);
        boolean z2 = false;
        if (!this.PA.containsKey(strB)) {
            return false;
        }
        WeakReference<Object> weakReference = this.PA.get(strB);
        if (weakReference != null && weakReference.get() != null) {
            z2 = true;
        }
        if (z2) {
            com.kwad.sdk.core.d.c.d("AdMemCachePool", "contains ad: " + weakReference.get());
        }
        return z2;
    }

    public final void aC(AdTemplate adTemplate) {
        this.PA.remove(aD(adTemplate));
    }

    public final void add(Object obj) {
        if (obj instanceof com.kwad.components.core.internal.api.a) {
            this.PA.put(aD(((com.kwad.components.core.internal.api.a) obj).getAdTemplate()), new WeakReference<>(obj));
        }
    }
}
