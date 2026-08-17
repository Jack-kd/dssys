package com.baidu.oauth.sdkbqt.auth;

import q.AbstractC1755c;

/* loaded from: classes2.dex */
public class s extends AbstractC1755c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f11834a;

    public s(i iVar) {
        this.f11834a = iVar;
    }

    @Override // q.InterfaceC1754b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(s.c cVar) {
        i iVar = this.f11834a;
        iVar.loadUrl(iVar.y(cVar.f52746o));
    }
}
