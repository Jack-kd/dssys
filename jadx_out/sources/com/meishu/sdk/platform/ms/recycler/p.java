package com.meishu.sdk.platform.ms.recycler;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes4.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f33057a;

    /* renamed from: b, reason: collision with root package name */
    public final View f33058b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f33059c = false;

    public class b extends r {

        /* renamed from: n, reason: collision with root package name */
        public final /* synthetic */ q f33064n;

        /* renamed from: o, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f33065o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view, int i2, q qVar, ViewGroup viewGroup) {
            super(view, i2);
            this.f33064n = qVar;
            this.f33065o = viewGroup;
        }

        @Override // com.meishu.sdk.platform.ms.recycler.r
        public void a(MotionEvent motionEvent) {
            p.this.f33059c = false;
        }

        @Override // com.meishu.sdk.platform.ms.recycler.r
        public void a(float f2, float f3, long j2, float f4, float f5, int i2) {
            if (this.f33064n == null || p.this.f33059c) {
                return;
            }
            p.this.f33059c = true;
            this.f33064n.a(this.f33065o, f2, f3, j2, f4, f5, i2);
        }
    }

    public p(FrameLayout frameLayout, View view) {
        this.f33057a = frameLayout;
        this.f33058b = view;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002a A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {all -> 0x0043, blocks: (B:15:0x0026, B:17:0x002a), top: B:22:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.view.ViewGroup r10, int r11, com.meishu.sdk.platform.ms.recycler.q r12) {
        /*
            r9 = this;
            r7 = 1
            com.meishu.sdk.platform.ms.recycler.r[] r4 = new com.meishu.sdk.platform.ms.recycler.r[r7]
            r8 = 0
            android.widget.FrameLayout r0 = r9.f33057a     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L21
            com.meishu.sdk.platform.ms.recycler.p$a r0 = new com.meishu.sdk.platform.ms.recycler.p$a     // Catch: java.lang.Throwable -> L1e
            android.view.View r2 = r10.getChildAt(r8)     // Catch: java.lang.Throwable -> L1e
            r1 = r9
            r6 = r10
            r3 = r11
            r5 = r12
            r0.<init>(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L1e
            r6 = r4
            android.widget.FrameLayout r2 = r9.f33057a     // Catch: java.lang.Throwable -> L1c
            r2.setOnTouchListener(r0)     // Catch: java.lang.Throwable -> L1c
            goto L26
        L1c:
            r0 = move-exception
            goto L23
        L1e:
            r0 = move-exception
            r6 = r4
            goto L23
        L21:
            r6 = r4
            goto L26
        L23:
            r0.printStackTrace()
        L26:
            android.view.View r0 = r9.f33058b     // Catch: java.lang.Throwable -> L43
            if (r0 == 0) goto L47
            com.meishu.sdk.platform.ms.recycler.p$b r0 = new com.meishu.sdk.platform.ms.recycler.p$b     // Catch: java.lang.Throwable -> L43
            android.view.View r2 = r10.getChildAt(r8)     // Catch: java.lang.Throwable -> L43
            r1 = r9
            r5 = r10
            r3 = r11
            r4 = r12
            r0.<init>(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L43
            r6[r8] = r0     // Catch: java.lang.Throwable -> L43
            r0.f33070c = r8     // Catch: java.lang.Throwable -> L43
            r0.f33071d = r7     // Catch: java.lang.Throwable -> L43
            android.view.View r2 = r9.f33058b     // Catch: java.lang.Throwable -> L43
            r2.setOnTouchListener(r0)     // Catch: java.lang.Throwable -> L43
            goto L47
        L43:
            r0 = move-exception
            r0.printStackTrace()
        L47:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.ms.recycler.p.a(android.view.ViewGroup, int, com.meishu.sdk.platform.ms.recycler.q):void");
    }

    public class a extends r {

        /* renamed from: n, reason: collision with root package name */
        public final /* synthetic */ r[] f33060n;

        /* renamed from: o, reason: collision with root package name */
        public final /* synthetic */ q f33061o;

        /* renamed from: p, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f33062p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view, int i2, r[] rVarArr, q qVar, ViewGroup viewGroup) {
            super(view, i2);
            this.f33060n = rVarArr;
            this.f33061o = qVar;
            this.f33062p = viewGroup;
        }

        @Override // com.meishu.sdk.platform.ms.recycler.r
        public void a(MotionEvent motionEvent) {
            p.this.f33059c = false;
            try {
                r rVar = this.f33060n[0];
                if (rVar != null) {
                    rVar.b(motionEvent);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.platform.ms.recycler.r
        public void a(float f2, float f3, long j2, float f4, float f5, int i2) {
            if (this.f33061o == null || p.this.f33059c) {
                return;
            }
            p.this.f33059c = true;
            this.f33061o.a(this.f33062p, f2, f3, j2, f4, f5, i2);
        }
    }
}
