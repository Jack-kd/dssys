package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class bl extends w<bm> {
    public static final int ao = 1;
    public static final int ap = 2;
    public static final int aq = 3;
    public static final int ar = 4;
    public static final int as = 5;
    public static final int at = 6;
    long aA;
    long aB;
    private String aD;
    private String aE;
    private String aF;
    private String aG;
    private String aH;
    private int aI;
    private int aJ;
    long ak;
    String al;
    String am;
    int an;
    String au;
    String av;
    bn aw;
    int ax;
    String ay;
    long az;

    /* renamed from: b, reason: collision with root package name */
    private int f3932b;

    /* renamed from: c, reason: collision with root package name */
    private int f3933c;

    /* renamed from: d, reason: collision with root package name */
    private int f3934d;

    /* renamed from: e, reason: collision with root package name */
    private int f3935e;

    /* renamed from: a, reason: collision with root package name */
    private final String f3931a = getClass().getSimpleName();
    String aC = "";

    private boolean T() {
        return System.currentTimeMillis() >= this.aB;
    }

    private long U() {
        return this.az;
    }

    private String V() {
        return this.aD;
    }

    private String W() {
        return this.aE;
    }

    private String X() {
        return this.aF;
    }

    private String Y() {
        return this.aH;
    }

    private int Z() {
        return this.aI;
    }

    private void a(int i2) {
        this.ax = i2;
    }

    private int aa() {
        return this.aJ;
    }

    private int ab() {
        return this.ax;
    }

    private bn ac() {
        return this.aw;
    }

    private long ad() {
        return this.ak;
    }

    private String ae() {
        return this.al;
    }

    private String af() {
        return this.am;
    }

    private String ag() {
        return this.av;
    }

    private String ah() {
        return this.ay;
    }

    private int ai() {
        return this.f3932b;
    }

    private int aj() {
        return this.f3933c;
    }

    private int ak() {
        return this.f3934d;
    }

    private int al() {
        return this.f3935e;
    }

    private void d(long j2) {
        this.aB = j2;
    }

    public final long P() {
        return this.aB;
    }

    public final String Q() {
        return this.aG;
    }

    public final int R() {
        return this.an;
    }

    public final void S(String str) {
        this.aD = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0146  */
    @Override // com.anythink.core.common.h.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.util.List b(com.anythink.core.common.h.y r9) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.h.bl.b(com.anythink.core.common.h.y):java.util.List");
    }

    @Override // com.anythink.core.common.h.w
    public final /* synthetic */ List c(y yVar) {
        bm bmVar = (bm) yVar;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        sb.append(bmVar.n());
        if (TextUtils.equals(sb.toString(), "2") && this.an == 3 && !TextUtils.isEmpty(this.f4468q)) {
            arrayList.add(this.f4468q);
        }
        if (TextUtils.equals(String.valueOf(bmVar.n()), "4") && 1 != this.an && !TextUtils.isEmpty(this.f4468q)) {
            arrayList.add(this.f4468q);
        }
        return arrayList;
    }

    @Override // com.anythink.core.common.h.w
    public final String h() {
        return this.aC;
    }

    public final void q(int i2) {
        this.aI = i2;
    }

    public final void r(int i2) {
        this.aJ = i2;
    }

    public final void s(int i2) {
        this.an = i2;
    }

    public final void t(int i2) {
        this.f3932b = i2;
    }

    public final void u(int i2) {
        this.f3933c = i2;
    }

    public final void v(int i2) {
        this.f3934d = i2;
    }

    public final void w(int i2) {
        this.f3935e = i2;
    }

    public final String S() {
        return this.au;
    }

    public final void T(String str) {
        this.aE = str;
    }

    public final void U(String str) {
        this.aF = str;
    }

    public final void V(String str) {
        this.aG = str;
    }

    public final void W(String str) {
        this.aH = str;
    }

    public final void X(String str) {
        this.al = str;
    }

    public final void Y(String str) {
        this.am = str;
    }

    public final void Z(String str) {
        this.au = str;
    }

    public final void a(bn bnVar) {
        this.aw = bnVar;
    }

    public final void aa(String str) {
        this.av = str;
    }

    public final void ab(String str) {
        this.ay = str;
    }

    public final void a(long j2) {
        this.ak = j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.lang.String> a(com.anythink.core.common.h.bm r9) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.h.bl.a(com.anythink.core.common.h.bm):java.util.List");
    }

    private void c(long j2) {
        this.aA = j2;
    }

    private void b(long j2) {
        this.az = j2;
        this.aB = this.aA + j2;
    }

    private boolean a(boolean z2, boolean z3) {
        return z2 ? z3 ? this.f3932b == 1 : this.f3933c == 1 : z3 ? this.f3934d == 1 : this.f3935e == 1;
    }

    private List<String> b(bm bmVar) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        sb.append(bmVar.n());
        if (TextUtils.equals(sb.toString(), "2") && this.an == 3 && !TextUtils.isEmpty(this.f4468q)) {
            arrayList.add(this.f4468q);
        }
        if (TextUtils.equals(String.valueOf(bmVar.n()), "4") && 1 != this.an && !TextUtils.isEmpty(this.f4468q)) {
            arrayList.add(this.f4468q);
        }
        return arrayList;
    }
}
