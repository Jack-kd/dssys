package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import java.util.Map;

/* loaded from: classes2.dex */
class da implements IOAdEventListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cz f11444a;

    public da(cz czVar) {
        this.f11444a = czVar;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEventListener
    public void run(IOAdEvent iOAdEvent) {
        if (iOAdEvent != null) {
            this.f11444a.c((Map<String, Object>) iOAdEvent.getData());
        }
    }
}
