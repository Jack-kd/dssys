package com.anythink.core.common.inner.c;

/* loaded from: classes2.dex */
public final class f extends b {

    /* renamed from: h, reason: collision with root package name */
    a f4654h;

    /* renamed from: d, reason: collision with root package name */
    public float f4650d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f4651e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f4652f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public long f4653g = 0;

    /* renamed from: i, reason: collision with root package name */
    private int f4655i = 10;

    /* renamed from: j, reason: collision with root package name */
    private long f4656j = 5000;

    @Override // com.anythink.core.common.inner.c.d
    public final void a(e eVar) {
        this.f4655i = eVar.b();
        this.f4656j = eVar.d();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    @Override // com.anythink.core.common.inner.c.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(android.hardware.SensorEvent r12) {
        /*
            r11 = this;
            com.anythink.core.common.inner.c.a r0 = r11.f4654h
            r1 = 0
            if (r0 == 0) goto L7a
            float[] r0 = r12.values
            if (r0 == 0) goto L7a
            int r2 = r0.length
            r3 = 3
            if (r2 < r3) goto L7a
            r2 = r0[r1]
            float r2 = -r2
            r3 = 1
            r4 = r0[r3]
            float r4 = -r4
            r5 = 2
            r0 = r0[r5]
            float r0 = -r0
            r11.a(r12)
            float r12 = r11.f4650d
            r5 = 0
            int r6 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r6 == 0) goto L2f
            float r12 = r2 - r12
            float r12 = java.lang.Math.abs(r12)
            int r6 = r11.f4655i
            float r6 = (float) r6
            int r12 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r12 > 0) goto L55
        L2f:
            float r12 = r11.f4651e
            int r6 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r6 == 0) goto L42
            float r12 = r4 - r12
            float r12 = java.lang.Math.abs(r12)
            int r6 = r11.f4655i
            float r6 = (float) r6
            int r12 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r12 > 0) goto L55
        L42:
            float r12 = r11.f4652f
            int r5 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r5 == 0) goto L74
            float r12 = r0 - r12
            float r12 = java.lang.Math.abs(r12)
            int r5 = r11.f4655i
            float r5 = (float) r5
            int r12 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r12 <= 0) goto L74
        L55:
            long r5 = java.lang.System.currentTimeMillis()
            long r7 = r11.f4653g
            long r7 = r5 - r7
            long r9 = r11.f4656j
            int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r12 <= 0) goto L74
            r11.b()
            com.anythink.core.common.inner.c.a r12 = r11.f4654h
            boolean r12 = r12.a()
            if (r12 == 0) goto L74
            r11.f4653g = r5
            r11.a()
            return r3
        L74:
            r11.f4650d = r2
            r11.f4651e = r4
            r11.f4652f = r0
        L7a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.c.f.b(android.hardware.SensorEvent):boolean");
    }

    @Override // com.anythink.core.common.inner.c.d
    public final void a(a aVar) {
        this.f4654h = aVar;
    }

    @Override // com.anythink.core.common.inner.c.b
    public final void a() {
        super.a();
        this.f4650d = 0.0f;
        this.f4651e = 0.0f;
        this.f4652f = 0.0f;
    }
}
