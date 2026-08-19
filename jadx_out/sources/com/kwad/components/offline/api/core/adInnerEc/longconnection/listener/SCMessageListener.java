package com.kwad.components.offline.api.core.adInnerEc.longconnection.listener;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public interface SCMessageListener {
    int getPayloadType();

    boolean isSticky();

    void onMessageReceived(byte[] bArr);
}
