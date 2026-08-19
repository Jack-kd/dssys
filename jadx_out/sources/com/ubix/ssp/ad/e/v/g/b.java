package com.ubix.ssp.ad.e.v.g;

import android.media.MediaPlayer;
import com.ubix.ssp.ad.e.a0.c;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.e.v.f;
import java.io.File;

/* loaded from: classes5.dex */
public class b extends e implements f {

    /* renamed from: d, reason: collision with root package name */
    private e.a f47251d;

    /* renamed from: e, reason: collision with root package name */
    private MediaPlayer f47252e;

    /* renamed from: f, reason: collision with root package name */
    private int f47253f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f47254g = false;

    public class a implements com.ubix.ssp.ad.e.b0.h.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f47255a;

        public a(int i2) {
            this.f47255a = i2;
        }

        @Override // com.ubix.ssp.ad.e.b0.h.b
        public void a(File file, String str, int i2) {
            u.b("onCacheAvailable =" + i2);
            b.this.f47253f = i2;
            if (this.f47255a > 0) {
                b.this.f47251d.removeMessages(2);
                b.this.f47251d.sendMessageDelayed(b.this.a(com.ubix.ssp.ad.e.a0.a0.a.i(3, "请求超时")), this.f47255a);
            }
            if (100 != i2 || b.this.f47254g) {
                return;
            }
            b.this.f47254g = true;
            com.ubix.ssp.ad.e.b0.e.f46642c.a(this);
            b.this.f47251d.sendMessage(b.this.a(str, com.ubix.ssp.ad.e.b0.e.f46642c.d(str)));
            try {
                if (b.this.f47252e != null) {
                    b.this.f47252e.reset();
                    b.this.f47252e.release();
                    b.this.f47252e = null;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.v.g.b$b, reason: collision with other inner class name */
    public class RunnableC0828b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47257a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ e.b f47258b;

        public RunnableC0828b(String str, e.b bVar) {
            this.f47257a = str;
            this.f47258b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                b.this.f47252e = new MediaPlayer();
                b.this.f47252e.setDataSource(com.ubix.ssp.ad.e.b0.e.f46642c.d(this.f47257a));
                b.this.f47252e.prepareAsync();
            } catch (Throwable unused) {
                e.b bVar = this.f47258b;
                if (bVar != null) {
                    bVar.a(com.ubix.ssp.ad.e.a0.a0.a.h(5, "资源下载错误"));
                }
            }
        }
    }

    private File e(String str) {
        return new File(k.f(c.e()), str.hashCode() + "");
    }

    public boolean c(String str) {
        return e(str).exists();
    }

    @Override // com.ubix.ssp.ad.e.v.f
    public File a(String str) {
        if (c(str)) {
            return e(str);
        }
        return null;
    }

    public void a(String str, int i2, e.b bVar) {
        u.b("download timer started :" + i2 + str);
        try {
            if (com.ubix.ssp.ad.e.b0.e.f46642c == null) {
                com.ubix.ssp.ad.e.b0.e.a(c.e());
            }
            if (com.ubix.ssp.ad.e.b0.e.f46642c.e(str)) {
                if (bVar != null) {
                    bVar.a(this, str, com.ubix.ssp.ad.e.b0.e.f46642c.d(str), true);
                }
                u.b("download timer ahead return :" + i2 + str);
                return;
            }
            e.a aVar = new e.a(bVar);
            this.f47251d = aVar;
            if (i2 > 0) {
                aVar.sendMessageDelayed(a(com.ubix.ssp.ad.e.a0.a0.a.i(3, "请求超时")), i2);
            }
            if (c(str)) {
                if (bVar != null) {
                    bVar.a(this, str, e(str).getAbsolutePath(), false);
                }
            } else {
                com.ubix.ssp.ad.e.b0.e.f46642c.a(new a(i2), str);
                try {
                    com.ubix.ssp.ad.e.b0.e.f46642c.a().execute(new RunnableC0828b(str, bVar));
                } catch (Throwable unused) {
                    if (bVar != null) {
                        bVar.a(com.ubix.ssp.ad.e.a0.a0.a.h(5, "资源下载错误"));
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            if (bVar != null) {
                bVar.a(com.ubix.ssp.ad.e.a0.a0.a.h(5, "资源下载错误"));
            }
        }
    }

    @Override // com.ubix.ssp.ad.e.v.f
    public void a(String str, e.b bVar) {
        a(str, 10000, bVar);
    }
}
