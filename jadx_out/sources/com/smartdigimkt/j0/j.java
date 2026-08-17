package com.smartdigimkt.j0;

import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes5.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final z f40888a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f40889b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.y0.l f40890c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f40891d;

    /* renamed from: e, reason: collision with root package name */
    public final int f40892e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f40893f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f40894g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f40895h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f40896i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f40897j;

    public j(z zVar, z zVar2, CopyOnWriteArraySet copyOnWriteArraySet, com.smartdigimkt.y0.l lVar, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5) {
        this.f40888a = zVar;
        this.f40889b = copyOnWriteArraySet;
        this.f40890c = lVar;
        this.f40891d = z2;
        this.f40892e = i3;
        this.f40893f = z3;
        this.f40894g = z5 || zVar2.f41052f != zVar.f41052f;
        this.f40895h = (zVar2.f41047a == zVar.f41047a && zVar2.f41048b == zVar.f41048b) ? false : true;
        this.f40896i = zVar2.f41053g != zVar.f41053g;
        this.f40897j = zVar2.f41055i != zVar.f41055i;
    }

    public final void a() {
        if (this.f40895h || this.f40892e == 0) {
            Iterator it = this.f40889b.iterator();
            while (it.hasNext()) {
                ((c0) it.next()).a(this.f40888a.f41047a);
            }
        }
        if (this.f40891d) {
            Iterator it2 = this.f40889b.iterator();
            while (it2.hasNext()) {
                ((c0) it2.next()).e();
            }
        }
        if (this.f40897j) {
            com.smartdigimkt.y0.l lVar = this.f40890c;
            Object obj = this.f40888a.f41055i.f45166d;
            ((com.smartdigimkt.y0.j) lVar).getClass();
            for (c0 c0Var : this.f40889b) {
                z zVar = this.f40888a;
                com.smartdigimkt.w0.k0 k0Var = zVar.f41054h;
                com.smartdigimkt.y0.k kVar = zVar.f41055i.f45165c;
                c0Var.d();
            }
        }
        if (this.f40896i) {
            for (c0 c0Var2 : this.f40889b) {
                boolean z2 = this.f40888a.f41053g;
                c0Var2.c();
            }
        }
        if (this.f40894g) {
            Iterator it3 = this.f40889b.iterator();
            while (it3.hasNext()) {
                ((c0) it3.next()).a(this.f40888a.f41052f);
            }
        }
        if (this.f40893f) {
            Iterator it4 = this.f40889b.iterator();
            while (it4.hasNext()) {
                ((c0) it4.next()).a();
            }
        }
    }
}
