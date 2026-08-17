package com.bytedance.sdk.openadsdk;

import com.byazt.kj.hp;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 2500})
/* loaded from: classes3.dex */
public abstract class TTImage {
    public abstract double getDuration();

    public abstract int getHeight();

    public abstract String getImageUrl();

    public abstract int getWidth();

    public abstract boolean isValid();
}
