package com.smartdigimkt.p0;

import android.util.SparseArray;
import androidx.core.location.LocationRequestCompat;
import com.smartdigimkt.j0.y;
import com.smartdigimkt.w0.e0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class m implements com.smartdigimkt.o0.d {

    /* renamed from: D, reason: collision with root package name */
    public static final int f42420D = com.smartdigimkt.a1.t.a("seig");

    /* renamed from: E, reason: collision with root package name */
    public static final byte[] f42421E = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: F, reason: collision with root package name */
    public static final com.smartdigimkt.j0.s f42422F = new com.smartdigimkt.j0.s(null, null, "application/x-emsg", null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, LocationRequestCompat.PASSIVE_INTERVAL, null, null, null);

    /* renamed from: A, reason: collision with root package name */
    public e0[] f42423A;

    /* renamed from: B, reason: collision with root package name */
    public e0[] f42424B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f42425C;

    /* renamed from: a, reason: collision with root package name */
    public final int f42426a;

    /* renamed from: b, reason: collision with root package name */
    public final List f42427b;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f42428c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42429d;

    /* renamed from: e, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42430e;

    /* renamed from: f, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42431f;

    /* renamed from: g, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42432g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f42433h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayDeque f42434i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayDeque f42435j;

    /* renamed from: k, reason: collision with root package name */
    public int f42436k;

    /* renamed from: l, reason: collision with root package name */
    public int f42437l;

    /* renamed from: m, reason: collision with root package name */
    public long f42438m;

    /* renamed from: n, reason: collision with root package name */
    public int f42439n;

    /* renamed from: o, reason: collision with root package name */
    public com.smartdigimkt.a1.l f42440o;

    /* renamed from: p, reason: collision with root package name */
    public long f42441p;

    /* renamed from: q, reason: collision with root package name */
    public int f42442q;

    /* renamed from: r, reason: collision with root package name */
    public long f42443r;

    /* renamed from: s, reason: collision with root package name */
    public long f42444s;

    /* renamed from: t, reason: collision with root package name */
    public long f42445t;

    /* renamed from: u, reason: collision with root package name */
    public l f42446u;

    /* renamed from: v, reason: collision with root package name */
    public int f42447v;

    /* renamed from: w, reason: collision with root package name */
    public int f42448w;

    /* renamed from: x, reason: collision with root package name */
    public int f42449x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f42450y;

    /* renamed from: z, reason: collision with root package name */
    public com.smartdigimkt.o0.e f42451z;

    public m() {
        List list = Collections.EMPTY_LIST;
        this.f42426a = 0;
        this.f42427b = Collections.unmodifiableList(list);
        this.f42432g = new com.smartdigimkt.a1.l(16);
        this.f42429d = new com.smartdigimkt.a1.l(com.smartdigimkt.a1.j.f39278a);
        this.f42430e = new com.smartdigimkt.a1.l(5);
        this.f42431f = new com.smartdigimkt.a1.l();
        this.f42433h = new byte[16];
        this.f42434i = new ArrayDeque();
        this.f42435j = new ArrayDeque();
        this.f42428c = new SparseArray();
        this.f42444s = -9223372036854775807L;
        this.f42443r = -9223372036854775807L;
        this.f42445t = -9223372036854775807L;
        this.f42436k = 0;
        this.f42439n = 0;
    }

    @Override // com.smartdigimkt.o0.d
    public final boolean a(com.smartdigimkt.o0.b bVar) {
        return r.a(bVar, true);
    }

    @Override // com.smartdigimkt.o0.d
    public final void a(com.smartdigimkt.o0.e eVar) {
        this.f42451z = eVar;
    }

    @Override // com.smartdigimkt.o0.d
    public final void a(long j2, long j3) {
        int size = this.f42428c.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((l) this.f42428c.valueAt(i2)).a();
        }
        this.f42435j.clear();
        this.f42442q = 0;
        this.f42443r = j3;
        this.f42434i.clear();
        this.f42436k = 0;
        this.f42439n = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0212, code lost:
    
        r13 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0215, code lost:
    
        r25 = r6;
        r6 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0219, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x021a, code lost:
    
        r28.f42450y = r13;
        r28.f42448w += 5;
        r28.f42447v += r9;
        r16 = r6;
        r6 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x022c, code lost:
    
        r25 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0232, code lost:
    
        if (r28.f42450y == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0234, code lost:
    
        r28.f42431f.b(r13);
        r29.a(r28.f42431f.f39286a, 0, r28.f42449x, false);
        r8.a(r28.f42449x, r28.f42431f);
        r13 = r28.f42449x;
        r15 = r28.f42431f;
        r6 = com.smartdigimkt.a1.j.a(r15.f39288c, r15.f39286a);
        r28.f42431f.c("video/hevc".equals(r4.f42512f.f40991f) ? 1 : 0);
        r11 = r28.f42431f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0264, code lost:
    
        if (r6 < 0) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0269, code lost:
    
        if (r6 > r11.f39286a.length) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x026b, code lost:
    
        r11.f39288c = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x026e, code lost:
    
        r11.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0276, code lost:
    
        throw new java.lang.IllegalArgumentException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0277, code lost:
    
        r13 = r8.a(r29, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x027b, code lost:
    
        r28.f42448w += r13;
        r28.f42449x -= r13;
        r6 = r25;
        r16 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0291, code lost:
    
        r6 = r28.f42448w;
        r9 = r28.f42447v;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0295, code lost:
    
        if (r6 >= r9) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0297, code lost:
    
        r28.f42448w += r8.a(r29, r9 - r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02a2, code lost:
    
        r1 = r3.f42532k[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02a8, code lost:
    
        if (r3.f42533l == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02aa, code lost:
    
        r1 = (r1 ? 1 : 0) | 0;
        r2 = r3.f42535n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02af, code lost:
    
        if (r2 == null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02b2, code lost:
    
        r2 = r3.f42522a.f42404a;
        r3 = r4.f42517k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02b8, code lost:
    
        if (r3 != null) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02ba, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02bc, code lost:
    
        r2 = r3[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02be, code lost:
    
        r24 = r2.f42519b;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x02c5, code lost:
    
        r24 = null;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02c8, code lost:
    
        r8.a(r19, r1, r28.f42447v, 0, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02d9, code lost:
    
        if (r28.f42435j.isEmpty() != false) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02db, code lost:
    
        r1 = (com.smartdigimkt.p0.k) r28.f42435j.removeFirst();
        r28.f42442q -= r1.f42409b;
        r9 = r19 + r1.f42408a;
        r2 = r28.f42423A;
        r3 = r2.length;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02f2, code lost:
    
        if (r4 >= r3) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02f4, code lost:
    
        r2[r4].a(r9, 1, r1.f42409b, r28.f42442q, null);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0302, code lost:
    
        r1 = r28.f42446u;
        r1.f42414e++;
        r2 = r1.f42415f + 1;
        r1.f42415f = r2;
        r3 = r1.f42411b.f42528g;
        r4 = r1.f42416g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0318, code lost:
    
        if (r2 != r3[r4]) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x031a, code lost:
    
        r1.f42416g = r4 + 1;
        r1.f42415f = 0;
        r28.f42446u = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0322, code lost:
    
        r28.f42436k = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0325, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0088, code lost:
    
        r2 = r28.f42446u;
        r3 = r2.f42411b.f42529h;
        r4 = r2.f42414e;
        r3 = r3[r4];
        r28.f42447v = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        if (r4 >= r2.f42417h) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0098, code lost:
    
        r29.b(r3);
        r1 = r28.f42446u;
        r2 = r1.f42411b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a1, code lost:
    
        if (r2.f42533l != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
    
        r3 = r2.f42537p;
        r4 = r2.f42522a.f42404a;
        r2 = r2.f42535n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
    
        if (r2 == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00af, code lost:
    
        r2 = r1.f42412c.f42517k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
    
        if (r2 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b5, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b7, code lost:
    
        r2 = r2[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b9, code lost:
    
        r2 = r2.f42520c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00bb, code lost:
    
        if (r2 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00bd, code lost:
    
        r3.c(r3.f39287b + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
    
        if (r1.f42411b.f42534m[r1.f42414e] == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cd, code lost:
    
        r3.c(r3.f39287b + (r3.j() * 6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d9, code lost:
    
        r1 = r28.f42446u;
        r1.f42414e++;
        r2 = r1.f42415f + 1;
        r1.f42415f = r2;
        r3 = r1.f42411b.f42528g;
        r4 = r1.f42416g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ed, code lost:
    
        if (r2 != r3[r4]) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ef, code lost:
    
        r1.f42416g = r4 + 1;
        r1.f42415f = 0;
        r28.f42446u = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f6, code lost:
    
        r28.f42436k = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fe, code lost:
    
        if (r2.f42412c.f42513g != 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0100, code lost:
    
        r28.f42447v = r3 - 8;
        r29.b(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0109, code lost:
    
        r2 = r28.f42446u;
        r3 = r2.f42411b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x010f, code lost:
    
        if (r3.f42533l != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0111, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0113, code lost:
    
        r4 = r3.f42522a.f42404a;
        r8 = r3.f42535n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0119, code lost:
    
        if (r8 == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x011c, code lost:
    
        r8 = r2.f42412c.f42517k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0120, code lost:
    
        if (r8 != null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0122, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0124, code lost:
    
        r8 = r8[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0126, code lost:
    
        r4 = r8.f42520c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0128, code lost:
    
        if (r4 == 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x012a, code lost:
    
        r8 = r3.f42537p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x012d, code lost:
    
        r4 = r8.f42521d;
        r8 = r2.f42419j;
        r9 = r4.length;
        r8.f39286a = r4;
        r8.f39288c = r9;
        r8.f39287b = 0;
        r4 = r4.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0139, code lost:
    
        r3 = r3.f42534m[r2.f42414e];
        r9 = r2.f42418i;
        r10 = r9.f39286a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0143, code lost:
    
        if (r3 == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0145, code lost:
    
        r12 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0148, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0149, code lost:
    
        r10[0] = (byte) (r12 | r4);
        r9.c(0);
        r2.f42410a.a(1, r2.f42418i);
        r2.f42410a.a(r4, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x015c, code lost:
    
        if (r3 != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x015e, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0160, code lost:
    
        r3 = r2.f42411b.f42537p;
        r8 = r3.j();
        r3.c(r3.f39287b - 2);
        r8 = (r8 * 6) + 2;
        r2.f42410a.a(r8, r3);
        r4 = (r4 + 1) + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x017a, code lost:
    
        r28.f42448w = r4;
        r28.f42447v += r4;
        r28.f42436k = 4;
        r28.f42449x = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018b, code lost:
    
        r2 = r28.f42446u;
        r3 = r2.f42411b;
        r4 = r2.f42412c;
        r8 = r2.f42410a;
        r2 = r2.f42414e;
        r19 = (r3.f42531j[r2] + r3.f42530i[r2]) * 1000;
        r9 = r4.f42516j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a5, code lost:
    
        if (r9 == 0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01a7, code lost:
    
        r10 = r28.f42430e.f39286a;
        r10[0] = 0;
        r10[1] = 0;
        r10[r30] = 0;
        r12 = r9 + 1;
        r9 = 4 - r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01bb, code lost:
    
        if (r28.f42448w >= r28.f42447v) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01bd, code lost:
    
        r13 = r28.f42449x;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c1, code lost:
    
        if (r13 != 0) goto L387;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c3, code lost:
    
        r29.a(r10, r9, r12, false);
        r28.f42430e.c(0);
        r28.f42449x = r28.f42430e.h() - r6;
        r28.f42429d.c(0);
        r8.a(4, r28.f42429d);
        r8.a(r6, r28.f42430e);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01e7, code lost:
    
        if (r28.f42424B.length <= 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01e9, code lost:
    
        r13 = r4.f42512f.f40991f;
        r18 = r10[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01f5, code lost:
    
        if ("video/avc".equals(r13) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01f7, code lost:
    
        r25 = r6;
        r6 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01fd, code lost:
    
        if ((r18 & 31) == r6) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0200, code lost:
    
        r25 = r6;
        r6 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0208, code lost:
    
        if ("video/hevc".equals(r13) == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0210, code lost:
    
        if (((r18 & 126) >> 1) != 39) goto L102;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r21v0, types: [int] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.smartdigimkt.w0.e0] */
    @Override // com.smartdigimkt.o0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.smartdigimkt.o0.b r29, com.smartdigimkt.o0.h r30) throws java.lang.InterruptedException, com.smartdigimkt.j0.y, java.io.EOFException {
        /*
            Method dump skipped, instructions count: 1750
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p0.m.a(com.smartdigimkt.o0.b, com.smartdigimkt.o0.h):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:249:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x066f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r57) throws com.smartdigimkt.j0.y {
        /*
            Method dump skipped, instructions count: 2030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p0.m.a(long):void");
    }

    public final void a() {
        int i2;
        if (this.f42423A == null) {
            e0[] e0VarArr = new e0[2];
            this.f42423A = e0VarArr;
            if ((this.f42426a & 4) != 0) {
                e0VarArr[0] = ((com.smartdigimkt.w0.i) this.f42451z).c(this.f42428c.size());
                i2 = 1;
            } else {
                i2 = 0;
            }
            e0[] e0VarArr2 = (e0[]) Arrays.copyOf(this.f42423A, i2);
            this.f42423A = e0VarArr2;
            for (e0 e0Var : e0VarArr2) {
                e0Var.a(f42422F);
            }
        }
        if (this.f42424B == null) {
            this.f42424B = new e0[this.f42427b.size()];
            for (int i3 = 0; i3 < this.f42424B.length; i3++) {
                e0 e0VarC = ((com.smartdigimkt.w0.i) this.f42451z).c(this.f42428c.size() + 1 + i3);
                e0VarC.a((com.smartdigimkt.j0.s) this.f42427b.get(i3));
                this.f42424B[i3] = e0VarC;
            }
        }
    }

    public static void a(com.smartdigimkt.a1.l lVar, int i2, u uVar) throws y {
        lVar.c(i2 + 8);
        int iA = lVar.a();
        int i3 = c.f42329b;
        if ((iA & 1) == 0) {
            boolean z2 = (iA & 2) != 0;
            int iH = lVar.h();
            if (iH == uVar.f42526e) {
                Arrays.fill(uVar.f42534m, 0, iH, z2);
                int i4 = lVar.f39288c - lVar.f39287b;
                com.smartdigimkt.a1.l lVar2 = uVar.f42537p;
                if (lVar2 == null || lVar2.f39288c < i4) {
                    uVar.f42537p = new com.smartdigimkt.a1.l(i4);
                }
                uVar.f42536o = i4;
                uVar.f42533l = true;
                uVar.f42538q = true;
                lVar.a(uVar.f42537p.f39286a, 0, i4);
                uVar.f42537p.c(0);
                uVar.f42538q = false;
                return;
            }
            throw new y("Length mismatch: " + iH + ", " + uVar.f42526e);
        }
        throw new y("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0094 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.smartdigimkt.n0.d a(java.util.ArrayList r14) {
        /*
            int r0 = r14.size()
            r1 = 0
            r2 = 0
            r4 = r1
            r3 = r2
        L8:
            if (r3 >= r0) goto L98
            java.lang.Object r5 = r14.get(r3)
            com.smartdigimkt.p0.b r5 = (com.smartdigimkt.p0.b) r5
            int r6 = r5.f42379a
            int r7 = com.smartdigimkt.p0.c.f42323V
            if (r6 != r7) goto L94
            if (r4 != 0) goto L1d
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L1d:
            com.smartdigimkt.a1.l r5 = r5.f42286P0
            byte[] r5 = r5.f39286a
            com.smartdigimkt.a1.l r6 = new com.smartdigimkt.a1.l
            r6.<init>(r5)
            int r8 = r6.f39288c
            r9 = 32
            if (r8 >= r9) goto L2d
            goto L78
        L2d:
            r6.c(r2)
            int r8 = r6.a()
            int r9 = r6.f39288c
            int r10 = r6.f39287b
            int r9 = r9 - r10
            int r9 = r9 + 4
            if (r8 == r9) goto L3e
            goto L78
        L3e:
            int r8 = r6.a()
            if (r8 == r7) goto L45
            goto L78
        L45:
            int r7 = r6.a()
            int r7 = r7 >> 24
            r7 = r7 & 255(0xff, float:3.57E-43)
            r8 = 1
            if (r7 <= r8) goto L52
        L50:
            r6 = r1
            goto L83
        L52:
            java.util.UUID r9 = new java.util.UUID
            long r10 = r6.b()
            long r12 = r6.b()
            r9.<init>(r10, r12)
            if (r7 != r8) goto L6d
            int r7 = r6.h()
            int r7 = r7 * 16
            int r8 = r6.f39287b
            int r8 = r8 + r7
            r6.c(r8)
        L6d:
            int r7 = r6.h()
            int r8 = r6.f39288c
            int r10 = r6.f39287b
            int r8 = r8 - r10
            if (r7 == r8) goto L79
        L78:
            goto L50
        L79:
            byte[] r8 = new byte[r7]
            r6.a(r8, r2, r7)
            com.smartdigimkt.p0.q r6 = new com.smartdigimkt.p0.q
            r6.<init>(r9)
        L83:
            if (r6 != 0) goto L87
            r6 = r1
            goto L89
        L87:
            java.util.UUID r6 = r6.f42505a
        L89:
            if (r6 != 0) goto L8c
            goto L94
        L8c:
            com.smartdigimkt.n0.c r7 = new com.smartdigimkt.n0.c
            r7.<init>(r6, r5)
            r4.add(r7)
        L94:
            int r3 = r3 + 1
            goto L8
        L98:
            if (r4 != 0) goto L9b
            return r1
        L9b:
            com.smartdigimkt.n0.d r14 = new com.smartdigimkt.n0.d
            int r0 = r4.size()
            com.smartdigimkt.n0.c[] r0 = new com.smartdigimkt.n0.c[r0]
            java.lang.Object[] r0 = r4.toArray(r0)
            com.smartdigimkt.n0.c[] r0 = (com.smartdigimkt.n0.c[]) r0
            r14.<init>(r1, r0)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p0.m.a(java.util.ArrayList):com.smartdigimkt.n0.d");
    }
}
