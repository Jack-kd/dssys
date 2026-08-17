package com.smartdigimkt.i5;

import android.text.TextUtils;
import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class l extends com.smartdigimkt.g5.c {
    @Override // com.smartdigimkt.g5.c
    public final boolean b(com.smartdigimkt.g5.a aVar) {
        if (aVar.f40394a == null || TextUtils.isEmpty(aVar.f40398e)) {
            aVar.a(com.smartdigimkt.k4.b.a("10001", "The context or placementId can not be empty."));
            return false;
        }
        if (!SDKContext.getInstance().f44115d) {
            aVar.a(com.smartdigimkt.k4.b.a("10002", ""));
            return false;
        }
        if (!TextUtils.isEmpty(SDKContext.getInstance().a()) && !TextUtils.isEmpty(SDKContext.getInstance().b())) {
            return true;
        }
        aVar.a(com.smartdigimkt.k4.b.a(ErrorCode.appIdError, ""));
        return false;
    }
}
