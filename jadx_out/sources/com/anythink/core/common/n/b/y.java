package com.anythink.core.common.n.b;

import androidx.browser.trusted.sharing.ShareTarget;
import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.n.b.u;
import com.umeng.analytics.pro.ek;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class y extends ae {

    /* renamed from: a, reason: collision with root package name */
    public static final x f6968a = x.a("multipart/mixed");

    /* renamed from: b, reason: collision with root package name */
    public static final x f6969b = x.a("multipart/alternative");

    /* renamed from: c, reason: collision with root package name */
    public static final x f6970c = x.a("multipart/digest");

    /* renamed from: d, reason: collision with root package name */
    public static final x f6971d = x.a("multipart/parallel");

    /* renamed from: e, reason: collision with root package name */
    public static final x f6972e = x.a(ShareTarget.ENCODING_TYPE_MULTIPART);

    /* renamed from: f, reason: collision with root package name */
    private static final byte[] f6973f = {58, 32};

    /* renamed from: g, reason: collision with root package name */
    private static final byte[] f6974g = {ek.f49293k, 10};

    /* renamed from: h, reason: collision with root package name */
    private static final byte[] f6975h = {45, 45};

    /* renamed from: i, reason: collision with root package name */
    private final com.anythink.core.common.n.c.f f6976i;

    /* renamed from: j, reason: collision with root package name */
    private final x f6977j;

    /* renamed from: k, reason: collision with root package name */
    private final x f6978k;

    /* renamed from: l, reason: collision with root package name */
    private final List<b> f6979l;

    /* renamed from: m, reason: collision with root package name */
    private long f6980m = -1;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final com.anythink.core.common.n.c.f f6981a;

        /* renamed from: b, reason: collision with root package name */
        private x f6982b;

        /* renamed from: c, reason: collision with root package name */
        private final List<b> f6983c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        private a a(x xVar) {
            if (xVar == null) {
                throw new NullPointerException("type == null");
            }
            if (!xVar.a().equals("multipart")) {
                throw new IllegalArgumentException("multipart != ".concat(String.valueOf(xVar)));
            }
            this.f6982b = xVar;
            return this;
        }

        private a(String str) {
            this.f6982b = y.f6968a;
            this.f6983c = new ArrayList();
            this.f6981a = com.anythink.core.common.n.c.f.a(str);
        }

        private a a(u uVar, ae aeVar) {
            return a(b.a(uVar, aeVar));
        }

        private a a(String str, String str2, ae aeVar) {
            return a(b.a(str, str2, aeVar));
        }

        private a a(b bVar) {
            if (bVar != null) {
                this.f6983c.add(bVar);
                return this;
            }
            throw new NullPointerException("part == null");
        }

        private y a() {
            if (!this.f6983c.isEmpty()) {
                return new y(this.f6981a, this.f6982b, this.f6983c);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }

        private a a(ae aeVar) {
            return a(b.a((u) null, aeVar));
        }

        private a a(String str, String str2) {
            return a(b.a(str, null, ae.a((x) null, str2.getBytes(StandardCharsets.UTF_8))));
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final u f6984a;

        /* renamed from: b, reason: collision with root package name */
        final ae f6985b;

        private b(u uVar, ae aeVar) {
            this.f6984a = uVar;
            this.f6985b = aeVar;
        }

        private static b a(ae aeVar) {
            return a((u) null, aeVar);
        }

        private ae b() {
            return this.f6985b;
        }

        public static b a(u uVar, ae aeVar) {
            if (aeVar == null) {
                throw new NullPointerException("body == null");
            }
            if (uVar != null && uVar.a(AbstractC1114b.f5589g) != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (uVar == null || uVar.a(com.sigmob.sdk.downloader.core.c.f37366e) == null) {
                return new b(uVar, aeVar);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static b a(String str, String str2, ae aeVar) {
            if (str != null) {
                StringBuilder sb = new StringBuilder("form-data; name=");
                y.a(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    y.a(sb, str2);
                }
                return a(new u.a().b(com.sigmob.sdk.downloader.core.c.f37371j, sb.toString()).a(), aeVar);
            }
            throw new NullPointerException("name == null");
        }

        private u a() {
            return this.f6984a;
        }

        private static b a(String str, String str2) {
            return a(str, null, ae.a((x) null, str2.getBytes(StandardCharsets.UTF_8)));
        }
    }

    public y(com.anythink.core.common.n.c.f fVar, x xVar, List<b> list) {
        this.f6976i = fVar;
        this.f6977j = xVar;
        this.f6978k = x.a(xVar + "; boundary=" + fVar.a());
        this.f6979l = com.anythink.core.common.n.b.a.c.a(list);
    }

    private b a(int i2) {
        return this.f6979l.get(i2);
    }

    private x c() {
        return this.f6977j;
    }

    private String d() {
        return this.f6976i.a();
    }

    private int e() {
        return this.f6979l.size();
    }

    private List<b> f() {
        return this.f6979l;
    }

    @Override // com.anythink.core.common.n.b.ae
    public final long b() {
        long j2 = this.f6980m;
        if (j2 != -1) {
            return j2;
        }
        long jA = a((com.anythink.core.common.n.c.d) null, true);
        this.f6980m = jA;
        return jA;
    }

    @Override // com.anythink.core.common.n.b.ae
    public final x a() {
        return this.f6978k;
    }

    @Override // com.anythink.core.common.n.b.ae
    public final void a(com.anythink.core.common.n.c.d dVar) {
        a(dVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long a(com.anythink.core.common.n.c.d dVar, boolean z2) {
        com.anythink.core.common.n.c.c cVar;
        if (z2) {
            dVar = new com.anythink.core.common.n.c.c();
            cVar = dVar;
        } else {
            cVar = 0;
        }
        int size = this.f6979l.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f6979l.get(i2);
            u uVar = bVar.f6984a;
            ae aeVar = bVar.f6985b;
            dVar.d(f6975h);
            dVar.d(this.f6976i);
            dVar.d(f6974g);
            if (uVar != null) {
                int iA = uVar.a();
                for (int i3 = 0; i3 < iA; i3++) {
                    dVar.b(uVar.a(i3)).d(f6973f).b(uVar.b(i3)).d(f6974g);
                }
            }
            x xVarA = aeVar.a();
            if (xVarA != null) {
                dVar.b("Content-Type: ").b(xVarA.toString()).d(f6974g);
            }
            long jB = aeVar.b();
            if (jB != -1) {
                dVar.b("Content-Length: ").o(jB).d(f6974g);
            } else if (z2) {
                cVar.z();
                return -1L;
            }
            byte[] bArr = f6974g;
            dVar.d(bArr);
            if (z2) {
                j2 += jB;
            } else {
                aeVar.a(dVar);
            }
            dVar.d(bArr);
        }
        byte[] bArr2 = f6975h;
        dVar.d(bArr2);
        dVar.d(this.f6976i);
        dVar.d(bArr2);
        dVar.d(f6974g);
        if (!z2) {
            return j2;
        }
        long jB2 = j2 + cVar.b();
        cVar.z();
        return jB2;
    }

    public static void a(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\n') {
                sb.append("%0A");
            } else if (cCharAt == '\r') {
                sb.append("%0D");
            } else if (cCharAt != '\"') {
                sb.append(cCharAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
    }
}
