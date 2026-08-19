package com.baidu.passbqt.http;

import android.content.Context;
import u.AbstractC1777a;

/* loaded from: classes2.dex */
public class h implements Comparable, Runnable {

    /* renamed from: b, reason: collision with root package name */
    public Context f11880b;

    /* renamed from: c, reason: collision with root package name */
    public c f11881c;

    /* renamed from: d, reason: collision with root package name */
    public j f11882d;

    /* renamed from: e, reason: collision with root package name */
    public Method f11883e;

    /* renamed from: f, reason: collision with root package name */
    public int f11884f;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f11885g = false;

    public h(Method method, Context context, j jVar, int i2, b bVar, c cVar) {
        this.f11884f = i2;
        this.f11883e = method;
        this.f11880b = context;
        this.f11882d = jVar;
        this.f11881c = cVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h hVar) {
        ReqPriority reqPriority = this.f11882d.f11893g;
        ReqPriority reqPriority2 = hVar.f11882d.f11893g;
        return reqPriority == reqPriority2 ? this.f11884f - hVar.f11884f : reqPriority2.ordinal() - reqPriority.ordinal();
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar = this.f11881c;
        if (cVar != null) {
            cVar.h();
        }
        AbstractC1777a.b("PassHttpClientRequest", "network request already run");
        try {
            new e().a(null).f(this);
        } catch (Exception e2) {
            AbstractC1777a.b("PassHttpClientRequest", "PassHttpClientRequestrun " + e2.getMessage());
            c cVar2 = this.f11881c;
            if (cVar2 != null) {
                cVar2.g(e2, e2.getMessage());
            }
        }
        c cVar3 = this.f11881c;
        if (cVar3 != null) {
            cVar3.k();
        }
    }
}
