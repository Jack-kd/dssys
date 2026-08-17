package com.meishu.sdk.platform.ms;

import android.content.Context;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.IAd;
import com.meishu.sdk.core.loader.InteractionListener;

/* loaded from: classes4.dex */
public interface c<T extends InteractionListener> extends IAd<T> {
    AdSlot a();

    AdType b();

    Context getContext();

    int getInteractionType();
}
