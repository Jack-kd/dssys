package com.anythink.core.common.w.a.a;

import com.anythink.core.common.h.aj;
import com.anythink.core.common.h.ak;
import com.anythink.core.common.h.by;
import com.anythink.core.common.w.a.a;
import java.util.List;

/* loaded from: classes2.dex */
public class a implements com.anythink.core.common.w.a.b.c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8369a = "a";

    /* renamed from: b, reason: collision with root package name */
    private aj f8370b;

    @Override // com.anythink.core.common.w.a.b.c
    public final void a(aj ajVar) {
        this.f8370b = ajVar;
    }

    @Override // com.anythink.core.common.w.a.b.b
    public final void b() {
        this.f8370b = null;
    }

    @Override // com.anythink.core.common.w.a.b.c
    public final aj a() {
        return this.f8370b;
    }

    @Override // com.anythink.core.common.w.a.b.c
    public final ak a(by byVar) {
        aj ajVar = this.f8370b;
        if (ajVar == null || byVar == null) {
            return null;
        }
        List<ak> listD = ajVar.d();
        List<ak> listF = this.f8370b.f();
        ak akVarA = a(byVar.G(), listD);
        return (akVarA == null && this.f8370b.b()) ? a(byVar.G(), listF) : akVarA;
    }

    private static ak a(String str, List<ak> list) {
        if (list != null && !list.isEmpty()) {
            for (ak akVar : list) {
                if (str.equals(akVar.c())) {
                    if (akVar.d() != a.C0086a.f8368b || System.currentTimeMillis() <= akVar.a()) {
                        return akVar;
                    }
                    return null;
                }
            }
        }
        return null;
    }
}
