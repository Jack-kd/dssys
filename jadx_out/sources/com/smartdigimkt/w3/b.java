package com.smartdigimkt.w3;

import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.text.TextUtils;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.e0.u;
import com.smartdigimkt.e0.w;
import com.smartdigimkt.e0.x;
import com.smartdigimkt.e0.y;
import com.smartdigimkt.f3.a0;
import com.smartdigimkt.f3.z;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.i0.l;
import com.smartdigimkt.t3.n;
import com.smartdigimkt.y3.h;
import com.smartdigimkt.z.p;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class b extends com.smartdigimkt.v3.d {

    /* renamed from: d, reason: collision with root package name */
    public final c f44923d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f44924e;

    /* renamed from: f, reason: collision with root package name */
    public x f44925f;

    /* renamed from: g, reason: collision with root package name */
    public int f44926g;

    /* renamed from: h, reason: collision with root package name */
    public int f44927h;

    /* renamed from: i, reason: collision with root package name */
    public long f44928i;

    /* renamed from: j, reason: collision with root package name */
    public String f44929j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f44930k;

    /* renamed from: l, reason: collision with root package name */
    public long f44931l;

    /* renamed from: m, reason: collision with root package name */
    public MediaMetadataRetriever f44932m;

    /* renamed from: n, reason: collision with root package name */
    public final Object f44933n;

    /* renamed from: o, reason: collision with root package name */
    public int f44934o;

    public b(String str) {
        super(str);
        this.f44933n = new Object();
        this.f44934o = -1;
        this.f44924e = new ArrayList();
        this.f44923d = new c();
        this.f44927h = 0;
        this.f44928i = 0L;
        this.f44930k = false;
        this.f44931l = 0L;
        this.f44926g = 0;
    }

    public final void a(c cVar) {
        synchronized (this.f44933n) {
            try {
                int i2 = cVar.f44935a;
                int i3 = cVar.f44936b;
                long j2 = cVar.f44938d;
                int i4 = cVar.f44937c;
                c cVar2 = this.f44923d;
                if (cVar2.f44935a < i2) {
                    cVar2.f44935a = i2;
                }
                if (j2 > this.f44931l) {
                    this.f44931l = j2;
                }
                cVar2.f44937c = i4;
                if (Build.VERSION.SDK_INT <= 24) {
                    cVar2.f44936b = 1;
                } else if (cVar2.f44936b != 1) {
                    cVar2.f44936b = i3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c() {
        int i2 = this.f44927h;
        if (i2 != 100) {
            return this.f44926g == 0 && i2 < 100;
        }
        a(i2, this.f44928i);
        int i3 = this.f44927h;
        long j2 = this.f44928i;
        if (i3 == 100) {
            a0 a0VarA = a0.a();
            String str = this.f44713b;
            String str2 = this.f44929j;
            long j3 = this.f44714c;
            a0VarA.f40206c.put(str, Integer.valueOf(i3));
            e.a().a(new z(a0VarA, str, str2, j3, j2, i3), 0L, 13);
            x xVar = this.f44925f;
            if (xVar != null) {
                p.a(30, xVar.f40034a, new l());
            }
        }
        return false;
    }

    public final void d() {
        String strB = n.a().b(4);
        if (TextUtils.isEmpty(strB)) {
            a("", "without saveDirectory");
            return;
        }
        File file = new File(strB);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.f44929j = n.a().b(4, i.b(this.f44713b));
        File file2 = new File(this.f44929j);
        if (file2.exists()) {
            this.f44928i = file2.length();
        }
    }

    public final synchronized void e() {
        this.f44924e.clear();
    }

    public final void f() {
        long j2;
        if (this.f44931l > 0 && this.f44932m == null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            this.f44932m = mediaMetadataRetriever;
            int i2 = this.f44923d.f44935a;
            try {
                mediaMetadataRetriever.setDataSource(this.f44929j);
                j2 = Long.parseLong(this.f44932m.extractMetadata(9));
                if (j2 > 0) {
                    try {
                        int i3 = (int) (((this.f44931l + 500) * 100) / j2);
                        i2 = 100;
                        if (i3 <= 100) {
                            i2 = i3;
                        }
                        c cVar = this.f44923d;
                        if (cVar.f44935a < i2) {
                            cVar.f44935a = i2;
                        }
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable unused2) {
                j2 = -1;
            }
            try {
                this.f44932m.release();
            } catch (Throwable unused3) {
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            long j3 = this.f44931l;
            a aVar = new a(j3, j2, jCurrentTimeMillis2, i2);
            synchronized (this) {
                ArrayList arrayList = this.f44924e;
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    y yVar = ((w) obj).f40033c;
                    yVar.f40040e = aVar;
                    long j4 = yVar.f40039d;
                    if (j4 > 0 && j4 == aVar.f44919a) {
                        yVar.f40037b.f41895T = aVar.f44922d;
                    }
                }
            }
            int i5 = this.f44923d.f44935a;
        }
    }

    public final synchronized void a(w wVar) {
        if (!this.f44924e.contains(wVar)) {
            this.f44924e.add(wVar);
        }
    }

    public final synchronized void a(String str, String str2) {
        int i2 = 0;
        try {
            this.f44926g = 0;
            ArrayList arrayList = this.f44924e;
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                w wVar = (w) obj;
                h.a(wVar.f40031a, wVar.f40032b, false, str2, 0.0d, 0.0d, 0L, 0L, 0L, 0);
            }
            e();
            x xVar = this.f44925f;
            if (xVar != null) {
                u.a().a(xVar.f40035b.f40036a, new f(str, str2));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.smartdigimkt.v3.d
    public final void a() {
        this.f44926g = 0;
    }

    public final boolean a(int i2) {
        synchronized (this.f44933n) {
            try {
                if (this.f44930k) {
                    return true;
                }
                if (this.f44714c < 512000) {
                    return true;
                }
                c cVar = this.f44923d;
                if (cVar == null) {
                    return true;
                }
                if (cVar.f44937c == 1) {
                    return true;
                }
                int i3 = cVar.f44936b;
                if (i3 == 2 && i2 >= cVar.f44935a) {
                    return false;
                }
                if (i3 == 1) {
                    return true;
                }
                ArrayList arrayList = this.f44924e;
                return arrayList == null || arrayList.size() != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void a(int i2, long j2) {
        try {
            if (this.f44934o != i2) {
                this.f44934o = i2;
            }
            a0.a().f40206c.put(this.f44713b, Integer.valueOf(i2));
            Iterator it = this.f44924e.iterator();
            if (this.f44714c > 512000 || i2 == 100) {
                boolean z2 = false;
                while (it.hasNext()) {
                    w wVar = (w) it.next();
                    long j3 = this.f44714c;
                    y yVar = wVar.f40033c;
                    if (i2 >= yVar.f40037b.f41895T) {
                        if (yVar.f40040e != null) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            y yVar2 = wVar.f40033c;
                            long j4 = jCurrentTimeMillis - yVar2.f40041f;
                            a aVar = yVar2.f40040e;
                            h.a(wVar.f40031a, wVar.f40032b, true, "", j3, j2, j4, aVar.f44920b, aVar.f44921c, aVar.f44922d);
                        } else {
                            h.a(wVar.f40031a, wVar.f40032b, true, "", j3, j2, System.currentTimeMillis() - wVar.f40033c.f40041f, 0L, 0L, 0);
                        }
                        u.a().a(i2, wVar.f40033c.f40036a);
                        z2 = i2 != 100;
                        it.remove();
                    }
                }
                if (z2) {
                    a0 a0VarA = a0.a();
                    String str = this.f44713b;
                    String str2 = this.f44929j;
                    long j5 = this.f44714c;
                    a0VarA.getClass();
                    e.a().a(new z(a0VarA, str, str2, j5, j2, i2), 0L, 13);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a9  */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r8v3, types: [int] */
    @Override // com.smartdigimkt.v3.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.io.InputStream r21) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w3.b.a(java.io.InputStream):boolean");
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(com.smartdigimkt.v3.c cVar) {
        e.a().a(cVar, 4);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(String str) {
        a(com.anythink.core.common.res.image.c.f7479a, str);
    }
}
