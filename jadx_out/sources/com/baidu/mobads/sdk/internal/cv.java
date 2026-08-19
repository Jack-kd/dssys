package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import java.util.Map;

/* loaded from: classes2.dex */
class cv implements IOAdEventListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cu f11415a;

    public cv(cu cuVar) {
        this.f11415a = cuVar;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEventListener
    public void run(IOAdEvent iOAdEvent) {
        if (iOAdEvent != null) {
            this.f11415a.c((Map<String, Object>) iOAdEvent.getData());
        }
    }
}
