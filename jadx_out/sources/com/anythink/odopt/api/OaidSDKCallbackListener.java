package com.anythink.odopt.api;

import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;

/* loaded from: classes2.dex */
public interface OaidSDKCallbackListener extends IIdentifierListener {
    @Override // com.bun.miitmdid.interfaces.IIdentifierListener
    void OnSupport(boolean z2, IdSupplier idSupplier);

    void onSupport(IdSupplier idSupplier);
}
