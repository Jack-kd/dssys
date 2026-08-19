package com.anythink.core.common.res.b;

import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.res.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.n;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class a extends com.anythink.core.common.res.image.b {

    /* renamed from: a, reason: collision with root package name */
    final String f7411a;

    /* renamed from: b, reason: collision with root package name */
    public com.anythink.core.common.res.b.b f7412b;

    /* renamed from: c, reason: collision with root package name */
    public List<b> f7413c;

    /* renamed from: k, reason: collision with root package name */
    public c f7414k;

    /* renamed from: l, reason: collision with root package name */
    int f7415l;

    /* renamed from: m, reason: collision with root package name */
    private final int f7416m;

    /* renamed from: n, reason: collision with root package name */
    private final int f7417n;

    /* renamed from: o, reason: collision with root package name */
    private int f7418o;

    /* renamed from: p, reason: collision with root package name */
    private int f7419p;

    /* renamed from: q, reason: collision with root package name */
    private long f7420q;

    /* renamed from: r, reason: collision with root package name */
    private String f7421r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f7422s;

    /* renamed from: t, reason: collision with root package name */
    private final long f7423t;

    /* renamed from: u, reason: collision with root package name */
    private long f7424u;

    /* renamed from: v, reason: collision with root package name */
    private MediaMetadataRetriever f7425v;

    /* renamed from: w, reason: collision with root package name */
    private Object f7426w;

    /* renamed from: com.anythink.core.common.res.b.a$a, reason: collision with other inner class name */
    public class C0076a {

        /* renamed from: a, reason: collision with root package name */
        long f7427a;

        /* renamed from: b, reason: collision with root package name */
        long f7428b;

        /* renamed from: c, reason: collision with root package name */
        long f7429c;

        /* renamed from: d, reason: collision with root package name */
        int f7430d;

        public C0076a(long j2, long j3, long j4, int i2) {
            this.f7427a = j2;
            this.f7428b = j3;
            this.f7429c = j4;
            this.f7430d = i2;
        }

        private long a() {
            return this.f7427a;
        }

        private long b() {
            return this.f7428b;
        }

        private long c() {
            return this.f7429c;
        }

        private int d() {
            return this.f7430d;
        }
    }

    public static abstract class b {
        public abstract boolean a();

        public abstract void b();

        public abstract void c();
    }

    public static abstract class c {
        public abstract void a();

        public abstract void b();
    }

    public a(String str) {
        super(str);
        this.f7411a = a.class.getSimpleName();
        this.f7416m = 0;
        this.f7417n = 1;
        this.f7423t = 512000L;
        this.f7426w = new Object();
        this.f7415l = -1;
        this.f7413c = new ArrayList();
        this.f7412b = new com.anythink.core.common.res.b.b();
        this.f7419p = 0;
        this.f7420q = 0L;
        this.f7422s = false;
        this.f7424u = 0L;
        this.f7418o = 0;
    }

    private int g() {
        return this.f7418o;
    }

    private void h() {
        if (j()) {
            i();
            this.f7418o = 1;
            d();
        }
    }

    private void i() {
        String strA = d.a(s.b().g()).a(4);
        if (TextUtils.isEmpty(strA)) {
            k();
            return;
        }
        File file = new File(strA);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.f7421r = d.a(s.b().g()).b(4, n.a(this.f7471d));
        File file2 = new File(this.f7421r);
        if (file2.exists()) {
            this.f7420q = file2.length();
        }
    }

    private boolean j() {
        int i2 = this.f7419p;
        if (i2 != 100) {
            return this.f7418o == 0 && i2 < 100;
        }
        a(i2, this.f7420q);
        b(this.f7419p, this.f7420q);
        return false;
    }

    private synchronized void k() {
        try {
            this.f7418o = 0;
            Iterator<b> it = this.f7413c.iterator();
            while (it.hasNext()) {
                it.next();
            }
            m();
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void l() {
        Iterator<b> it = this.f7413c.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private synchronized void m() {
        this.f7413c.clear();
    }

    private void n() {
        long j2;
        MediaMetadataRetriever mediaMetadataRetriever;
        if (this.f7424u > 0 && this.f7425v == null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MediaMetadataRetriever mediaMetadataRetriever2 = new MediaMetadataRetriever();
            this.f7425v = mediaMetadataRetriever2;
            int i2 = this.f7412b.f7432a;
            try {
                try {
                    mediaMetadataRetriever2.setDataSource(this.f7421r);
                    j2 = Long.parseLong(this.f7425v.extractMetadata(9));
                    if (j2 > 0) {
                        try {
                            int i3 = (int) (((this.f7424u + 500) * 100) / j2);
                            i2 = i3 > 100 ? 100 : i3;
                            com.anythink.core.common.res.b.b bVar = this.f7412b;
                            if (bVar.f7432a < i2) {
                                bVar.f7432a = i2;
                            }
                        } catch (Throwable unused) {
                            mediaMetadataRetriever = this.f7425v;
                            mediaMetadataRetriever.release();
                            new C0076a(this.f7424u, j2, System.currentTimeMillis() - jCurrentTimeMillis, i2);
                            l();
                        }
                    }
                    mediaMetadataRetriever = this.f7425v;
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
                j2 = -1;
            }
            mediaMetadataRetriever.release();
            new C0076a(this.f7424u, j2, System.currentTimeMillis() - jCurrentTimeMillis, i2);
            l();
        }
    }

    @Override // com.anythink.core.common.res.image.b
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void b() {
    }

    @Override // com.anythink.core.common.res.image.b
    public final void c() {
        this.f7418o = 0;
    }

    public final void e() {
        this.f7422s = true;
        if (j()) {
            i();
            this.f7418o = 1;
            d();
        }
    }

    public final void f() {
        this.f7422s = false;
        this.f7418o = 0;
    }

    private void a(com.anythink.core.common.res.b.b bVar) {
        synchronized (this.f7426w) {
            try {
                com.anythink.core.common.res.b.b bVar2 = this.f7412b;
                int i2 = bVar2.f7432a;
                int i3 = bVar.f7432a;
                if (i2 < i3) {
                    bVar2.f7432a = i3;
                }
                long j2 = bVar.f7435d;
                if (j2 > this.f7424u) {
                    this.f7424u = j2;
                }
                if (Build.VERSION.SDK_INT <= 24) {
                    bVar2.f7434c = 1;
                } else if (bVar2.f7434c != 1) {
                    bVar2.f7434c = bVar.f7434c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean b(int i2) {
        synchronized (this.f7426w) {
            try {
                if (this.f7422s) {
                    return true;
                }
                if (this.f7477j < 512000) {
                    return true;
                }
                com.anythink.core.common.res.b.b bVar = this.f7412b;
                int i3 = bVar.f7434c;
                if (i3 == 2 && i2 >= bVar.f7432a) {
                    return false;
                }
                if (i3 == 1) {
                    return true;
                }
                List<b> list = this.f7413c;
                return list == null || list.size() != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private synchronized void a(b bVar) {
        if (!this.f7413c.contains(bVar)) {
            this.f7413c.add(bVar);
        }
    }

    private void b(int i2, long j2) {
        if (i2 == 100) {
            com.anythink.core.common.a.n.a().a(this.f7471d, this.f7421r, this.f7477j, j2, i2, true);
        }
    }

    private void a(c cVar) {
        this.f7414k = cVar;
    }

    private void a(int i2) {
        this.f7418o = i2;
    }

    private synchronized void a(int i2, long j2) {
        try {
            if (this.f7415l != i2) {
                this.f7415l = i2;
            }
            com.anythink.core.common.a.n.a().a(this.f7471d, this.f7421r, this.f7477j, j2, i2, false);
            Iterator<b> it = this.f7413c.iterator();
            boolean z2 = false;
            if (this.f7477j > 512000 || i2 == 100) {
                boolean z3 = false;
                while (it.hasNext()) {
                    if (it.next().a()) {
                        z3 = i2 != 100;
                        it.remove();
                    }
                }
                z2 = z3;
            }
            if (z2) {
                com.anythink.core.common.a.n.a().a(this.f7471d, this.f7421r, this.f7477j, j2, i2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.anythink.core.common.res.image.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.io.InputStream r24) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.res.b.a.a(java.io.InputStream):boolean");
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(e.db, runnable));
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str) {
        k();
    }
}
