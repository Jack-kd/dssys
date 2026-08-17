package com.smartdigimkt.i1;

/* loaded from: classes5.dex */
public final class g extends b {

    /* renamed from: j, reason: collision with root package name */
    public static volatile long f40716j;

    /* renamed from: d, reason: collision with root package name */
    public float f40717d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f40718e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f40719f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public int f40720g = 10;

    /* renamed from: h, reason: collision with root package name */
    public long f40721h = 5000;

    /* renamed from: i, reason: collision with root package name */
    public a f40722i;

    @Override // com.smartdigimkt.i1.d
    public final void a(f fVar) {
        this.f40720g = fVar.f40712b;
        this.f40721h = fVar.f40715e;
    }

    @Override // com.smartdigimkt.i1.d
    public final void a(a aVar) {
        this.f40722i = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    @Override // com.smartdigimkt.i1.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.hardware.SensorEvent r13) {
        /*
            r12 = this;
            com.smartdigimkt.i1.a r0 = r12.f40722i
            r1 = 0
            if (r0 == 0) goto L83
            float[] r0 = r13.values
            if (r0 == 0) goto L83
            int r2 = r0.length
            r3 = 3
            if (r2 < r3) goto L83
            r2 = r0[r1]
            float r2 = -r2
            r3 = 1
            r4 = r0[r3]
            float r4 = -r4
            r5 = 2
            r0 = r0[r5]
            float r0 = -r0
            r12.b(r13)
            float r13 = r12.f40717d
            r5 = 0
            int r6 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
            if (r6 == 0) goto L2f
            float r13 = r2 - r13
            float r13 = java.lang.Math.abs(r13)
            int r6 = r12.f40720g
            float r6 = (float) r6
            int r13 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
            if (r13 > 0) goto L55
        L2f:
            float r13 = r12.f40718e
            int r6 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
            if (r6 == 0) goto L42
            float r13 = r4 - r13
            float r13 = java.lang.Math.abs(r13)
            int r6 = r12.f40720g
            float r6 = (float) r6
            int r13 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
            if (r13 > 0) goto L55
        L42:
            float r13 = r12.f40719f
            int r6 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
            if (r6 == 0) goto L7d
            float r13 = r0 - r13
            float r13 = java.lang.Math.abs(r13)
            int r6 = r12.f40720g
            float r6 = (float) r6
            int r13 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
            if (r13 <= 0) goto L7d
        L55:
            long r6 = java.lang.System.currentTimeMillis()
            long r8 = com.smartdigimkt.i1.g.f40716j
            long r8 = r6 - r8
            long r10 = r12.f40721h
            int r13 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r13 <= 0) goto L7d
            r12.a()
            com.smartdigimkt.i1.a r13 = r12.f40722i
            boolean r13 = r13.a()
            if (r13 == 0) goto L7d
            com.smartdigimkt.i1.g.f40716j = r6
            r12.f40691a = r5
            r12.f40692b = r5
            r12.f40693c = r5
            r12.f40717d = r5
            r12.f40718e = r5
            r12.f40719f = r5
            return r3
        L7d:
            r12.f40717d = r2
            r12.f40718e = r4
            r12.f40719f = r0
        L83:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.i1.g.a(android.hardware.SensorEvent):boolean");
    }
}
