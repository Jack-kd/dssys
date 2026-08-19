package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Result;
import kotlinx.coroutines.flow.s0;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: b, reason: collision with root package name */
    public c[] f51715b;

    /* renamed from: c, reason: collision with root package name */
    public int f51716c;

    /* renamed from: d, reason: collision with root package name */
    public int f51717d;

    /* renamed from: e, reason: collision with root package name */
    public u f51718e;

    public final s0 e() {
        u uVar;
        synchronized (this) {
            uVar = this.f51718e;
            if (uVar == null) {
                uVar = new u(this.f51716c);
                this.f51718e = uVar;
            }
        }
        return uVar;
    }

    public final c h() {
        c cVarI;
        u uVar;
        synchronized (this) {
            try {
                c[] cVarArrJ = this.f51715b;
                if (cVarArrJ == null) {
                    cVarArrJ = j(2);
                    this.f51715b = cVarArrJ;
                } else if (this.f51716c >= cVarArrJ.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(cVarArrJ, cVarArrJ.length * 2);
                    kotlin.jvm.internal.j.d(objArrCopyOf, "copyOf(...)");
                    this.f51715b = (c[]) objArrCopyOf;
                    cVarArrJ = (c[]) objArrCopyOf;
                }
                int i2 = this.f51717d;
                do {
                    cVarI = cVarArrJ[i2];
                    if (cVarI == null) {
                        cVarI = i();
                        cVarArrJ[i2] = cVarI;
                    }
                    i2++;
                    if (i2 >= cVarArrJ.length) {
                        i2 = 0;
                    }
                    kotlin.jvm.internal.j.c(cVarI, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!cVarI.a(this));
                this.f51717d = i2;
                this.f51716c++;
                uVar = this.f51718e;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (uVar != null) {
            uVar.Z(1);
        }
        return cVarI;
    }

    public abstract c i();

    public abstract c[] j(int i2);

    public final void k(c cVar) {
        u uVar;
        int i2;
        kotlin.coroutines.e[] eVarArrB;
        synchronized (this) {
            try {
                int i3 = this.f51716c - 1;
                this.f51716c = i3;
                uVar = this.f51718e;
                if (i3 == 0) {
                    this.f51717d = 0;
                }
                kotlin.jvm.internal.j.c(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                eVarArrB = cVar.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (kotlin.coroutines.e eVar : eVarArrB) {
            if (eVar != null) {
                Result.Companion companion = Result.INSTANCE;
                eVar.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
            }
        }
        if (uVar != null) {
            uVar.Z(-1);
        }
    }

    public final int l() {
        return this.f51716c;
    }

    public final c[] m() {
        return this.f51715b;
    }
}
