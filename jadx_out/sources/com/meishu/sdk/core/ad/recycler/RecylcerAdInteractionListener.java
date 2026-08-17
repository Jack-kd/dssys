package com.meishu.sdk.core.ad.recycler;

import com.meishu.sdk.core.loader.InteractionListener;

/* loaded from: classes4.dex */
public interface RecylcerAdInteractionListener extends InteractionListener {
    @Override // com.meishu.sdk.core.loader.InteractionListener
    void onAdClosed();

    @Override // com.meishu.sdk.core.loader.InteractionListener
    void onAdExposure();

    void onAdRenderFailed();
}
