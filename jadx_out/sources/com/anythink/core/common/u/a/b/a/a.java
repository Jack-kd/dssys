package com.anythink.core.common.u.a.b.a;

import android.text.TextUtils;
import com.anythink.core.common.f.r;
import com.anythink.core.common.h.u;
import com.anythink.core.e.d;

/* loaded from: classes2.dex */
public class a extends b<u> {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7753a = "a";

    /* renamed from: c, reason: collision with root package name */
    private boolean f7754c = false;

    @Override // com.anythink.core.common.u.a.b.a.b
    public final /* bridge */ /* synthetic */ boolean a(u uVar) {
        return com.anythink.core.common.u.c.a.a(d.a(), uVar);
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final /* synthetic */ boolean b(u uVar) {
        return c2(uVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008d A[ORIG_RETURN, RETURN] */
    /* renamed from: c, reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean c2(com.anythink.core.common.h.u r8) {
        /*
            java.lang.String r0 = "1004742"
            java.lang.String r1 = r8.f4395c
            boolean r0 = r0.equals(r1)
            r1 = 1
            if (r0 == 0) goto Lc
            return r1
        Lc:
            java.lang.String r0 = r8.f4395c
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r0 == 0) goto L16
            return r2
        L16:
            java.lang.String r0 = r8.f4388T     // Catch: java.lang.Throwable -> L26
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L26
            if (r0 == 0) goto L1f
            goto L26
        L1f:
            java.lang.String r0 = r8.f4388T     // Catch: java.lang.Throwable -> L26
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L26
            goto L27
        L26:
            r0 = r2
        L27:
            java.lang.String r3 = r8.f4387S
            com.anythink.core.e.b r4 = com.anythink.core.e.d.a()
            java.lang.String r8 = r8.f4395c
            com.anythink.core.common.h.bw r8 = r4.f(r8)
            if (r8 == 0) goto L8d
            java.util.List r4 = r8.a()
            java.util.List r8 = r8.b()
            if (r0 <= 0) goto L41
            r5 = r1
            goto L42
        L41:
            r5 = r2
        L42:
            boolean r6 = android.text.TextUtils.isEmpty(r3)
            java.lang.String r7 = "0"
            if (r5 == 0) goto L6a
            if (r6 != 0) goto L6a
            if (r8 == 0) goto L8d
            java.lang.String r0 = java.lang.String.valueOf(r0)
            boolean r0 = r8.contains(r0)
            if (r0 != 0) goto L5e
            boolean r8 = r8.contains(r7)
            if (r8 == 0) goto L8d
        L5e:
            if (r4 == 0) goto L67
            boolean r8 = r4.contains(r3)
            if (r8 == 0) goto L67
            goto L68
        L67:
            r1 = r2
        L68:
            r2 = r1
            goto L8d
        L6a:
            if (r5 != 0) goto L6f
            if (r6 == 0) goto L6f
            goto L68
        L6f:
            if (r5 == 0) goto L84
            if (r8 == 0) goto L67
            java.lang.String r0 = java.lang.String.valueOf(r0)
            boolean r0 = r8.contains(r0)
            if (r0 != 0) goto L68
            boolean r8 = r8.contains(r7)
            if (r8 == 0) goto L67
            goto L68
        L84:
            if (r4 == 0) goto L67
            boolean r8 = r4.contains(r3)
            if (r8 == 0) goto L67
            goto L68
        L8d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.u.a.b.a.a.c2(com.anythink.core.common.h.u):boolean");
    }

    /* renamed from: d, reason: avoid collision after fix types in other method */
    private static boolean d2(u uVar) {
        return com.anythink.core.common.u.c.a.a(d.a(), uVar);
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final boolean b() {
        return com.anythink.core.common.u.a.a.a().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.anythink.core.common.u.a.b.a.b
    /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void c(u uVar) {
        if (com.anythink.core.common.u.a.a.a().c()) {
            return;
        }
        try {
            com.anythink.core.common.u.a.b.a.a.a aVar = new com.anythink.core.common.u.a.b.a.a.a();
            String string = uVar.a().toString();
            aVar.f7762e = string;
            if (TextUtils.isEmpty(string)) {
                return;
            }
            com.anythink.core.common.u.a.a.a.a(r.a(this.f7766b)).a(aVar);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final void d(u uVar) {
        if (com.anythink.core.common.u.a.a.a().c()) {
            return;
        }
        uVar.f4402j = String.valueOf(System.currentTimeMillis());
        if (com.anythink.core.common.u.c.a.a(d.a(), uVar)) {
            return;
        }
        c(uVar);
        if (c2(uVar)) {
            this.f7754c = true;
            a();
        }
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final void a() {
        if (com.anythink.core.common.u.a.a.a().c()) {
            return;
        }
        new com.anythink.core.common.u.a.b.a.b.b().a(this.f7754c);
    }

    @Override // com.anythink.core.common.u.a.b.a.b
    public final void c() {
        this.f7754c = false;
    }
}
