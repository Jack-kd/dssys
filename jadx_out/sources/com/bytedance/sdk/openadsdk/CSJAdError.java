package com.bytedance.sdk.openadsdk;

import com.byazt.kj.hp;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 1232})
/* loaded from: classes3.dex */
public abstract class CSJAdError {
    public abstract int getCode();

    public abstract String getMsg();
}
