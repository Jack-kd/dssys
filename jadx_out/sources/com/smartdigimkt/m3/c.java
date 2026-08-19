package com.smartdigimkt.m3;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public abstract class c implements Serializable {

    /* renamed from: A, reason: collision with root package name */
    public String f41780A;

    /* renamed from: B, reason: collision with root package name */
    public String f41781B;

    /* renamed from: C, reason: collision with root package name */
    public String f41782C;

    /* renamed from: D, reason: collision with root package name */
    public String f41783D;

    /* renamed from: E, reason: collision with root package name */
    public int f41784E;

    /* renamed from: F, reason: collision with root package name */
    public int f41785F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f41786G;

    /* renamed from: I, reason: collision with root package name */
    public int f41788I;

    /* renamed from: J, reason: collision with root package name */
    public int f41789J;

    /* renamed from: K, reason: collision with root package name */
    public int f41790K;

    /* renamed from: L, reason: collision with root package name */
    public int f41791L;

    /* renamed from: M, reason: collision with root package name */
    public long f41792M;

    /* renamed from: N, reason: collision with root package name */
    public int f41793N;

    /* renamed from: O, reason: collision with root package name */
    public String f41794O;

    /* renamed from: P, reason: collision with root package name */
    public String f41795P;

    /* renamed from: Q, reason: collision with root package name */
    public String f41796Q;

    /* renamed from: S, reason: collision with root package name */
    public String f41798S;

    /* renamed from: W, reason: collision with root package name */
    public String f41802W;

    /* renamed from: X, reason: collision with root package name */
    public String f41803X;

    /* renamed from: Y, reason: collision with root package name */
    public String f41804Y;

    /* renamed from: Z, reason: collision with root package name */
    public String f41805Z;

    /* renamed from: a, reason: collision with root package name */
    public String f41806a;

    /* renamed from: a0, reason: collision with root package name */
    public String f41807a0;

    /* renamed from: b, reason: collision with root package name */
    public String f41808b;

    /* renamed from: b0, reason: collision with root package name */
    public String f41809b0;

    /* renamed from: c, reason: collision with root package name */
    public String f41810c;

    /* renamed from: c0, reason: collision with root package name */
    public String f41811c0;

    /* renamed from: d, reason: collision with root package name */
    public String f41812d;

    /* renamed from: d0, reason: collision with root package name */
    public String f41813d0;

    /* renamed from: e, reason: collision with root package name */
    public String f41814e;

    /* renamed from: f, reason: collision with root package name */
    public String f41815f;

    /* renamed from: g, reason: collision with root package name */
    public String f41816g;

    /* renamed from: h, reason: collision with root package name */
    public String f41817h;

    /* renamed from: i, reason: collision with root package name */
    public String f41818i;

    /* renamed from: j, reason: collision with root package name */
    public String f41819j;

    /* renamed from: k, reason: collision with root package name */
    public String f41820k;

    /* renamed from: l, reason: collision with root package name */
    public String f41821l;

    /* renamed from: m, reason: collision with root package name */
    public String f41822m;

    /* renamed from: n, reason: collision with root package name */
    public int f41823n;

    /* renamed from: o, reason: collision with root package name */
    public int f41824o;

    /* renamed from: p, reason: collision with root package name */
    public int f41825p;

    /* renamed from: q, reason: collision with root package name */
    public String f41826q;

    /* renamed from: r, reason: collision with root package name */
    public String f41827r;

    /* renamed from: s, reason: collision with root package name */
    public String f41828s;

    /* renamed from: t, reason: collision with root package name */
    public String f41829t;

    /* renamed from: u, reason: collision with root package name */
    public String f41830u;

    /* renamed from: v, reason: collision with root package name */
    public String f41831v;

    /* renamed from: w, reason: collision with root package name */
    public e f41832w;

    /* renamed from: x, reason: collision with root package name */
    public String f41833x;

    /* renamed from: y, reason: collision with root package name */
    public String f41834y;

    /* renamed from: z, reason: collision with root package name */
    public int f41835z;

    /* renamed from: H, reason: collision with root package name */
    public int f41787H = -1;

    /* renamed from: R, reason: collision with root package name */
    public boolean f41797R = false;

    /* renamed from: T, reason: collision with root package name */
    public String f41799T = "";

    /* renamed from: U, reason: collision with root package name */
    public String f41800U = "";

    /* renamed from: V, reason: collision with root package name */
    public String f41801V = "";

    public abstract String a();

    public String a(e eVar) {
        return this.f41815f;
    }

    public abstract ArrayList a(e eVar, boolean z2);

    public abstract ArrayList b(e eVar);

    public final synchronized void b(int i2) {
        this.f41788I = i2;
    }

    public final synchronized int c() {
        return this.f41788I;
    }

    public final int d() {
        e eVar = this.f41832w;
        if (eVar == null || eVar.f41986x1 != 1 || TextUtils.isEmpty(eVar.f41980v1) || (this.f41832w.f41915a == 1 && TextUtils.isEmpty(this.f41818i))) {
            return j() ? 2 : 1;
        }
        return 3;
    }

    public abstract int e();

    public final boolean f() {
        return (TextUtils.isEmpty(this.f41828s) || TextUtils.isEmpty(this.f41827r) || TextUtils.isEmpty(this.f41829t) || TextUtils.isEmpty(this.f41830u)) ? false : true;
    }

    public final boolean g() {
        return !TextUtils.isEmpty(this.f41818i);
    }

    public final boolean h() {
        return this.f41824o == 4;
    }

    public final boolean i() {
        e eVar = this.f41832w;
        return eVar != null && eVar.f41873L1 == 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j() {
        /*
            r6 = this;
            int r0 = r6.f41835z
            r1 = 1
            if (r0 != r1) goto L6
            return r1
        L6:
            r2 = 2
            r3 = 0
            if (r0 != r2) goto L70
            com.smartdigimkt.m3.e r0 = r6.f41832w
            int r0 = r0.f41915a
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r0.getClass()
            int r4 = r0.hashCode()
            r5 = -1
            switch(r4) {
                case 48: goto L49;
                case 49: goto L3e;
                case 50: goto L35;
                case 51: goto L2a;
                case 52: goto L1f;
                default: goto L1d;
            }
        L1d:
            r2 = r5
            goto L53
        L1f:
            java.lang.String r2 = "4"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L28
            goto L1d
        L28:
            r2 = 4
            goto L53
        L2a:
            java.lang.String r2 = "3"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L33
            goto L1d
        L33:
            r2 = 3
            goto L53
        L35:
            java.lang.String r4 = "2"
            boolean r0 = r0.equals(r4)
            if (r0 != 0) goto L53
            goto L1d
        L3e:
            java.lang.String r2 = "1"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L47
            goto L1d
        L47:
            r2 = r1
            goto L53
        L49:
            java.lang.String r2 = "0"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L52
            goto L1d
        L52:
            r2 = r3
        L53:
            switch(r2) {
                case 0: goto L5f;
                case 1: goto L57;
                case 2: goto L5f;
                case 3: goto L57;
                case 4: goto L5f;
                default: goto L56;
            }
        L56:
            goto L70
        L57:
            java.lang.String r0 = r6.f41780A
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r0 = r0 ^ r1
            return r0
        L5f:
            java.lang.String r0 = r6.f41818i
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L70
            java.lang.String r0 = r6.f41780A
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L70
            return r1
        L70:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.m3.c.j():boolean");
    }

    public final boolean a(String str) {
        return TextUtils.equals(this.f41818i, str) && !TextUtils.isEmpty(str);
    }

    public final synchronized int b() {
        return this.f41789J;
    }

    public final synchronized void a(int i2) {
        this.f41789J = i2;
    }
}
