package com.anythink.core.common.n.b.a.e;

import com.anythink.core.api.ATCustomRuleKeys;
import com.anythink.core.common.n.c.w;
import com.baidu.mobads.sdk.internal.cm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    static final c[] f6319a;

    /* renamed from: b, reason: collision with root package name */
    static final Map<com.anythink.core.common.n.c.f, Integer> f6320b;

    /* renamed from: c, reason: collision with root package name */
    private static final int f6321c = 15;

    /* renamed from: d, reason: collision with root package name */
    private static final int f6322d = 31;

    /* renamed from: e, reason: collision with root package name */
    private static final int f6323e = 63;

    /* renamed from: f, reason: collision with root package name */
    private static final int f6324f = 127;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        c[] f6325a;

        /* renamed from: b, reason: collision with root package name */
        int f6326b;

        /* renamed from: c, reason: collision with root package name */
        int f6327c;

        /* renamed from: d, reason: collision with root package name */
        int f6328d;

        /* renamed from: e, reason: collision with root package name */
        private final List<c> f6329e;

        /* renamed from: f, reason: collision with root package name */
        private final com.anythink.core.common.n.c.e f6330f;

        /* renamed from: g, reason: collision with root package name */
        private final int f6331g;

        /* renamed from: h, reason: collision with root package name */
        private int f6332h;

        public a(w wVar, byte b3) {
            this(wVar);
        }

        private int a(int i2) {
            int i3;
            int i4 = 0;
            if (i2 > 0) {
                int length = this.f6325a.length;
                while (true) {
                    length--;
                    i3 = this.f6326b;
                    if (length < i3 || i2 <= 0) {
                        break;
                    }
                    int i5 = this.f6325a[length].f6318n;
                    i2 -= i5;
                    this.f6328d -= i5;
                    this.f6327c--;
                    i4++;
                }
                c[] cVarArr = this.f6325a;
                System.arraycopy(cVarArr, i3 + 1, cVarArr, i3 + 1 + i4, this.f6327c);
                this.f6326b += i4;
            }
            return i4;
        }

        private int c() {
            return this.f6332h;
        }

        private void d() {
            int i2 = this.f6332h;
            int i3 = this.f6328d;
            if (i2 < i3) {
                if (i2 == 0) {
                    e();
                } else {
                    a(i3 - i2);
                }
            }
        }

        private void e() {
            Arrays.fill(this.f6325a, (Object) null);
            this.f6326b = this.f6325a.length - 1;
            this.f6327c = 0;
            this.f6328d = 0;
        }

        private void f() throws IOException {
            this.f6329e.add(new c(d.a(i()), i()));
        }

        private void g() {
            a(new c(d.a(i()), i()));
        }

        private int h() {
            return this.f6330f.k() & 255;
        }

        private com.anythink.core.common.n.c.f i() {
            int iH = h();
            boolean z2 = (iH & 128) == 128;
            int iA = a(iH, 127);
            return z2 ? com.anythink.core.common.n.c.f.a(k.a().a(this.f6330f.h(iA))) : this.f6330f.d(iA);
        }

        public final List<c> b() {
            ArrayList arrayList = new ArrayList(this.f6329e);
            this.f6329e.clear();
            return arrayList;
        }

        private a(w wVar) {
            this.f6329e = new ArrayList();
            this.f6325a = new c[8];
            this.f6326b = r0.length - 1;
            this.f6327c = 0;
            this.f6328d = 0;
            this.f6331g = 4096;
            this.f6332h = 4096;
            this.f6330f = com.anythink.core.common.n.c.n.a(wVar);
        }

        private int c(int i2) {
            return this.f6326b + 1 + i2;
        }

        private void b(int i2) throws IOException {
            if (g(i2)) {
                this.f6329e.add(d.f6319a[i2]);
                return;
            }
            int iC = c(i2 - d.f6319a.length);
            if (iC >= 0) {
                c[] cVarArr = this.f6325a;
                if (iC < cVarArr.length) {
                    this.f6329e.add(cVarArr[iC]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        private void d(int i2) throws IOException {
            this.f6329e.add(new c(f(i2), i()));
        }

        private com.anythink.core.common.n.c.f f(int i2) throws IOException {
            if (g(i2)) {
                return d.f6319a[i2].f6316l;
            }
            int iC = c(i2 - d.f6319a.length);
            if (iC >= 0) {
                c[] cVarArr = this.f6325a;
                if (iC < cVarArr.length) {
                    return cVarArr[iC].f6316l;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        private static boolean g(int i2) {
            return i2 >= 0 && i2 <= d.f6319a.length - 1;
        }

        private void e(int i2) {
            a(new c(f(i2), i()));
        }

        public final void a() throws IOException {
            while (!this.f6330f.g()) {
                byte bK = this.f6330f.k();
                int i2 = bK & 255;
                if (i2 == 128) {
                    throw new IOException("index == 0");
                }
                if ((bK & com.anythink.core.common.s.a.c.f7560a) == 128) {
                    int iA = a(i2, 127);
                    int i3 = iA - 1;
                    if (g(i3)) {
                        this.f6329e.add(d.f6319a[i3]);
                    } else {
                        int iC = c(i3 - d.f6319a.length);
                        if (iC >= 0) {
                            c[] cVarArr = this.f6325a;
                            if (iC < cVarArr.length) {
                                this.f6329e.add(cVarArr[iC]);
                            }
                        }
                        throw new IOException("Header index too large " + iA);
                    }
                } else if (i2 == 64) {
                    a(new c(d.a(i()), i()));
                } else if ((bK & com.anythink.core.common.s.a.c.f7561b) == 64) {
                    a(new c(f(a(i2, 63) - 1), i()));
                } else if ((bK & 32) == 32) {
                    int iA2 = a(i2, 31);
                    this.f6332h = iA2;
                    if (iA2 >= 0 && iA2 <= this.f6331g) {
                        d();
                    } else {
                        throw new IOException("Invalid dynamic table size update " + this.f6332h);
                    }
                } else if (i2 != 16 && i2 != 0) {
                    this.f6329e.add(new c(f(a(i2, 15) - 1), i()));
                } else {
                    this.f6329e.add(new c(d.a(i()), i()));
                }
            }
        }

        private void a(c cVar) {
            this.f6329e.add(cVar);
            int i2 = cVar.f6318n;
            int i3 = this.f6332h;
            if (i2 > i3) {
                e();
                return;
            }
            a((this.f6328d + i2) - i3);
            int i4 = this.f6327c + 1;
            c[] cVarArr = this.f6325a;
            if (i4 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f6326b = this.f6325a.length - 1;
                this.f6325a = cVarArr2;
            }
            int i5 = this.f6326b;
            this.f6326b = i5 - 1;
            this.f6325a[i5] = cVar;
            this.f6327c++;
            this.f6328d += i2;
        }

        private int a(int i2, int i3) {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            int i5 = 0;
            while (true) {
                int iH = h();
                if ((iH & 128) == 0) {
                    return i3 + (iH << i5);
                }
                i3 += (iH & 127) << i5;
                i5 += 7;
            }
        }
    }

    public static final class b {

        /* renamed from: g, reason: collision with root package name */
        private static final int f6333g = 4096;

        /* renamed from: h, reason: collision with root package name */
        private static final int f6334h = 16384;

        /* renamed from: a, reason: collision with root package name */
        int f6335a;

        /* renamed from: b, reason: collision with root package name */
        int f6336b;

        /* renamed from: c, reason: collision with root package name */
        c[] f6337c;

        /* renamed from: d, reason: collision with root package name */
        int f6338d;

        /* renamed from: e, reason: collision with root package name */
        int f6339e;

        /* renamed from: f, reason: collision with root package name */
        int f6340f;

        /* renamed from: i, reason: collision with root package name */
        private final com.anythink.core.common.n.c.c f6341i;

        /* renamed from: j, reason: collision with root package name */
        private final boolean f6342j;

        /* renamed from: k, reason: collision with root package name */
        private int f6343k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f6344l;

        public b(com.anythink.core.common.n.c.c cVar) {
            this(cVar, (byte) 0);
        }

        private void a() {
            Arrays.fill(this.f6337c, (Object) null);
            this.f6338d = this.f6337c.length - 1;
            this.f6339e = 0;
            this.f6340f = 0;
        }

        private int b(int i2) {
            int i3;
            int i4 = 0;
            if (i2 > 0) {
                int length = this.f6337c.length;
                while (true) {
                    length--;
                    i3 = this.f6338d;
                    if (length < i3 || i2 <= 0) {
                        break;
                    }
                    int i5 = this.f6337c[length].f6318n;
                    i2 -= i5;
                    this.f6340f -= i5;
                    this.f6339e--;
                    i4++;
                }
                c[] cVarArr = this.f6337c;
                System.arraycopy(cVarArr, i3 + 1, cVarArr, i3 + 1 + i4, this.f6339e);
                c[] cVarArr2 = this.f6337c;
                int i6 = this.f6338d;
                Arrays.fill(cVarArr2, i6 + 1, i6 + 1 + i4, (Object) null);
                this.f6338d += i4;
            }
            return i4;
        }

        private b(com.anythink.core.common.n.c.c cVar, byte b3) {
            this.f6343k = Integer.MAX_VALUE;
            c[] cVarArr = new c[8];
            this.f6337c = cVarArr;
            this.f6338d = cVarArr.length - 1;
            this.f6339e = 0;
            this.f6340f = 0;
            this.f6335a = 4096;
            this.f6336b = 4096;
            this.f6342j = true;
            this.f6341i = cVar;
        }

        private void a(c cVar) {
            int i2 = cVar.f6318n;
            int i3 = this.f6336b;
            if (i2 > i3) {
                a();
                return;
            }
            b((this.f6340f + i2) - i3);
            int i4 = this.f6339e + 1;
            c[] cVarArr = this.f6337c;
            if (i4 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f6338d = this.f6337c.length - 1;
                this.f6337c = cVarArr2;
            }
            int i5 = this.f6338d;
            this.f6338d = i5 - 1;
            this.f6337c[i5] = cVar;
            this.f6339e++;
            this.f6340f += i2;
        }

        private void b() {
            int i2 = this.f6336b;
            int i3 = this.f6340f;
            if (i2 < i3) {
                if (i2 == 0) {
                    a();
                } else {
                    b(i3 - i2);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(java.util.List<com.anythink.core.common.n.b.a.e.c> r14) {
            /*
                Method dump skipped, instructions count: 236
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.e.d.b.a(java.util.List):void");
        }

        private void a(int i2, int i3, int i4) {
            if (i2 < i3) {
                this.f6341i.l(i2 | i4);
                return;
            }
            this.f6341i.l(i4 | i3);
            int i5 = i2 - i3;
            while (i5 >= 128) {
                this.f6341i.l(128 | (i5 & 127));
                i5 >>>= 7;
            }
            this.f6341i.l(i5);
        }

        private void a(com.anythink.core.common.n.c.f fVar) {
            if (this.f6342j) {
                k.a();
                if (k.a(fVar) < fVar.j()) {
                    com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
                    k.a();
                    k.a(fVar, cVar);
                    com.anythink.core.common.n.c.f fVarT = cVar.t();
                    a(fVarT.j(), 127, 128);
                    this.f6341i.d(fVarT);
                    return;
                }
            }
            a(fVar.j(), 127, 0);
            this.f6341i.d(fVar);
        }

        public final void a(int i2) {
            this.f6335a = i2;
            int iMin = Math.min(i2, 16384);
            int i3 = this.f6336b;
            if (i3 == iMin) {
                return;
            }
            if (iMin < i3) {
                this.f6343k = Math.min(this.f6343k, iMin);
            }
            this.f6344l = true;
            this.f6336b = iMin;
            int i4 = this.f6340f;
            if (iMin < i4) {
                if (iMin == 0) {
                    a();
                } else {
                    b(i4 - iMin);
                }
            }
        }
    }

    static {
        c cVar = new c(c.f6315k, "");
        com.anythink.core.common.n.c.f fVar = c.f6312h;
        c cVar2 = new c(fVar, "GET");
        c cVar3 = new c(fVar, "POST");
        com.anythink.core.common.n.c.f fVar2 = c.f6313i;
        c cVar4 = new c(fVar2, ServiceReference.DELIMITER);
        c cVar5 = new c(fVar2, "/index.html");
        com.anythink.core.common.n.c.f fVar3 = c.f6314j;
        c cVar6 = new c(fVar3, "http");
        c cVar7 = new c(fVar3, "https");
        com.anythink.core.common.n.c.f fVar4 = c.f6311g;
        c[] cVarArr = {cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, new c(fVar4, "200"), new c(fVar4, "204"), new c(fVar4, "206"), new c(fVar4, "304"), new c(fVar4, "400"), new c(fVar4, cm.f11333b), new c(fVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c(ATCustomRuleKeys.AGE, ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c(com.sigmob.sdk.downloader.core.breakpoint.f.f37325c, ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c(com.anythink.core.common.m.f.bU, ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f6319a = cVarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(cVarArr.length);
        int i2 = 0;
        while (true) {
            c[] cVarArr2 = f6319a;
            if (i2 >= cVarArr2.length) {
                f6320b = Collections.unmodifiableMap(linkedHashMap);
                return;
            } else {
                if (!linkedHashMap.containsKey(cVarArr2[i2].f6316l)) {
                    linkedHashMap.put(cVarArr2[i2].f6316l, Integer.valueOf(i2));
                }
                i2++;
            }
        }
    }

    private d() {
    }

    private static Map<com.anythink.core.common.n.c.f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f6319a.length);
        int i2 = 0;
        while (true) {
            c[] cVarArr = f6319a;
            if (i2 >= cVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(cVarArr[i2].f6316l)) {
                linkedHashMap.put(cVarArr[i2].f6316l, Integer.valueOf(i2));
            }
            i2++;
        }
    }

    public static com.anythink.core.common.n.c.f a(com.anythink.core.common.n.c.f fVar) throws IOException {
        int iJ = fVar.j();
        for (int i2 = 0; i2 < iJ; i2++) {
            byte b3 = fVar.b(i2);
            if (b3 >= 65 && b3 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.a());
            }
        }
        return fVar;
    }
}
