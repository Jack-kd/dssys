package com.meishu.sdk.meishu_ad.view.player.media.datasouce.download;

import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.h;
import java.io.File;
import java.io.RandomAccessFile;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class e implements b {

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f32784o = 0;

    /* renamed from: d, reason: collision with root package name */
    public RandomAccessFile f32788d;

    /* renamed from: e, reason: collision with root package name */
    public RandomAccessFile f32789e;

    /* renamed from: f, reason: collision with root package name */
    public File f32790f;

    /* renamed from: g, reason: collision with root package name */
    public File f32791g;

    /* renamed from: h, reason: collision with root package name */
    public File f32792h;

    /* renamed from: k, reason: collision with root package name */
    public c f32795k;

    /* renamed from: l, reason: collision with root package name */
    public long f32796l;

    /* renamed from: m, reason: collision with root package name */
    public final String f32797m;

    /* renamed from: a, reason: collision with root package name */
    public final Object f32785a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final Object f32786b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Object f32787c = new Object();

    /* renamed from: j, reason: collision with root package name */
    public volatile long f32794j = -2147483648L;

    /* renamed from: n, reason: collision with root package name */
    public final List<SoftReference<f>> f32798n = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final g f32793i = new g();

    public e(String str, f fVar) {
        this.f32797m = str;
        try {
            b(fVar);
            this.f32790f = com.meishu.sdk.core.bquery.g.a(str, (String) null);
            this.f32791g = com.meishu.sdk.core.bquery.g.a(str, "temp");
            this.f32792h = com.meishu.sdk.core.bquery.g.a(str, "last_meta_temp");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b
    public void a(f fVar) {
        if (fVar == null) {
            return;
        }
        synchronized (this.f32786b) {
            for (SoftReference<f> softReference : this.f32798n) {
                if (softReference.get() == fVar) {
                    this.f32798n.remove(softReference);
                    try {
                        if (this.f32798n.size() == 1 && (this.f32798n.get(0).get() instanceof h.a)) {
                            this.f32798n.get(0).get().b();
                            this.f32798n.clear();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    return;
                }
            }
        }
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.b
    public b b(f fVar) {
        if (fVar == null) {
            return this;
        }
        if (this.f32794j != -2147483648L) {
            fVar.a(this.f32794j);
        }
        synchronized (this.f32786b) {
            try {
                Iterator<SoftReference<f>> it = this.f32798n.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        this.f32798n.add(new SoftReference<>(fVar));
                        break;
                    }
                    if (it.next().get() == fVar) {
                    }
                }
            } finally {
            }
        }
        return this;
    }

    public final void c() {
        synchronized (this.f32786b) {
            Iterator<SoftReference<f>> it = this.f32798n.iterator();
            while (it.hasNext()) {
                try {
                    it.next().get().a();
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a
    public void close() {
        if (this.f32798n.isEmpty()) {
            b();
        } else {
            LogUtil.d("e", "listeners is`not empty");
        }
    }

    public void d() {
        try {
            if (this.f32790f.exists() && this.f32790f.length() > 0) {
                LogUtil.d("e", "file exists");
                return;
            }
            if (this.f32795k != null) {
                LogUtil.e("e", "downloader is`not null");
                return;
            }
            this.f32788d = new RandomAccessFile(this.f32791g, "rw");
            this.f32789e = new RandomAccessFile(this.f32792h, "rw");
            long length = this.f32791g.exists() ? this.f32791g.length() : 0L;
            LogUtil.d("e", "start download");
            this.f32795k = new c(this.f32797m, this.f32788d, length, this.f32785a, this.f32793i, new a());
        } catch (Throwable th) {
            th.printStackTrace();
            c();
            b();
        }
    }

    public class a implements f {
        public a() {
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a(long j2) {
            e.this.f32794j = j2;
            e eVar = e.this;
            synchronized (eVar.f32786b) {
                Iterator<SoftReference<f>> it = eVar.f32798n.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().get().a(j2);
                    } catch (Exception unused) {
                    }
                }
            }
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void b() {
            e eVar = e.this;
            eVar.getClass();
            try {
                synchronized (eVar.f32785a) {
                    try {
                        if (!eVar.f32790f.exists()) {
                            if (!eVar.f32791g.renameTo(eVar.f32790f)) {
                                LogUtil.e("e", "rename error");
                            }
                            eVar.a();
                            try {
                                File file = eVar.f32792h;
                                if (file != null && file.exists() && !eVar.f32792h.delete()) {
                                    LogUtil.e("e", "delete fileLastMetaTemp error." + eVar.f32792h.getAbsolutePath());
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    } finally {
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            e eVar2 = e.this;
            synchronized (eVar2.f32786b) {
                Iterator<SoftReference<f>> it = eVar2.f32798n.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().get().b();
                    } catch (Exception unused) {
                    }
                }
            }
            e.this.b();
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a(long j2, int i2) {
            e eVar = e.this;
            synchronized (eVar.f32786b) {
                Iterator<SoftReference<f>> it = eVar.f32798n.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().get().a(j2, i2);
                    } catch (Exception unused) {
                    }
                }
            }
            long j3 = e.this.f32796l;
            if (j3 <= 0 || j2 < j3) {
                return;
            }
            StringBuilder sbA = com.meishu.sdk.activity.a.a("download limit. maxFileSize:");
            sbA.append(e.this.f32796l);
            LogUtil.i("e", sbA.toString());
            e eVar2 = e.this;
            c cVar = eVar2.f32795k;
            if (cVar != null) {
                cVar.f32774j = null;
            }
            synchronized (eVar2.f32787c) {
                e.this.b();
            }
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a() {
            e.this.c();
            e.this.b();
        }
    }

    public final void b() {
        c cVar = this.f32795k;
        if (cVar != null) {
            cVar.close();
            this.f32795k = null;
        }
        a();
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a
    public void a(String str, long j2, int i2, RandomAccessFile randomAccessFile) {
        c cVar = this.f32795k;
        if (cVar != null) {
            cVar.a(str, j2, i2, this.f32789e);
            return;
        }
        try {
            if (!this.f32791g.exists() || j2 < this.f32791g.length()) {
                return;
            }
            this.f32796l = 0L;
            synchronized (this.f32787c) {
                try {
                    if (this.f32795k == null) {
                        LogUtil.d("e", "re download");
                        d();
                    }
                    c cVar2 = this.f32795k;
                    if (cVar2 != null) {
                        cVar2.a(str, j2, i2, this.f32789e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a
    public boolean a(RandomAccessFile randomAccessFile, long j2) {
        c cVar = this.f32795k;
        return cVar != null && cVar.a(randomAccessFile, j2);
    }

    @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.a
    public void a(long j2) {
        if (j2 > 0) {
            this.f32796l = Math.max(this.f32796l, j2);
        }
    }

    public final void a() {
        RandomAccessFile randomAccessFile = this.f32788d;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            this.f32788d = null;
        }
        RandomAccessFile randomAccessFile2 = this.f32789e;
        if (randomAccessFile2 != null) {
            try {
                randomAccessFile2.close();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            this.f32789e = null;
        }
    }
}
