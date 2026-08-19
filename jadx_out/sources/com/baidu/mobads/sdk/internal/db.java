package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;

/* loaded from: classes2.dex */
class db implements IOAdEventListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cz f11445a;

    public db(cz czVar) {
        this.f11445a = czVar;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEventListener
    public void run(IOAdEvent iOAdEvent) {
        if (iOAdEvent != null) {
            this.f11445a.z();
        }
    }
}
