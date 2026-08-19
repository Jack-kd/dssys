package com.kwad.components.core.offline.b.a;

import com.kwad.components.offline.api.core.api.IFlowUuid;

/* loaded from: classes4.dex */
public final class f implements IFlowUuid {
    @Override // com.kwad.components.offline.api.core.api.IFlowUuid
    public final long decryptLongFromBase64(String str) {
        try {
            return com.kwad.components.core.e.b.a.am(str);
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return 0L;
        }
    }

    @Override // com.kwad.components.offline.api.core.api.IFlowUuid
    public final String encryptLongToBase64(long j2) {
        try {
            return com.kwad.components.core.e.b.a.B(j2);
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return null;
        }
    }
}
