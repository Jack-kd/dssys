package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseATView;

/* loaded from: classes5.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.p1.u f44599a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f44600b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f44601c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ BaseATView f44602d;

    public s(BaseATView baseATView, com.smartdigimkt.p1.u uVar, int i2, int i3) {
        this.f44602d = baseATView;
        this.f44599a = uVar;
        this.f44600b = i2;
        this.f44601c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseATView baseATView = this.f44602d;
        com.smartdigimkt.p1.u uVar = this.f44599a;
        int i2 = this.f44600b;
        int i3 = this.f44601c;
        int i4 = BaseATView.f43211D;
        baseATView.a(uVar, i2, i3);
    }
}
