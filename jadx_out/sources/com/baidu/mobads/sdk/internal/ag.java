package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;

/* loaded from: classes2.dex */
class ag implements IOAdEventListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f10979a;

    public ag(ae aeVar) {
        this.f10979a = aeVar;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEventListener
    public void run(IOAdEvent iOAdEvent) {
        if (iOAdEvent != null) {
            this.f10979a.x();
        }
    }
}
