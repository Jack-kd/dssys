package com.kwad.components.core.offline.b.a;

import com.kwad.components.offline.api.core.network.IIdc;

/* loaded from: classes4.dex */
public final class p implements IIdc {
    @Override // com.kwad.components.offline.api.core.network.IIdc
    public final String hostForAPI(String str) {
        if (str.equals("api")) {
            return com.kwad.sdk.i.EI();
        }
        return "https://" + com.kwad.sdk.core.network.idc.a.Mo().Z(str, null);
    }
}
