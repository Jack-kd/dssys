package com.anythink.core.common.h;

import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdRequest;
import java.util.Map;

/* loaded from: classes2.dex */
public class ae {

    /* renamed from: a, reason: collision with root package name */
    Map<String, Object> f3691a;

    /* renamed from: b, reason: collision with root package name */
    d f3692b;

    /* renamed from: c, reason: collision with root package name */
    ATAdRequest f3693c;

    /* renamed from: d, reason: collision with root package name */
    ATAdInfo f3694d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f3695e = true;

    public final Map<String, Object> a() {
        return this.f3691a;
    }

    public final d b() {
        return this.f3692b;
    }

    public final ATAdInfo c() {
        return this.f3694d;
    }

    public final ATAdRequest d() {
        return this.f3693c;
    }

    public final boolean e() {
        return this.f3695e;
    }

    public final void f() {
        this.f3695e = false;
    }

    public final void a(Map<String, Object> map) {
        this.f3691a = map;
    }

    public final void a(d dVar) {
        this.f3692b = dVar;
    }

    public final void a(ATAdInfo aTAdInfo) {
        this.f3694d = aTAdInfo;
    }

    public final void a(ATAdRequest aTAdRequest) {
        this.f3693c = aTAdRequest;
    }
}
