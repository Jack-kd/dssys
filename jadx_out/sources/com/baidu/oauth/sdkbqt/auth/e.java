package com.baidu.oauth.sdkbqt.auth;

import com.baidu.oauth.sdkbqt.auth.i;

/* loaded from: classes2.dex */
public class e extends i.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11789b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(i iVar) {
        super();
        this.f11789b = iVar;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.a
    public String a(i.e eVar) {
        String str = (String) eVar.c().get(0);
        if (this.f11789b.f11795c == null) {
            return null;
        }
        this.f11789b.f11795c.a(str);
        return null;
    }
}
