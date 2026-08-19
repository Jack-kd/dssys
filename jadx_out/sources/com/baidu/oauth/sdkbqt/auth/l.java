package com.baidu.oauth.sdkbqt.auth;

import com.baidu.oauth.sdkbqt.auth.j;
import q.AbstractC1755c;

/* loaded from: classes2.dex */
public class l implements j.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC1755c f11825a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f11826b;

    public l(k kVar, AbstractC1755c abstractC1755c) {
        this.f11826b = kVar;
        this.f11825a = abstractC1755c;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.j.a
    public void a(long j2) {
        s.c cVar = new s.c();
        cVar.f52746o = new m().b(Long.valueOf(j2));
        cVar.c(0);
        this.f11825a.onSuccess(cVar);
    }
}
