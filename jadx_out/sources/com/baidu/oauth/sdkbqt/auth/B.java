package com.baidu.oauth.sdkbqt.auth;

import com.baidu.oauth.sdkbqt.auth.i;

/* loaded from: classes2.dex */
public class B extends i.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11767b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B(i iVar) {
        super();
        this.f11767b = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        return this.f11767b.f11794b.containsKey((String) eVar.c().get(0)) ? "1" : "0";
    }
}
