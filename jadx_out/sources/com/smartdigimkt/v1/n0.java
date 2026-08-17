package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;

/* loaded from: classes5.dex */
public final class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u0 f44552a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44553b;

    public n0(BaseScreenATView baseScreenATView, u0 u0Var) {
        this.f44553b = baseScreenATView;
        this.f44552a = u0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0053 A[EDGE_INSN: B:56:0x0053->B:26:0x0053 BREAK  A[LOOP:0: B:17:0x0038->B:24:0x004e], EDGE_INSN: B:57:0x0053->B:26:0x0053 BREAK  A[LOOP:0: B:17:0x0038->B:24:0x004e]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0061 A[PHI: r0
      0x0061: PHI (r0v3 java.util.ArrayList) = (r0v2 java.util.ArrayList), (r0v17 java.util.ArrayList) binds: [B:32:0x0065, B:28:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.security.NoSuchAlgorithmException {
        /*
            r10 = this;
            com.smartdigimkt.z4.d r0 = com.smartdigimkt.z4.d.c()
            com.smartdigimkt.a5.a r0 = r0.a()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            com.smartdigimkt.sdk.basead.ui.BaseScreenATView r3 = r10.f44553b
            int r3 = r3.f43276Q
            r4 = 3
            r5 = 0
            r6 = 2
            if (r3 == r6) goto L63
            if (r3 == r4) goto L57
            r7 = 5
            if (r3 == r7) goto L21
            goto L6c
        L21:
            java.util.ArrayList r0 = r0.f39370e0
            if (r0 != 0) goto L2a
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L2a:
            r1 = r0
            int r0 = r1.size()
            r3 = 4
            if (r0 >= r3) goto L34
            r0 = r5
            goto L35
        L34:
            r0 = 1
        L35:
            if (r0 == 0) goto L51
            r7 = r5
        L38:
            if (r7 >= r3) goto L51
            java.lang.Object r8 = r1.get(r7)
            java.lang.String r8 = (java.lang.String) r8
            boolean r9 = android.text.TextUtils.isEmpty(r8)
            if (r9 == 0) goto L47
            goto L53
        L47:
            boolean r8 = com.smartdigimkt.e0.t.a(r4, r8)
            if (r8 != 0) goto L4e
            goto L53
        L4e:
            int r7 = r7 + 1
            goto L38
        L51:
            if (r0 != 0) goto L6c
        L53:
            r1.clear()
            goto L6c
        L57:
            java.util.ArrayList r0 = r0.f39368d0
            if (r0 != 0) goto L61
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            goto L6c
        L61:
            r1 = r0
            goto L6c
        L63:
            java.util.ArrayList r0 = r0.f39367c0
            if (r0 != 0) goto L61
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L6c:
            int r0 = r1.size()
            if (r0 != 0) goto L7f
            com.smartdigimkt.b4.e r0 = com.smartdigimkt.b4.e.a()
            com.smartdigimkt.v1.l0 r1 = new com.smartdigimkt.v1.l0
            r1.<init>(r10, r2)
            r0.a(r1)
            return
        L7f:
            int r0 = r1.size()
            if (r0 <= 0) goto Ld8
            com.smartdigimkt.sdk.basead.ui.BaseScreenATView r0 = r10.f44553b     // Catch: java.lang.Throwable -> La3
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> La3
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()     // Catch: java.lang.Throwable -> La3
            int r0 = r0.widthPixels     // Catch: java.lang.Throwable -> La3
            com.smartdigimkt.sdk.basead.ui.BaseScreenATView r3 = r10.f44553b     // Catch: java.lang.Throwable -> La3
            android.content.res.Resources r3 = r3.getResources()     // Catch: java.lang.Throwable -> La3
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()     // Catch: java.lang.Throwable -> La3
            int r3 = r3.heightPixels     // Catch: java.lang.Throwable -> La3
            int r0 = java.lang.Math.min(r0, r3)     // Catch: java.lang.Throwable -> La3
            int r0 = r0 / r6
            goto La4
        La3:
            r0 = r5
        La4:
            int r3 = r1.size()
        La8:
            if (r5 >= r3) goto Lcb
            java.lang.Object r6 = r1.get(r5)
            int r5 = r5 + 1
            java.lang.String r6 = (java.lang.String) r6
            com.smartdigimkt.sdk.basead.ui.BaseScreenATView r7 = r10.f44553b
            android.content.Context r7 = r7.getContext()
            com.smartdigimkt.t3.m r7 = com.smartdigimkt.t3.m.a(r7)
            com.smartdigimkt.t3.o r8 = new com.smartdigimkt.t3.o
            r8.<init>(r4, r6)
            android.graphics.Bitmap r6 = r7.b(r8, r0, r0)
            if (r6 == 0) goto La8
            r2.add(r6)
            goto La8
        Lcb:
            int r0 = r2.size()
            int r1 = r1.size()
            if (r0 == r1) goto Ld8
            r2.clear()
        Ld8:
            com.smartdigimkt.b4.e r0 = com.smartdigimkt.b4.e.a()
            com.smartdigimkt.v1.m0 r1 = new com.smartdigimkt.v1.m0
            r1.<init>(r10, r2)
            r0.a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.v1.n0.run():void");
    }
}
