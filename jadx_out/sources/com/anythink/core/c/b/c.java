package com.anythink.core.c.b;

import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.bridge.ATBaseAdAdapter;

/* loaded from: classes2.dex */
public abstract class c implements ATBiddingListener {

    /* renamed from: c, reason: collision with root package name */
    protected ATBaseAdAdapter f1981c;

    public c(ATBaseAdAdapter aTBaseAdAdapter) {
        this.f1981c = aTBaseAdAdapter;
    }

    private void a() {
        this.f1981c = null;
    }
}
