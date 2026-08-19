package com.smartdigimkt.v0;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f44421a;

    public a(int i2) {
        this.f44421a = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.content.Context r12) {
        /*
            r11 = this;
            int r0 = r11.f44421a
            r1 = 7
            r0 = r0 & r1
            r2 = 2
            r3 = 23
            r4 = 0
            r5 = 16
            r6 = 1
            if (r0 != 0) goto Lf
            goto L73
        Lf:
            java.lang.String r7 = "connectivity"
            java.lang.Object r7 = r12.getSystemService(r7)
            android.net.ConnectivityManager r7 = (android.net.ConnectivityManager) r7
            android.net.NetworkInfo r8 = r7.getActiveNetworkInfo()
            if (r8 == 0) goto Lc4
            boolean r9 = r8.isConnected()
            if (r9 != 0) goto L25
            goto Lc4
        L25:
            int r9 = com.smartdigimkt.a1.t.f39303a
            if (r9 >= r3) goto L2a
            goto L46
        L2a:
            android.net.Network r10 = r7.getActiveNetwork()
            if (r10 != 0) goto L32
            goto Lc4
        L32:
            android.net.NetworkCapabilities r10 = r7.getNetworkCapabilities(r10)
            if (r10 == 0) goto L41
            boolean r10 = r10.hasCapability(r5)
            if (r10 != 0) goto L3f
            goto L41
        L3f:
            r10 = r4
            goto L42
        L41:
            r10 = r6
        L42:
            if (r10 == 0) goto L46
            goto Lc4
        L46:
            if (r0 != r6) goto L49
            goto L73
        L49:
            r10 = 3
            if (r0 != r10) goto L52
            boolean r0 = r8.isRoaming()
            r0 = r0 ^ r6
            goto L71
        L52:
            if (r9 < r5) goto L59
            boolean r1 = r7.isActiveNetworkMetered()
            goto L68
        L59:
            int r7 = r8.getType()
            if (r7 == r6) goto L67
            if (r7 == r1) goto L67
            r1 = 9
            if (r7 == r1) goto L67
            r1 = r6
            goto L68
        L67:
            r1 = r4
        L68:
            if (r0 != r2) goto L6d
            r0 = r1 ^ 1
            goto L71
        L6d:
            r7 = 4
            if (r0 != r7) goto Lbe
            r0 = r1
        L71:
            if (r0 == 0) goto Lc4
        L73:
            int r0 = r11.f44421a
            r0 = r0 & r5
            if (r0 == 0) goto L93
            android.content.IntentFilter r0 = new android.content.IntentFilter
            java.lang.String r1 = "android.intent.action.BATTERY_CHANGED"
            r0.<init>(r1)
            r1 = 0
            android.content.Intent r0 = r12.registerReceiver(r1, r0)
            if (r0 != 0) goto L87
            goto Lc4
        L87:
            java.lang.String r1 = "status"
            r5 = -1
            int r0 = r0.getIntExtra(r1, r5)
            if (r0 == r2) goto L93
            r1 = 5
            if (r0 != r1) goto Lc4
        L93:
            int r0 = r11.f44421a
            r0 = r0 & 8
            if (r0 == 0) goto Lbd
            java.lang.String r0 = "power"
            java.lang.Object r12 = r12.getSystemService(r0)
            android.os.PowerManager r12 = (android.os.PowerManager) r12
            int r0 = com.smartdigimkt.a1.t.f39303a
            if (r0 < r3) goto Lac
            boolean r12 = r12.isDeviceIdleMode()
            if (r12 != 0) goto Lc4
            goto Lbd
        Lac:
            r1 = 20
            if (r0 < r1) goto Lb7
            boolean r12 = r12.isInteractive()
            if (r12 != 0) goto Lc4
            goto Lbd
        Lb7:
            boolean r12 = r12.isScreenOn()
            if (r12 != 0) goto Lc4
        Lbd:
            return r6
        Lbe:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            r12.<init>()
            throw r12
        Lc4:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.v0.a.a(android.content.Context):boolean");
    }

    public final String toString() {
        return super.toString();
    }
}
