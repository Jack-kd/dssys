package com.baidu.oauth.sdkbqt.auth;

import q.AbstractC1755c;

/* loaded from: classes2.dex */
public class p extends AbstractC1755c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f11829a;

    public p(o oVar) {
        this.f11829a = oVar;
    }

    @Override // q.InterfaceC1754b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(s.c cVar) {
        this.f11829a.f11828b.loadUrl(this.f11829a.f11828b.y(cVar.f52746o));
    }
}
