package com.smartdigimkt.p0;

import androidx.core.location.LocationRequestCompat;
import com.smartdigimkt.j0.y;
import com.smartdigimkt.w0.e0;
import java.io.EOFException;
import java.util.ArrayDeque;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class p implements com.smartdigimkt.o0.d, com.smartdigimkt.o0.k {

    /* renamed from: s, reason: collision with root package name */
    public static final int f42486s = com.smartdigimkt.a1.t.a("qt  ");

    /* renamed from: e, reason: collision with root package name */
    public int f42491e;

    /* renamed from: f, reason: collision with root package name */
    public int f42492f;

    /* renamed from: g, reason: collision with root package name */
    public long f42493g;

    /* renamed from: h, reason: collision with root package name */
    public int f42494h;

    /* renamed from: i, reason: collision with root package name */
    public com.smartdigimkt.a1.l f42495i;

    /* renamed from: k, reason: collision with root package name */
    public int f42497k;

    /* renamed from: l, reason: collision with root package name */
    public int f42498l;

    /* renamed from: m, reason: collision with root package name */
    public com.smartdigimkt.o0.e f42499m;

    /* renamed from: n, reason: collision with root package name */
    public o[] f42500n;

    /* renamed from: o, reason: collision with root package name */
    public long[][] f42501o;

    /* renamed from: p, reason: collision with root package name */
    public int f42502p;

    /* renamed from: q, reason: collision with root package name */
    public long f42503q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f42504r;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42489c = new com.smartdigimkt.a1.l(16);

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f42490d = new ArrayDeque();

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42487a = new com.smartdigimkt.a1.l(com.smartdigimkt.a1.j.f39278a);

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42488b = new com.smartdigimkt.a1.l(4);

    /* renamed from: j, reason: collision with root package name */
    public int f42496j = -1;

    @Override // com.smartdigimkt.o0.k
    public final boolean a() {
        return true;
    }

    @Override // com.smartdigimkt.o0.k
    public final long b() {
        return this.f42503q;
    }

    @Override // com.smartdigimkt.o0.d
    public final boolean a(com.smartdigimkt.o0.b bVar) {
        return r.a(bVar, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01a6, code lost:
    
        if (r10 == com.smartdigimkt.p0.n.f42456a) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01aa, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42457b) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b0, code lost:
    
        if (r10 == com.smartdigimkt.p0.n.f42463h) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01b4, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42464i) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01b9, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42459d) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01bb, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TDRC");
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01c5, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42460e) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01c7, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TPE1");
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01d1, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42461f) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d3, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TSSE");
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01dd, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42462g) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01df, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TALB");
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01e9, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42465j) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01eb, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "USLT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01f5, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42466k) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01f7, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TCON");
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01ff, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42469n) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0201, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TIT1");
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0209, code lost:
    
        com.smartdigimkt.p0.c.a(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x020c, code lost:
    
        r6.c(r14);
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0211, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TCOM");
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0219, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TIT2");
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0224, code lost:
    
        if (r13 == null) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0226, code lost:
    
        r12.add(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0229, code lost:
    
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x022d, code lost:
    
        r6.c(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0230, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0235, code lost:
    
        if (r12.isEmpty() == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0238, code lost:
    
        r7 = new com.smartdigimkt.r0.c(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x023e, code lost:
    
        r6.c(r6.f39287b + (r13 - 8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
    
        r6.c(r12);
        r12 = r12 + r11;
        r6.c(r6.f39287b + 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
    
        r11 = r6.f39287b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r11 >= r12) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        r13 = r6.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
    
        if (r6.a() != com.smartdigimkt.p0.c.f42292C0) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
    
        r6.c(r11);
        r11 = r11 + r13;
        r6.c(r6.f39287b + 8);
        r12 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0087, code lost:
    
        r13 = r6.f39287b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0089, code lost:
    
        if (r13 >= r11) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008b, code lost:
    
        r14 = com.smartdigimkt.p0.n.f42456a;
        r14 = r6.a() + r13;
        r13 = r6.a();
        r15 = (r13 >> 24) & 255;
        r16 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
    
        if (r15 == 169) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
    
        if (r15 != 65533) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ab, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42468m) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ad, code lost:
    
        r6.c(r6.f39287b + 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
    
        if (r6.a() != com.smartdigimkt.p0.c.f42298F0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bc, code lost:
    
        r6.c(r6.f39287b + 8);
        r10 = r6.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cb, code lost:
    
        r10 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cc, code lost:
    
        if (r10 <= 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ce, code lost:
    
        r13 = com.smartdigimkt.p0.n.f42455D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d1, code lost:
    
        if (r10 > r13.length) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d3, code lost:
    
        r10 = r13[r10 - 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d8, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d9, code lost:
    
        if (r10 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00db, code lost:
    
        r13 = new com.smartdigimkt.t0.u("TCON", null, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e2, code lost:
    
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e7, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42470o) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e9, code lost:
    
        r2 = com.smartdigimkt.p0.n.a(r13, r6, "TPOS");
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f2, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42471p) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f4, code lost:
    
        r2 = com.smartdigimkt.p0.n.a(r13, r6, "TRCK");
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fd, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42472q) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ff, code lost:
    
        r2 = com.smartdigimkt.p0.n.a(r13, "TBPM", r6, true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0105, code lost:
    
        r13 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010a, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42473r) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010c, code lost:
    
        r2 = com.smartdigimkt.p0.n.a(r13, "TCMP", r6, true, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0115, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42467l) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0117, code lost:
    
        r13 = com.smartdigimkt.p0.n.a(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x011f, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42474s) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0121, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TPE2");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012a, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42475t) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x012c, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TSOT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0135, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42476u) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0137, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TSO2");
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0140, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42477v) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0142, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TSOA");
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x014b, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42478w) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x014d, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TSOP");
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0156, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42479x) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0158, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TSOC");
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0161, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42480y) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0163, code lost:
    
        r2 = com.smartdigimkt.p0.n.a(r13, "ITUNESADVISORY", r6, false, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x016c, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42481z) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x016e, code lost:
    
        r2 = com.smartdigimkt.p0.n.a(r13, "ITUNESGAPLESS", r6, false, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0177, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42452A) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0179, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TVSHOWSORT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0182, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42453B) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0184, code lost:
    
        r2 = com.smartdigimkt.p0.n.b(r13, r6, "TVSHOW");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x018e, code lost:
    
        if (r13 != com.smartdigimkt.p0.n.f42454C) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0190, code lost:
    
        r13 = com.smartdigimkt.p0.n.b(r14, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0196, code lost:
    
        r10 = 16777215 & r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x019c, code lost:
    
        if (r10 != com.smartdigimkt.p0.n.f42458c) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x019e, code lost:
    
        r13 = com.smartdigimkt.p0.n.a(r13, r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(long r78) throws com.smartdigimkt.j0.y {
        /*
            Method dump skipped, instructions count: 1253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p0.p.b(long):void");
    }

    @Override // com.smartdigimkt.o0.d
    public final void a(com.smartdigimkt.o0.e eVar) {
        this.f42499m = eVar;
    }

    @Override // com.smartdigimkt.o0.d
    public final void a(long j2, long j3) {
        int iA;
        this.f42490d.clear();
        this.f42494h = 0;
        this.f42496j = -1;
        this.f42497k = 0;
        this.f42498l = 0;
        if (j2 == 0) {
            this.f42491e = 0;
            this.f42494h = 0;
            return;
        }
        o[] oVarArr = this.f42500n;
        if (oVarArr != null) {
            for (o oVar : oVarArr) {
                v vVar = oVar.f42483b;
                long[] jArr = vVar.f42545f;
                int i2 = com.smartdigimkt.a1.t.f39303a;
                int iBinarySearch = Arrays.binarySearch(jArr, j3);
                if (iBinarySearch < 0) {
                    iA = -(iBinarySearch + 2);
                } else {
                    while (true) {
                        int i3 = iBinarySearch - 1;
                        if (i3 < 0 || jArr[i3] != j3) {
                            break;
                        } else {
                            iBinarySearch = i3;
                        }
                    }
                    iA = iBinarySearch;
                }
                while (true) {
                    if (iA < 0) {
                        iA = -1;
                        break;
                    } else if ((vVar.f42546g[iA] & 1) != 0) {
                        break;
                    } else {
                        iA--;
                    }
                }
                if (iA == -1) {
                    iA = vVar.a(j3);
                }
                oVar.f42485d = iA;
            }
        }
    }

    @Override // com.smartdigimkt.o0.d
    public final int a(com.smartdigimkt.o0.b bVar, com.smartdigimkt.o0.h hVar) throws InterruptedException, y, EOFException {
        long j2;
        long j3;
        boolean z2;
        while (true) {
            int i2 = this.f42491e;
            boolean z3 = false;
            if (i2 == 0) {
                if (this.f42494h == 0) {
                    if (!bVar.a(this.f42489c.f39286a, 0, 8, true)) {
                        return -1;
                    }
                    this.f42494h = 8;
                    this.f42489c.c(0);
                    this.f42493g = this.f42489c.f();
                    this.f42492f = this.f42489c.a();
                }
                long j4 = this.f42493g;
                if (j4 == 1) {
                    bVar.a(this.f42489c.f39286a, 8, 8, false);
                    this.f42494h += 8;
                    this.f42493g = this.f42489c.i();
                } else if (j4 == 0) {
                    long j5 = bVar.f42190c;
                    if (j5 == -1 && !this.f42490d.isEmpty()) {
                        j5 = ((a) this.f42490d.peek()).f42283P0;
                    }
                    if (j5 != -1) {
                        this.f42493g = (j5 - bVar.f42191d) + this.f42494h;
                    }
                }
                long j6 = this.f42493g;
                int i3 = this.f42494h;
                long j7 = i3;
                if (j6 >= j7) {
                    int i4 = this.f42492f;
                    if (i4 != c.f42291C && i4 != c.f42295E && i4 != c.f42297F && i4 != c.f42299G && i4 != c.f42301H && i4 != c.f42318Q) {
                        if (i4 != c.f42320S && i4 != c.f42293D && i4 != c.f42321T && i4 != c.f42322U && i4 != c.f42352m0 && i4 != c.f42354n0 && i4 != c.f42356o0 && i4 != c.f42319R && i4 != c.f42358p0 && i4 != c.f42360q0 && i4 != c.f42362r0 && i4 != c.f42364s0 && i4 != c.f42366t0 && i4 != c.f42317P && i4 != c.f42329b && i4 != c.f42288A0) {
                            this.f42495i = null;
                            this.f42491e = 1;
                        } else {
                            if (i3 != 8) {
                                throw new IllegalStateException();
                            }
                            if (j6 <= 2147483647L) {
                                com.smartdigimkt.a1.l lVar = new com.smartdigimkt.a1.l((int) j6);
                                this.f42495i = lVar;
                                System.arraycopy(this.f42489c.f39286a, 0, lVar.f39286a, 0, 8);
                                this.f42491e = 1;
                            } else {
                                throw new IllegalStateException();
                            }
                        }
                    } else {
                        long j8 = (bVar.f42191d + j6) - j7;
                        this.f42490d.push(new a(this.f42492f, j8));
                        if (this.f42493g == this.f42494h) {
                            b(j8);
                        } else {
                            this.f42491e = 0;
                            this.f42494h = 0;
                        }
                    }
                } else {
                    throw new y("Atom size less than header length (unsupported).");
                }
            } else {
                if (i2 != 1) {
                    if (i2 == 2) {
                        long j9 = bVar.f42191d;
                        if (this.f42496j == -1) {
                            int i5 = -1;
                            int i6 = -1;
                            boolean z4 = true;
                            boolean z5 = true;
                            int i7 = 0;
                            long j10 = Long.MAX_VALUE;
                            long j11 = Long.MAX_VALUE;
                            long j12 = Long.MAX_VALUE;
                            j2 = 0;
                            while (true) {
                                o[] oVarArr = this.f42500n;
                                j3 = 262144;
                                if (i7 >= oVarArr.length) {
                                    break;
                                }
                                o oVar = oVarArr[i7];
                                int i8 = oVar.f42485d;
                                v vVar = oVar.f42483b;
                                if (i8 != vVar.f42541b) {
                                    long j13 = vVar.f42542c[i8];
                                    long j14 = this.f42501o[i7][i8];
                                    long j15 = j13 - j9;
                                    boolean z6 = j15 < 0 || j15 >= 262144;
                                    if ((!z6 && z4) || (z6 == z4 && j15 < j12)) {
                                        i6 = i7;
                                        z4 = z6;
                                        j11 = j14;
                                        j12 = j15;
                                    }
                                    if (j14 < j10) {
                                        i5 = i7;
                                        z5 = z6;
                                        j10 = j14;
                                    }
                                }
                                i7++;
                            }
                            int i9 = (j10 == LocationRequestCompat.PASSIVE_INTERVAL || !z5 || j11 < j10 + 10485760) ? i6 : i5;
                            this.f42496j = i9;
                            if (i9 == -1) {
                                return -1;
                            }
                        } else {
                            j2 = 0;
                            j3 = 262144;
                        }
                        o oVar2 = this.f42500n[this.f42496j];
                        e0 e0Var = oVar2.f42484c;
                        int i10 = oVar2.f42485d;
                        v vVar2 = oVar2.f42483b;
                        long j16 = vVar2.f42542c[i10];
                        int i11 = vVar2.f42543d[i10];
                        long j17 = (j16 - j9) + this.f42497k;
                        if (j17 >= j2 && j17 < j3) {
                            if (oVar2.f42482a.f42513g == 1) {
                                j17 += 8;
                                i11 -= 8;
                            }
                            bVar.b((int) j17);
                            int i12 = oVar2.f42482a.f42516j;
                            if (i12 == 0) {
                                while (true) {
                                    int i13 = this.f42497k;
                                    if (i13 >= i11) {
                                        break;
                                    }
                                    int iA = e0Var.a(bVar, i11 - i13);
                                    this.f42497k += iA;
                                    this.f42498l -= iA;
                                }
                            } else {
                                byte[] bArr = this.f42488b.f39286a;
                                bArr[0] = 0;
                                bArr[1] = 0;
                                bArr[2] = 0;
                                int i14 = 4 - i12;
                                while (this.f42497k < i11) {
                                    int i15 = this.f42498l;
                                    if (i15 == 0) {
                                        bVar.a(this.f42488b.f39286a, i14, i12, false);
                                        this.f42488b.c(0);
                                        this.f42498l = this.f42488b.h();
                                        this.f42487a.c(0);
                                        e0Var.a(4, this.f42487a);
                                        this.f42497k += 4;
                                        i11 += i14;
                                    } else {
                                        int iA2 = e0Var.a(bVar, i15);
                                        this.f42497k += iA2;
                                        this.f42498l -= iA2;
                                    }
                                }
                            }
                            int i16 = i11;
                            v vVar3 = oVar2.f42483b;
                            e0Var.a(vVar3.f42545f[i10], vVar3.f42546g[i10], i16, 0, null);
                            oVar2.f42485d++;
                            this.f42496j = -1;
                            this.f42497k = 0;
                            this.f42498l = 0;
                            return 0;
                        }
                        hVar.f42199a = j16;
                        return 1;
                    }
                    throw new IllegalStateException();
                }
                long j18 = this.f42493g;
                int i17 = this.f42494h;
                long j19 = j18 - i17;
                long j20 = bVar.f42191d + j19;
                com.smartdigimkt.a1.l lVar2 = this.f42495i;
                if (lVar2 != null) {
                    bVar.a(lVar2.f39286a, i17, (int) j19, false);
                    if (this.f42492f == c.f42329b) {
                        com.smartdigimkt.a1.l lVar3 = this.f42495i;
                        lVar3.c(8);
                        if (lVar3.a() != f42486s) {
                            lVar3.c(lVar3.f39287b + 4);
                            while (lVar3.f39288c - lVar3.f39287b > 0) {
                                if (lVar3.a() == f42486s) {
                                    z2 = true;
                                    break;
                                }
                            }
                            z2 = false;
                            this.f42504r = z2;
                        } else {
                            z2 = true;
                            this.f42504r = z2;
                        }
                    } else if (!this.f42490d.isEmpty()) {
                        ((a) this.f42490d.peek()).f42284Q0.add(new b(this.f42492f, this.f42495i));
                    }
                } else if (j19 < 262144) {
                    bVar.b((int) j19);
                } else {
                    hVar.f42199a = j20;
                    z3 = true;
                }
                b(j20);
                if (z3 && this.f42491e != 2) {
                    return 1;
                }
            }
        }
    }

    @Override // com.smartdigimkt.o0.k
    public final com.smartdigimkt.o0.i a(long j2) {
        long jMin;
        long jMin2;
        long j3;
        int iA;
        long j4;
        int iA2;
        int iA3;
        long j5;
        int iA4;
        long j6 = j2;
        o[] oVarArr = this.f42500n;
        if (oVarArr.length == 0) {
            com.smartdigimkt.o0.l lVar = com.smartdigimkt.o0.l.f42204c;
            return new com.smartdigimkt.o0.i(lVar, lVar);
        }
        int i2 = this.f42502p;
        if (i2 != -1) {
            v vVar = oVarArr[i2].f42483b;
            long[] jArr = vVar.f42545f;
            int i3 = com.smartdigimkt.a1.t.f39303a;
            int iBinarySearch = Arrays.binarySearch(jArr, j6);
            if (iBinarySearch < 0) {
                iA3 = -(iBinarySearch + 2);
            } else {
                while (true) {
                    int i4 = iBinarySearch - 1;
                    if (i4 < 0 || jArr[i4] != j6) {
                        break;
                    }
                    iBinarySearch = i4;
                }
                iA3 = iBinarySearch;
            }
            while (true) {
                if (iA3 < 0) {
                    iA3 = -1;
                    break;
                }
                if ((vVar.f42546g[iA3] & 1) != 0) {
                    break;
                }
                iA3--;
            }
            if (iA3 == -1) {
                iA3 = vVar.a(j6);
            }
            if (iA3 == -1) {
                com.smartdigimkt.o0.l lVar2 = com.smartdigimkt.o0.l.f42204c;
                return new com.smartdigimkt.o0.i(lVar2, lVar2);
            }
            long j7 = vVar.f42545f[iA3];
            jMin = vVar.f42542c[iA3];
            if (j7 >= j6 || iA3 >= vVar.f42541b - 1 || (iA4 = vVar.a(j6)) == -1 || iA4 == iA3) {
                j5 = -1;
                j3 = -9223372036854775807L;
            } else {
                j3 = vVar.f42545f[iA4];
                j5 = vVar.f42542c[iA4];
            }
            jMin2 = j5;
            j6 = j7;
        } else {
            jMin = LocationRequestCompat.PASSIVE_INTERVAL;
            jMin2 = -1;
            j3 = -9223372036854775807L;
        }
        int i5 = 0;
        while (true) {
            o[] oVarArr2 = this.f42500n;
            if (i5 >= oVarArr2.length) {
                break;
            }
            if (i5 != this.f42502p) {
                v vVar2 = oVarArr2[i5].f42483b;
                long[] jArr2 = vVar2.f42545f;
                int i6 = com.smartdigimkt.a1.t.f39303a;
                int iBinarySearch2 = Arrays.binarySearch(jArr2, j6);
                if (iBinarySearch2 < 0) {
                    iA = -(iBinarySearch2 + 2);
                } else {
                    while (true) {
                        int i7 = iBinarySearch2 - 1;
                        if (i7 < 0 || jArr2[i7] != j6) {
                            break;
                        }
                        iBinarySearch2 = i7;
                    }
                    iA = iBinarySearch2;
                }
                while (true) {
                    if (iA < 0) {
                        iA = -1;
                        break;
                    }
                    if ((vVar2.f42546g[iA] & 1) != 0) {
                        break;
                    }
                    iA--;
                }
                if (iA == -1) {
                    iA = vVar2.a(j6);
                }
                if (iA == -1) {
                    j4 = -9223372036854775807L;
                } else {
                    j4 = -9223372036854775807L;
                    jMin = Math.min(vVar2.f42542c[iA], jMin);
                }
                if (j3 != j4) {
                    long[] jArr3 = vVar2.f42545f;
                    int i8 = com.smartdigimkt.a1.t.f39303a;
                    int iBinarySearch3 = Arrays.binarySearch(jArr3, j3);
                    if (iBinarySearch3 < 0) {
                        iA2 = -(iBinarySearch3 + 2);
                    } else {
                        while (true) {
                            int i9 = iBinarySearch3 - 1;
                            if (i9 < 0 || jArr3[i9] != j3) {
                                break;
                            }
                            iBinarySearch3 = i9;
                        }
                        iA2 = iBinarySearch3;
                    }
                    while (true) {
                        if (iA2 < 0) {
                            iA2 = -1;
                            break;
                        }
                        if ((vVar2.f42546g[iA2] & 1) != 0) {
                            break;
                        }
                        iA2--;
                    }
                    if (iA2 == -1) {
                        iA2 = vVar2.a(j3);
                    }
                    if (iA2 != -1) {
                        jMin2 = Math.min(vVar2.f42542c[iA2], jMin2);
                    }
                }
            }
            i5++;
        }
        com.smartdigimkt.o0.l lVar3 = new com.smartdigimkt.o0.l(j6, jMin);
        if (j3 == -9223372036854775807L) {
            return new com.smartdigimkt.o0.i(lVar3, lVar3);
        }
        return new com.smartdigimkt.o0.i(lVar3, new com.smartdigimkt.o0.l(j3, jMin2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList a(com.smartdigimkt.p0.a r43, com.smartdigimkt.o0.g r44, boolean r45) throws com.smartdigimkt.j0.y {
        /*
            Method dump skipped, instructions count: 1325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p0.p.a(com.smartdigimkt.p0.a, com.smartdigimkt.o0.g, boolean):java.util.ArrayList");
    }
}
