package com.smartdigimkt.g2;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f40319a;

    public c(d dVar) {
        this.f40319a = dVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:4|(1:44)(2:8|(6:48|10|(5:12|38|13|40|14)(3:18|36|19)|23|(3:47|25|53)(3:46|26|52)|49)(1:45))|27|34|28|50|49) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        r0.printStackTrace();
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
        L0:
            com.smartdigimkt.g2.d r0 = r8.f40319a
            boolean r1 = r0.f40329j
            if (r1 == 0) goto L75
            android.view.ViewGroup r1 = r0.f40326g
            if (r1 == 0) goto L6a
            android.view.View r0 = r0.c()
            android.view.ViewParent r0 = r0.getParent()
            boolean r0 = r0 instanceof android.view.View
            if (r0 == 0) goto L6a
            com.smartdigimkt.g2.d r0 = r8.f40319a
            com.smartdigimkt.a4.f r1 = r0.f40334o
            android.view.View r0 = r0.c()
            android.view.ViewParent r0 = r0.getParent()
            android.view.View r0 = (android.view.View) r0
            com.smartdigimkt.g2.d r2 = r8.f40319a
            android.view.View r2 = r2.c()
            r3 = 0
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
            r5 = 50
            boolean r0 = r1.a(r0, r2, r5, r4)
            if (r0 == 0) goto L6a
            com.smartdigimkt.g2.d r0 = r8.f40319a
            com.smartdigimkt.g2.b r0 = r0.f40328i
            r1 = 200(0xc8, double:9.9E-322)
            if (r0 == 0) goto L4c
            r4 = 1
            r0.sendEmptyMessage(r4)     // Catch: java.lang.Throwable -> L43
        L43:
            java.lang.Thread.sleep(r1)     // Catch: java.lang.Throwable -> L47
            goto L56
        L47:
            r0 = move-exception
            r0.printStackTrace()
            goto L56
        L4c:
            r4 = 10
            java.lang.Thread.sleep(r4)     // Catch: java.lang.Throwable -> L52
            goto L56
        L52:
            r0 = move-exception
            r0.printStackTrace()
        L56:
            com.smartdigimkt.g2.d r0 = r8.f40319a
            long r4 = r0.f40331l
            long r6 = r0.f40332m
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 < 0) goto L66
            r0.f40329j = r3
            r1 = 0
            r0.f40330k = r1
            goto L0
        L66:
            long r4 = r4 + r1
            r0.f40331l = r4
            goto L0
        L6a:
            r0 = 1000(0x3e8, double:4.94E-321)
            java.lang.Thread.sleep(r0)     // Catch: java.lang.Throwable -> L70
            goto L0
        L70:
            r0 = move-exception
            r0.printStackTrace()
            goto L0
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.g2.c.run():void");
    }
}
