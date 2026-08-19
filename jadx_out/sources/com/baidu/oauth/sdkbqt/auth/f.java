package com.baidu.oauth.sdkbqt.auth;

import com.baidu.oauth.sdkbqt.auth.i;

/* loaded from: classes2.dex */
public class f extends i.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11790b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i iVar) {
        super();
        this.f11790b = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        if (this.f11790b.canGoBack()) {
            this.f11790b.goBack();
            return null;
        }
        this.f11790b.v();
        return null;
    }
}
