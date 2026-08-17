package com.meishu.sdk.platform.ms.recycler;

import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;

/* loaded from: classes4.dex */
public class e implements RecylcerAdInteractionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f32922a;

    public e(i iVar) {
        this.f32922a = iVar;
    }

    @Override // com.meishu.sdk.core.loader.InteractionListener
    public void onAdClicked() {
        RecylcerAdInteractionListener recylcerAdInteractionListener;
        if (this.f32922a.f32939a.a().getCbc() != 0 || (recylcerAdInteractionListener = this.f32922a.f32942d) == null) {
            return;
        }
        recylcerAdInteractionListener.onAdClicked();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener
    public void onAdRenderFailed() {
    }
}
