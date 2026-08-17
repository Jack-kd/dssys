package com.meishu.sdk.core.loader;

import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;

/* loaded from: classes4.dex */
public interface ShareInteractionListener extends InteractionListener, RecylcerAdInteractionListener {
    @Override // com.meishu.sdk.core.loader.InteractionListener
    void onAdClosed();

    void onShareButtonClicked(ShareInfo shareInfo);
}
