package com.baidu.oauth.sdkbqt.auth;

import java.util.Map;
import q.AbstractC1755c;

/* loaded from: classes2.dex */
public class r extends AbstractC1755c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map f11831a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11832b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f11833c;

    public r(i iVar, Map map, String str) {
        this.f11833c = iVar;
        this.f11831a = map;
        this.f11832b = str;
    }

    @Override // q.InterfaceC1754b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(s.c cVar) {
        o.d.b(i.f11793r, "generate sso_hash success, which is " + cVar.f52746o);
        this.f11831a.put("oauth_sso_hash", cVar.f52746o);
        this.f11833c.loadUrl(this.f11832b + i.d(this.f11831a, true));
    }
}
