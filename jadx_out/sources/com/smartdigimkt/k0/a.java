package com.smartdigimkt.k0;

import com.smartdigimkt.j0.l0;
import com.smartdigimkt.j0.n0;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public b f41243c;

    /* renamed from: d, reason: collision with root package name */
    public b f41244d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f41246f;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f41241a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final l0 f41242b = new l0();

    /* renamed from: e, reason: collision with root package name */
    public n0 f41245e = n0.f40951a;

    public final b a(b bVar, n0 n0Var) {
        int iA;
        return (n0Var.c() || this.f41245e.c() || (iA = n0Var.a(this.f41245e.a(bVar.f41248b.f44847a, this.f41242b, true).f40932a)) == -1) ? bVar : new b(n0Var.a(iA, this.f41242b, false).f40933b, bVar.f41248b.a(iA));
    }
}
