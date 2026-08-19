package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;

/* loaded from: classes2.dex */
class cw implements IOAdEventListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cu f11416a;

    public cw(cu cuVar) {
        this.f11416a = cuVar;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEventListener
    public void run(IOAdEvent iOAdEvent) {
        if (iOAdEvent != null) {
            this.f11416a.g();
        }
    }
}
