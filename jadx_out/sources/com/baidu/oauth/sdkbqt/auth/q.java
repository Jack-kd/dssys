package com.baidu.oauth.sdkbqt.auth;

import com.baidu.oauth.sdkbqt.auth.i;

/* loaded from: classes2.dex */
public class q extends i.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11830b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(i iVar) {
        super();
        this.f11830b = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        o.d.b(i.f11793r, "user has clicked Authorized login");
        if (this.f11830b.f11808p == null) {
            return null;
        }
        this.f11830b.f11808p.f11815a.a((String) eVar.c().get(0));
        return null;
    }
}
