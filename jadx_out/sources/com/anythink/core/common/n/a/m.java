package com.anythink.core.common.n.a;

import java.net.InetAddress;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private final InetAddress[] f6029a;

    /* renamed from: b, reason: collision with root package name */
    private final i f6030b;

    public m(InetAddress[] inetAddressArr, i iVar) {
        this.f6029a = inetAddressArr;
        this.f6030b = iVar;
    }

    private i c() {
        return this.f6030b;
    }

    public final InetAddress[] a() {
        return this.f6029a;
    }

    public final f b() {
        i iVar = this.f6030b;
        if (iVar != null) {
            return iVar.a();
        }
        return null;
    }
}
