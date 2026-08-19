package com.sigmob.sdk.downloader;

import android.net.Uri;
import android.util.SparseArray;
import com.sigmob.sdk.base.common.ak;
import com.sigmob.sdk.downloader.core.download.g;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class f extends com.sigmob.sdk.downloader.core.a implements Comparable<f> {

    /* renamed from: a, reason: collision with root package name */
    private static final int f37642a = 3;

    /* renamed from: A, reason: collision with root package name */
    private final File f37643A;

    /* renamed from: B, reason: collision with root package name */
    private final File f37644B;

    /* renamed from: C, reason: collision with root package name */
    private File f37645C;

    /* renamed from: D, reason: collision with root package name */
    private String f37646D;

    /* renamed from: E, reason: collision with root package name */
    private File f37647E;

    /* renamed from: F, reason: collision with root package name */
    private int f37648F;

    /* renamed from: b, reason: collision with root package name */
    private final int f37649b;

    /* renamed from: c, reason: collision with root package name */
    private volatile long f37650c;

    /* renamed from: d, reason: collision with root package name */
    private final String f37651d;

    /* renamed from: e, reason: collision with root package name */
    private final Uri f37652e;

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, List<String>> f37653h;

    /* renamed from: i, reason: collision with root package name */
    private com.sigmob.sdk.downloader.core.breakpoint.c f37654i;

    /* renamed from: j, reason: collision with root package name */
    private final int f37655j;

    /* renamed from: k, reason: collision with root package name */
    private final int f37656k;

    /* renamed from: l, reason: collision with root package name */
    private final int f37657l;

    /* renamed from: m, reason: collision with root package name */
    private final int f37658m;

    /* renamed from: n, reason: collision with root package name */
    private final int f37659n;

    /* renamed from: o, reason: collision with root package name */
    private final Integer f37660o;

    /* renamed from: p, reason: collision with root package name */
    private final Boolean f37661p;

    /* renamed from: q, reason: collision with root package name */
    private final boolean f37662q;

    /* renamed from: r, reason: collision with root package name */
    private final boolean f37663r;

    /* renamed from: s, reason: collision with root package name */
    private final int f37664s;

    /* renamed from: t, reason: collision with root package name */
    private volatile com.sigmob.sdk.downloader.c f37665t;

    /* renamed from: u, reason: collision with root package name */
    private volatile SparseArray<Object> f37666u;

    /* renamed from: v, reason: collision with root package name */
    private Object f37667v;

    /* renamed from: w, reason: collision with root package name */
    private final boolean f37668w;

    /* renamed from: x, reason: collision with root package name */
    private final AtomicLong f37669x = new AtomicLong();

    /* renamed from: y, reason: collision with root package name */
    private final boolean f37670y;

    /* renamed from: z, reason: collision with root package name */
    private final g.a f37671z;

    public static class a {

        /* renamed from: c, reason: collision with root package name */
        public static final int f37672c = 4096;

        /* renamed from: d, reason: collision with root package name */
        public static final int f37673d = 16384;

        /* renamed from: e, reason: collision with root package name */
        public static final int f37674e = 65536;

        /* renamed from: f, reason: collision with root package name */
        public static final int f37675f = 2000;

        /* renamed from: g, reason: collision with root package name */
        public static final boolean f37676g = true;

        /* renamed from: h, reason: collision with root package name */
        public static final int f37677h = 1000;

        /* renamed from: i, reason: collision with root package name */
        public static final boolean f37678i = true;

        /* renamed from: j, reason: collision with root package name */
        public static final boolean f37679j = false;

        /* renamed from: a, reason: collision with root package name */
        final String f37680a;

        /* renamed from: b, reason: collision with root package name */
        final Uri f37681b;

        /* renamed from: k, reason: collision with root package name */
        private volatile Map<String, List<String>> f37682k;

        /* renamed from: l, reason: collision with root package name */
        private int f37683l;

        /* renamed from: m, reason: collision with root package name */
        private int f37684m;

        /* renamed from: n, reason: collision with root package name */
        private int f37685n;

        /* renamed from: o, reason: collision with root package name */
        private int f37686o;

        /* renamed from: p, reason: collision with root package name */
        private int f37687p;

        /* renamed from: q, reason: collision with root package name */
        private boolean f37688q;

        /* renamed from: r, reason: collision with root package name */
        private int f37689r;

        /* renamed from: s, reason: collision with root package name */
        private String f37690s;

        /* renamed from: t, reason: collision with root package name */
        private boolean f37691t;

        /* renamed from: u, reason: collision with root package name */
        private boolean f37692u;

        /* renamed from: v, reason: collision with root package name */
        private Boolean f37693v;

        /* renamed from: w, reason: collision with root package name */
        private Integer f37694w;

        /* renamed from: x, reason: collision with root package name */
        private Boolean f37695x;

        public a(String str, Uri uri) {
            this.f37684m = 4096;
            this.f37685n = 16384;
            this.f37686o = 65536;
            this.f37687p = 2000;
            this.f37688q = true;
            this.f37689r = 1000;
            this.f37691t = true;
            this.f37692u = false;
            this.f37680a = str;
            this.f37681b = uri;
        }

        public a a(int i2) {
            this.f37694w = Integer.valueOf(i2);
            return this;
        }

        public a b(int i2) {
            this.f37689r = i2;
            return this;
        }

        public a c(int i2) {
            this.f37683l = i2;
            return this;
        }

        public a d(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f37684m = i2;
            return this;
        }

        public a e(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f37685n = i2;
            return this;
        }

        public a f(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f37686o = i2;
            return this;
        }

        public a g(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f37687p = i2;
            return this;
        }

        public a(String str, File file) {
            this.f37684m = 4096;
            this.f37685n = 16384;
            this.f37686o = 65536;
            this.f37687p = 2000;
            this.f37688q = true;
            this.f37689r = 1000;
            this.f37691t = true;
            this.f37692u = false;
            this.f37680a = str;
            this.f37681b = Uri.fromFile(file);
        }

        public a a(Boolean bool) {
            if (!com.sigmob.sdk.downloader.core.c.b(this.f37681b)) {
                throw new IllegalArgumentException("Uri isn't file scheme we can't let filename from response");
            }
            this.f37693v = bool;
            return this;
        }

        public a b(boolean z2) {
            this.f37688q = z2;
            return this;
        }

        public a c(boolean z2) {
            this.f37691t = z2;
            return this;
        }

        public a d(boolean z2) {
            this.f37692u = z2;
            return this;
        }

        public a(String str, String str2, String str3) {
            this(str, Uri.fromFile(new File(str2)));
            if (com.sigmob.sdk.downloader.core.c.a((CharSequence) str3)) {
                this.f37693v = Boolean.TRUE;
            } else {
                this.f37690s = str3;
            }
        }

        public a a(String str) {
            this.f37690s = str;
            return this;
        }

        public a a(Map<String, List<String>> map) {
            this.f37682k = map;
            return this;
        }

        public a a(boolean z2) {
            this.f37695x = Boolean.valueOf(z2);
            return this;
        }

        public f a() {
            return new f(this.f37680a, this.f37681b, this.f37683l, this.f37684m, this.f37685n, this.f37686o, this.f37687p, this.f37688q, this.f37689r, this.f37682k, this.f37690s, this.f37691t, this.f37692u, this.f37693v, this.f37694w, this.f37695x);
        }

        public synchronized void a(String str, String str2) {
            try {
                if (this.f37682k == null) {
                    this.f37682k = new HashMap();
                }
                List<String> arrayList = this.f37682k.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f37682k.put(str, arrayList);
                }
                arrayList.add(str2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static class b extends com.sigmob.sdk.downloader.core.a {

        /* renamed from: a, reason: collision with root package name */
        final int f37696a;

        /* renamed from: b, reason: collision with root package name */
        final String f37697b;

        /* renamed from: c, reason: collision with root package name */
        final File f37698c;

        /* renamed from: d, reason: collision with root package name */
        final String f37699d;

        /* renamed from: e, reason: collision with root package name */
        final File f37700e;

        public b(int i2) {
            this.f37696a = i2;
            this.f37697b = "";
            File file = com.sigmob.sdk.downloader.core.a.f37280g;
            this.f37698c = file;
            this.f37699d = null;
            this.f37700e = file;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public int c() {
            return this.f37696a;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public String d() {
            return this.f37699d;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public String i() {
            return this.f37697b;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public File k() {
            return this.f37698c;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public File l() {
            return this.f37700e;
        }

        public b(int i2, f fVar) {
            this.f37696a = i2;
            this.f37697b = fVar.f37651d;
            this.f37700e = fVar.l();
            this.f37698c = fVar.f37643A;
            this.f37699d = fVar.d();
        }
    }

    public static class c {
        public static long a(f fVar) {
            return fVar.z();
        }

        public static void a(f fVar, long j2) {
            fVar.a(j2);
        }

        public static void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            fVar.a(cVar);
        }
    }

    public f(String str, Uri uri, int i2, int i3, int i4, int i5, int i6, boolean z2, int i7, Map<String, List<String>> map, String str2, boolean z3, boolean z4, Boolean bool, Integer num, Boolean bool2) {
        File file;
        Boolean bool3;
        this.f37651d = str;
        this.f37652e = uri;
        this.f37655j = i2;
        this.f37656k = i3;
        this.f37657l = i4;
        this.f37658m = i5;
        this.f37659n = i6;
        this.f37663r = z2;
        this.f37664s = i7;
        this.f37653h = map;
        this.f37662q = z3;
        this.f37668w = z4;
        this.f37660o = num;
        this.f37661p = bool2;
        if (com.sigmob.sdk.downloader.core.c.b(uri)) {
            File file2 = new File(uri.getPath());
            if (bool != null) {
                if (bool.booleanValue()) {
                    if (file2.exists() && file2.isFile()) {
                        throw new IllegalArgumentException("If you want filename from response please make sure you provide path is directory " + file2.getPath());
                    }
                    if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) str2)) {
                        com.sigmob.sdk.downloader.core.c.a("DownloadTask", "Discard filename[" + str2 + "] because you set filenameFromResponse=true");
                        str2 = null;
                    }
                } else {
                    if (file2.exists() && file2.isDirectory() && com.sigmob.sdk.downloader.core.c.a((CharSequence) str2)) {
                        throw new IllegalArgumentException("If you don't want filename from response please make sure you have already provided valid filename or not directory path " + file2.getPath());
                    }
                    if (com.sigmob.sdk.downloader.core.c.a((CharSequence) str2)) {
                        str2 = file2.getName();
                        file2 = com.sigmob.sdk.downloader.core.c.a(file2);
                    }
                }
                this.f37644B = file2;
                bool3 = bool;
            } else {
                if (file2.exists() && file2.isDirectory()) {
                    bool3 = Boolean.TRUE;
                } else {
                    bool3 = Boolean.FALSE;
                    if (file2.exists()) {
                        if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) str2) && !file2.getName().equals(str2)) {
                            throw new IllegalArgumentException("Uri already provided filename!");
                        }
                    } else if (com.sigmob.sdk.downloader.core.c.a((CharSequence) str2)) {
                    }
                    str2 = file2.getName();
                    file2 = com.sigmob.sdk.downloader.core.c.a(file2);
                }
                this.f37644B = file2;
            }
            this.f37670y = bool3.booleanValue();
        } else {
            this.f37670y = false;
            this.f37644B = new File(uri.getPath());
        }
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) str2)) {
            this.f37671z = new g.a();
            file = this.f37644B;
        } else {
            this.f37671z = new g.a(str2);
            file = new File(this.f37644B, str2);
            this.f37645C = file;
        }
        this.f37643A = file;
        this.f37649b = g.j().c().b(this);
    }

    public synchronized void A() {
        this.f37667v = null;
    }

    public void B() {
        if (System.currentTimeMillis() - this.f37650c < 500) {
            ak.a(com.sigmob.sdk.b.e(), "操作太频繁", 0).show();
        } else {
            this.f37650c = System.currentTimeMillis();
            g.j().a().a(this);
        }
    }

    public boolean C() {
        int i2 = this.f37648F;
        this.f37648F = i2 + 1;
        if (i2 >= 3) {
            return false;
        }
        g.j().a().a(this);
        return true;
    }

    public void D() {
        g.j().a().b(this);
    }

    public void E() {
        if (System.currentTimeMillis() - this.f37650c < 500) {
            ak.a(com.sigmob.sdk.b.e(), "操作太频繁", 0).show();
        } else {
            this.f37650c = System.currentTimeMillis();
            g.j().a().a((com.sigmob.sdk.downloader.core.a) this);
        }
    }

    public com.sigmob.sdk.downloader.c F() {
        return this.f37665t;
    }

    public int G() {
        return this.f37655j;
    }

    public a H() {
        return a(this.f37651d, this.f37652e);
    }

    public a a(String str, Uri uri) {
        a aVarC = new a(str, uri).c(this.f37655j).d(this.f37656k).e(this.f37657l).f(this.f37658m).g(this.f37659n).b(this.f37663r).b(this.f37664s).a(this.f37653h).c(this.f37662q);
        if (com.sigmob.sdk.downloader.core.c.b(uri) && !new File(uri.getPath()).isFile() && com.sigmob.sdk.downloader.core.c.b(this.f37652e) && this.f37671z.a() != null && !new File(this.f37652e.getPath()).getName().equals(this.f37671z.a())) {
            aVarC.a(this.f37671z.a());
        }
        return aVarC;
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        return fVar.G() - G();
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public int c() {
        return this.f37649b;
    }

    public b d(int i2) {
        return new b(i2, this);
    }

    public boolean e() {
        return this.f37662q;
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (fVar.f37649b == this.f37649b) {
            return true;
        }
        return a((com.sigmob.sdk.downloader.core.a) fVar);
    }

    public boolean f() {
        return this.f37668w;
    }

    public g.a g() {
        return this.f37671z;
    }

    public Uri h() {
        return this.f37652e;
    }

    public int hashCode() {
        return (this.f37651d + this.f37643A.toString() + this.f37671z.a()).hashCode();
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public String i() {
        return this.f37651d;
    }

    public String j() {
        return this.f37646D;
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public File k() {
        return this.f37643A;
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public File l() {
        return this.f37644B;
    }

    public File m() {
        String str = this.f37671z.a() + ".tmp";
        if (str == null) {
            return null;
        }
        if (this.f37647E == null) {
            this.f37647E = new File(this.f37644B, str);
        }
        return this.f37647E;
    }

    public File n() {
        String strA = this.f37671z.a();
        if (strA == null) {
            return null;
        }
        if (this.f37645C == null) {
            this.f37645C = new File(this.f37644B, strA);
        }
        return this.f37645C;
    }

    public int o() {
        return this.f37656k;
    }

    public int p() {
        return this.f37657l;
    }

    public int q() {
        return this.f37658m;
    }

    public int r() {
        return this.f37659n;
    }

    public boolean s() {
        return this.f37663r;
    }

    public int t() {
        return this.f37664s;
    }

    public String toString() {
        return super.toString() + "@" + this.f37649b + "@" + this.f37651d + "@" + this.f37644B.toString() + ServiceReference.DELIMITER + this.f37671z.a();
    }

    public Integer u() {
        return this.f37660o;
    }

    public Boolean v() {
        return this.f37661p;
    }

    public int w() {
        com.sigmob.sdk.downloader.core.breakpoint.c cVar = this.f37654i;
        if (cVar == null) {
            return 0;
        }
        return cVar.g();
    }

    public Object x() {
        return this.f37667v;
    }

    public com.sigmob.sdk.downloader.core.breakpoint.c y() {
        if (this.f37654i == null) {
            this.f37654i = g.j().c().a(this.f37649b);
        }
        return this.f37654i;
    }

    public long z() {
        return this.f37669x.get();
    }

    public static b c(int i2) {
        return new b(i2);
    }

    public synchronized f a(int i2, Object obj) {
        try {
            if (this.f37666u == null) {
                synchronized (this) {
                    try {
                        if (this.f37666u == null) {
                            this.f37666u = new SparseArray<>();
                        }
                    } finally {
                    }
                }
            }
            this.f37666u.put(i2, obj);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public Map<String, List<String>> b() {
        return this.f37653h;
    }

    public Object a(int i2) {
        if (this.f37666u == null) {
            return null;
        }
        return this.f37666u.get(i2);
    }

    public synchronized void b(int i2) {
        if (this.f37666u != null) {
            this.f37666u.remove(i2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public String d() {
        return this.f37671z.a() + ".tmp";
    }

    public void a(long j2) {
        this.f37669x.set(j2);
    }

    public void b(com.sigmob.sdk.downloader.c cVar) {
        this.f37665t = cVar;
        g.j().a().a(this);
    }

    public void c(com.sigmob.sdk.downloader.c cVar) {
        this.f37665t = cVar;
        g.j().a().b(this);
    }

    public void a(com.sigmob.sdk.downloader.c cVar) {
        this.f37665t = cVar;
    }

    public void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        this.f37654i = cVar;
    }

    public void a(f fVar) {
        this.f37667v = fVar.f37667v;
        this.f37666u = fVar.f37666u;
    }

    public void a(Object obj) {
        this.f37667v = obj;
    }

    public void a(String str) {
        this.f37646D = str;
    }

    public static void a(f[] fVarArr) {
        g.j().a().a((com.sigmob.sdk.downloader.core.a[]) fVarArr);
    }

    public static void a(f[] fVarArr, com.sigmob.sdk.downloader.c cVar) {
        for (f fVar : fVarArr) {
            fVar.f37665t = cVar;
        }
        g.j().a().a(fVarArr);
    }

    public boolean a() {
        return this.f37670y;
    }
}
