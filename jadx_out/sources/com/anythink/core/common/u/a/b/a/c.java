package com.anythink.core.common.u.a.b.a;

import android.text.TextUtils;
import com.anythink.core.common.f.r;
import com.anythink.core.common.h.bw;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.o;
import com.anythink.core.e.d;
import java.util.List;

/* loaded from: classes2.dex */
public class c extends b<o> {

    /* renamed from: a, reason: collision with root package name */
    private final String f7794a = c.class.getSimpleName();

    /* renamed from: c, reason: collision with root package name */
    private boolean f7795c = false;

    @Override // com.anythink.core.common.u.a.b.a.b
    public final /* synthetic */ boolean a(o oVar) {
        return d2(oVar);
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final /* synthetic */ boolean b(o oVar) {
        return c2(oVar);
    }

    /* renamed from: c, reason: avoid collision after fix types in other method */
    private static boolean c2(o oVar) {
        bx bxVar = oVar.f4350b;
        if (bxVar == null || !(bxVar instanceof n)) {
            return false;
        }
        int i2 = oVar.f4349a;
        n nVar = (n) bxVar;
        int iZ = nVar.Z();
        if (iZ == 67) {
            return true;
        }
        String strAS = bxVar.aS();
        if (!TextUtils.isEmpty(nVar.az()) || !TextUtils.isEmpty(nVar.aA())) {
            return true;
        }
        bw bwVarA = d.a().a(i2);
        if (bwVarA != null) {
            List<String> listA = bwVarA.a();
            List<String> listB = bwVarA.b();
            boolean z2 = iZ > 0;
            boolean zIsEmpty = TextUtils.isEmpty(strAS);
            if (z2 && !zIsEmpty) {
                return listB != null && (listB.contains(String.valueOf(iZ)) || listB.contains("0")) && listA != null && listA.contains(strAS);
            }
            if (!z2 && zIsEmpty) {
                return true;
            }
            if (z2) {
                return listB != null && (listB.contains(String.valueOf(iZ)) || listB.contains("0"));
            }
            if (listA != null && listA.contains(strAS)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* renamed from: d, reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean d2(com.anythink.core.common.h.o r6) {
        /*
            com.anythink.core.common.d.s r0 = com.anythink.core.common.d.s.b()
            boolean r0 = r0.A()
            r1 = 1
            if (r0 == 0) goto Lc
            return r1
        Lc:
            com.anythink.core.common.h.bx r0 = r6.f4350b
            r2 = 0
            if (r0 != 0) goto L12
            return r2
        L12:
            com.anythink.core.e.b r3 = com.anythink.core.e.d.a()
            java.util.Map r3 = r3.al()
            if (r3 == 0) goto L42
            int r4 = r6.f4349a
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.Object r3 = r3.get(r4)
            java.util.Map r3 = (java.util.Map) r3
            if (r3 == 0) goto L42
            java.lang.String r4 = r0.aS()
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L39
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)
            goto L43
        L39:
            java.lang.Object r3 = r3.get(r4)
            java.lang.Integer r3 = (java.lang.Integer) r3
            if (r3 == 0) goto L42
            goto L43
        L42:
            r3 = 0
        L43:
            if (r3 == 0) goto L56
            int r4 = r3.intValue()
            if (r4 <= 0) goto L55
            int r6 = r6.f4349a
            int r1 = r3.intValue()
            r0.b(r6, r1)
            goto L56
        L55:
            return r1
        L56:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.u.a.b.a.c.d2(com.anythink.core.common.h.o):boolean");
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final void d(o oVar) {
        if (com.anythink.core.common.u.a.a.a().b() || d2(oVar)) {
            return;
        }
        c(oVar);
        if (c2(oVar)) {
            this.f7795c = true;
            a();
        }
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final boolean b() {
        return com.anythink.core.common.u.a.a.a().b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.anythink.core.common.u.a.b.a.b
    /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void c(o oVar) {
        if (com.anythink.core.common.u.a.a.a().b()) {
            return;
        }
        try {
            com.anythink.core.common.u.a.b.a.a.c cVar = new com.anythink.core.common.u.a.b.a.a.c();
            String string = oVar.a().toString();
            cVar.f7762e = string;
            if (TextUtils.isEmpty(string)) {
                return;
            }
            com.anythink.core.common.u.a.a.b.a(r.a(this.f7766b)).a(cVar);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final void a() {
        if (com.anythink.core.common.u.a.a.a().b()) {
            return;
        }
        new com.anythink.core.common.u.a.b.a.b.c().a(this.f7795c);
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final void c() {
        this.f7795c = false;
    }
}
