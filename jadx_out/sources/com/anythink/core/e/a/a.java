package com.anythink.core.e.a;

import com.anythink.core.common.m.p;
import com.anythink.core.common.m.s;
import com.anythink.core.common.t.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class a extends p {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8633a = "a";

    /* renamed from: h, reason: collision with root package name */
    public static final int f8634h = 0;

    /* renamed from: i, reason: collision with root package name */
    public static final int f8635i = 1;

    /* renamed from: b, reason: collision with root package name */
    private List<Integer> f8636b;

    /* renamed from: j, reason: collision with root package name */
    com.anythink.core.common.t.a f8637j;

    /* renamed from: k, reason: collision with root package name */
    d f8638k;

    /* renamed from: l, reason: collision with root package name */
    d f8639l;

    /* renamed from: m, reason: collision with root package name */
    boolean f8640m;

    /* renamed from: n, reason: collision with root package name */
    boolean f8641n;

    /* renamed from: o, reason: collision with root package name */
    boolean f8642o;

    /* renamed from: p, reason: collision with root package name */
    boolean f8643p;

    /* renamed from: q, reason: collision with root package name */
    int f8644q;

    public a(boolean z2, s sVar) {
        super(sVar);
        this.f8636b = new ArrayList(4);
        this.f8644q = 0;
        this.f8641n = z2;
        this.f8637j = c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f8640m) {
            return;
        }
        this.f8640m = true;
        if (!b()) {
            e();
            return;
        }
        d dVar = new d(e.dq, new Runnable() { // from class: com.anythink.core.e.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                a aVar = a.this;
                aVar.f8643p = true;
                if (aVar.g()) {
                    return;
                }
                a.this.e();
            }
        });
        this.f8639l = dVar;
        this.f8637j.a(dVar, d());
        a(1, (p) this);
    }

    public abstract void a(int i2, p pVar);

    public abstract void a(boolean z2, int i2);

    public abstract void b(int i2, Object obj);

    public abstract boolean b();

    public abstract long c();

    public abstract long d();

    public abstract void e();

    public final void f() {
        d dVar = new d(e.dp, new Runnable() { // from class: com.anythink.core.e.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                a aVar = a.this;
                aVar.f8642o = true;
                if (aVar.g()) {
                    return;
                }
                a.this.j();
            }
        });
        this.f8638k = dVar;
        this.f8637j.a(dVar, c());
        a(0, (p) this);
    }

    public final boolean g() {
        return this.f8636b.contains(0);
    }

    public final boolean h() {
        return this.f8642o;
    }

    public final boolean i() {
        return this.f8643p;
    }

    @Override // com.anythink.core.common.m.p
    public final void a(int i2, Object obj) {
        if (i2 == 0) {
            this.f8644q = 1;
        }
        a(i2, true);
        this.f8636b.add(Integer.valueOf(i2));
        a(true, i2);
        if (i2 == 0 && this.f8636b.size() == 2) {
            b(i2, obj);
        }
    }

    @Override // com.anythink.core.common.m.p
    public final void a(int i2) {
        if (i2 == 0) {
            this.f8644q = 2;
        }
        a(i2, false);
        a(false, i2);
        j();
    }

    private void a(int i2, boolean z2) {
        d dVar;
        d dVar2;
        if (i2 == 0 && (dVar2 = this.f8638k) != null && !this.f8642o) {
            this.f8637j.a(dVar2);
            this.f8638k = null;
        } else {
            if (i2 != 1 || (dVar = this.f8639l) == null || this.f8643p) {
                return;
            }
            if (z2 || this.f8644q != 0) {
                this.f8637j.a(dVar);
                this.f8639l = null;
            }
        }
    }
}
