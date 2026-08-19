package com.ubix.ssp.ad.e.v.g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.LruCache;
import android.widget.ImageView;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.open.AdError;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public class a extends e implements com.ubix.ssp.ad.e.v.a {

    /* renamed from: d, reason: collision with root package name */
    private SoftReference<e.a> f47234d;

    /* renamed from: com.ubix.ssp.ad.e.v.g.a$a, reason: collision with other inner class name */
    public class RunnableC0824a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e.b f47235a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f47236b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f47237c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f47238d;

        /* renamed from: com.ubix.ssp.ad.e.v.g.a$a$a, reason: collision with other inner class name */
        public class C0825a implements com.ubix.ssp.ad.e.v.b {
            public C0825a() {
            }

            @Override // com.ubix.ssp.ad.e.v.b
            public void a(String str, AdError adError, String str2) {
                if (a.this.f47234d == null || a.this.f47234d.get() == null) {
                    return;
                }
                ((e.a) a.this.f47234d.get()).sendMessage(a.this.a(adError));
            }

            @Override // com.ubix.ssp.ad.e.v.b
            public void a(String str, String str2) {
                try {
                    RunnableC0824a runnableC0824a = RunnableC0824a.this;
                    a.this.b(str, runnableC0824a.f47237c);
                    if (a.this.f47234d == null || a.this.f47234d.get() == null) {
                        return;
                    }
                    ((e.a) a.this.f47234d.get()).sendMessage(a.this.a(str, str2));
                } catch (Throwable th) {
                    th.printStackTrace();
                    if (a.this.f47234d == null || a.this.f47234d.get() == null) {
                        return;
                    }
                    ((e.a) a.this.f47234d.get()).sendMessage(a.this.a(com.ubix.ssp.ad.e.a0.a0.a.h(5, "资源下载错误")));
                }
            }
        }

        public RunnableC0824a(e.b bVar, String str, ImageView imageView, int i2) {
            this.f47235a = bVar;
            this.f47236b = str;
            this.f47237c = imageView;
            this.f47238d = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.f47234d = new SoftReference(new e.a(this.f47235a));
                if (!a.this.c(this.f47236b)) {
                    if (this.f47238d * 1000 > 0) {
                        ((e.a) a.this.f47234d.get()).sendMessageDelayed(a.this.a(com.ubix.ssp.ad.e.a0.a0.a.i(3, "请求超时")), this.f47238d * 1000);
                    }
                    com.ubix.ssp.ad.e.v.c.b().a(com.ubix.ssp.ad.e.a0.c.e(), this.f47236b, 1, new C0825a());
                    return;
                }
                a.this.b(this.f47236b, this.f47237c);
                if (a.this.f47234d == null || a.this.f47234d.get() == null) {
                    return;
                }
                e.a aVar = (e.a) a.this.f47234d.get();
                a aVar2 = a.this;
                String str = this.f47236b;
                aVar.sendMessage(aVar2.a(str, aVar2.e(str).getAbsolutePath()));
            } catch (Exception e2) {
                e2.printStackTrace();
                if (a.this.f47234d == null || a.this.f47234d.get() == null) {
                    return;
                }
                ((e.a) a.this.f47234d.get()).sendMessage(a.this.a(com.ubix.ssp.ad.e.a0.a0.a.h(9, "内容加载失败")));
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47241a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f47242b;

        /* renamed from: com.ubix.ssp.ad.e.v.g.a$b$a, reason: collision with other inner class name */
        public class RunnableC0826a implements Runnable {
            public RunnableC0826a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ((com.ubix.ssp.ad.e.t.a.e) b.this.f47242b).setRoundImageBitmap((Bitmap) com.ubix.ssp.ad.e.v.e.f47230a.get(b.this.f47241a));
            }
        }

        /* renamed from: com.ubix.ssp.ad.e.v.g.a$b$b, reason: collision with other inner class name */
        public class RunnableC0827b implements Runnable {
            public RunnableC0827b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView = b.this.f47242b;
                if (imageView != null) {
                    imageView.setImageBitmap((Bitmap) com.ubix.ssp.ad.e.v.e.f47230a.get(b.this.f47241a));
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView = b.this.f47242b;
                ((com.ubix.ssp.ad.e.t.a.e) imageView).a(imageView.getWidth(), b.this.f47242b.getHeight());
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView = b.this.f47242b;
                ((com.ubix.ssp.ad.e.t.a.e) imageView).a(imageView.getWidth(), b.this.f47242b.getHeight());
            }
        }

        public class e implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f47248a;

            public e(Bitmap bitmap) {
                this.f47248a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView = b.this.f47242b;
                if (imageView != null) {
                    imageView.setImageBitmap(this.f47248a);
                }
            }
        }

        public b(String str, ImageView imageView) {
            this.f47241a = str;
            this.f47242b = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (!a.this.c(this.f47241a)) {
                throw new Exception("resource not found form cache");
            }
            if (com.ubix.ssp.ad.e.v.e.f47230a.get(this.f47241a) != null) {
                ImageView imageView = this.f47242b;
                if (imageView != null) {
                    imageView.post(imageView instanceof com.ubix.ssp.ad.e.t.a.e ? new RunnableC0826a() : new RunnableC0827b());
                    return;
                }
                return;
            }
            if (com.ubix.ssp.ad.e.v.e.f47231b.get(this.f47241a) != null) {
                ImageView imageView2 = this.f47242b;
                if (imageView2 instanceof com.ubix.ssp.ad.e.t.a.e) {
                    imageView2.post(new c());
                    ((com.ubix.ssp.ad.e.t.a.e) this.f47242b).setGifImage((byte[]) com.ubix.ssp.ad.e.v.e.f47231b.get(this.f47241a));
                    return;
                }
                return;
            }
            if (a.this.e(this.f47241a).exists()) {
                if (a.this.g(this.f47241a)) {
                    synchronized (com.ubix.ssp.ad.e.v.e.f47231b) {
                        try {
                            if (com.ubix.ssp.ad.e.v.e.f47231b.get(this.f47241a) == null) {
                                LruCache lruCache = com.ubix.ssp.ad.e.v.e.f47231b;
                                String str = this.f47241a;
                                a aVar = a.this;
                                lruCache.put(str, aVar.b(aVar.e(str)));
                            }
                        } finally {
                        }
                    }
                    ImageView imageView3 = this.f47242b;
                    if (imageView3 instanceof com.ubix.ssp.ad.e.t.a.e) {
                        imageView3.post(new d());
                        ((com.ubix.ssp.ad.e.t.a.e) this.f47242b).setGifImage((byte[]) com.ubix.ssp.ad.e.v.e.f47231b.get(this.f47241a));
                        return;
                    }
                    return;
                }
                a aVar2 = a.this;
                Bitmap bitmapA = aVar2.a(aVar2.e(this.f47241a));
                u.b("url=" + this.f47241a + "bitmap=" + bitmapA);
                if (bitmapA != null) {
                    synchronized (com.ubix.ssp.ad.e.v.e.f47230a) {
                        com.ubix.ssp.ad.e.v.e.f47230a.put(this.f47241a, bitmapA);
                    }
                    ImageView imageView4 = this.f47242b;
                    if (imageView4 != null) {
                        imageView4.post(new e(bitmapA));
                        return;
                    }
                    return;
                }
                return;
                th.printStackTrace();
            }
        }
    }

    public class c implements Callable<String> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47250a;

        public c(String str) {
            this.f47250a = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            try {
                BitmapFactory.decodeFile(this.f47250a, options);
                return options.outMimeType;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public a() {
        if (u.a()) {
            u.b("imageCache=" + e.f47230a.size() + ";" + e.f47230a.maxSize());
            u.b("bytesCache=" + e.f47231b.size() + ";" + e.f47231b.maxSize());
        }
    }

    private int a(BitmapFactory.Options options, int i2, int i3) {
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        if (i4 <= i3 && i5 <= i2) {
            return 1;
        }
        int iMin = Math.min(Math.round(i4 / i3), Math.round(i5 / i2));
        while ((i5 * i4) / (iMin * iMin) > i2 * i3 * 2) {
            iMin++;
        }
        return iMin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(File file) throws IOException {
        u.b("file.exists()=" + file.exists());
        if (!file.exists()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        Bitmap bitmapA = a(a(fileInputStream), false);
        fileInputStream.close();
        return bitmapA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File e(String str) {
        return new File(k.e(com.ubix.ssp.ad.e.a0.c.e()), str.hashCode() + "");
    }

    public static String f(String str) {
        if (com.ubix.ssp.ad.e.a0.c.f46117f == null) {
            com.ubix.ssp.ad.e.a0.c.f46117f = com.ubix.ssp.ad.e.a0.c.A();
        }
        Future futureSubmit = com.ubix.ssp.ad.e.a0.c.f46117f.submit(new c(str));
        try {
            return (String) futureSubmit.get(1L, TimeUnit.SECONDS);
        } catch (TimeoutException unused) {
            try {
                futureSubmit.cancel(true);
            } catch (Throwable unused2) {
            }
            return null;
        } catch (Throwable unused3) {
            return null;
        }
    }

    @Override // com.ubix.ssp.ad.e.v.e, com.ubix.ssp.ad.e.v.a
    public Bitmap b(String str) {
        if (e.f47230a.get(str) != null) {
            return e.f47230a.get(str);
        }
        byte[] bArr = e.f47231b.get(str);
        if (bArr != null) {
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        }
        return null;
    }

    @Override // com.ubix.ssp.ad.e.v.a
    public boolean c(String str) throws IOException {
        if (e.f47230a.get(str) != null || e.f47231b.get(str) != null) {
            return true;
        }
        File fileE = e(str);
        if (fileE == null || !fileE.exists()) {
            return false;
        }
        if (g(str)) {
            if (e.f47231b.get(str) != null) {
                return false;
            }
            e.f47231b.put(str, b(e(str)));
            return true;
        }
        Bitmap bitmapA = a(fileE);
        if (bitmapA == null) {
            return false;
        }
        synchronized (e.f47230a) {
            e.f47230a.put(str, bitmapA);
        }
        return true;
    }

    @Override // com.ubix.ssp.ad.e.v.a
    public boolean d(String str) {
        try {
            if (e.f47230a.get(str) != null) {
                return true;
            }
            return e.f47231b.get(str) != null;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean g(String str) {
        String strF = f(e(str).getAbsolutePath());
        u.e("new getMimeTyper=" + strF + ";" + Thread.currentThread().getName());
        if (strF == null) {
            return false;
        }
        return strF.toLowerCase().contains("gif");
    }

    private Bitmap a(byte[] bArr, boolean z2) {
        if (bArr == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (z2) {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i2 = options.outWidth;
            int i3 = options.outHeight;
            int iMin = Math.min(i2, i3);
            float f2 = i2 / i3;
            if (Math.round(f2) > 0) {
                options.inSampleSize = a(options, iMin, iMin / Math.round(f2));
            }
        }
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    @Override // com.ubix.ssp.ad.e.v.a
    public void b(String str, ImageView imageView) {
        if (com.ubix.ssp.ad.e.a0.c.f46117f == null) {
            com.ubix.ssp.ad.e.a0.c.f46117f = com.ubix.ssp.ad.e.a0.c.A();
        }
        com.ubix.ssp.ad.e.a0.c.f46117f.execute(new b(str, imageView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] b(File file) throws IOException {
        if (!file.exists()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[fileInputStream.available()];
        fileInputStream.read(bArr);
        fileInputStream.close();
        return bArr;
    }

    @Override // com.ubix.ssp.ad.e.v.a
    public LruCache<String, Bitmap> a() {
        return e.f47230a;
    }

    @Override // com.ubix.ssp.ad.e.v.a
    public void a(String str, int i2, e.b bVar) {
        a(str, null, i2, bVar);
    }

    @Override // com.ubix.ssp.ad.e.v.a
    public void a(String str, ImageView imageView) throws Exception {
        if (!c(str)) {
            throw new Exception("resource not found form cache");
        }
        if (e.f47230a.get(str) != null) {
            if (imageView != null) {
                if (imageView instanceof com.ubix.ssp.ad.e.t.a.e) {
                    ((com.ubix.ssp.ad.e.t.a.e) imageView).setRoundImageBitmap(e.f47230a.get(str));
                    return;
                } else {
                    imageView.setImageBitmap(e.f47230a.get(str));
                    return;
                }
            }
            return;
        }
        if (e.f47231b.get(str) != null) {
            if (imageView instanceof com.ubix.ssp.ad.e.t.a.e) {
                com.ubix.ssp.ad.e.t.a.e eVar = (com.ubix.ssp.ad.e.t.a.e) imageView;
                eVar.a(imageView.getWidth(), imageView.getHeight());
                eVar.setGifImage(e.f47231b.get(str));
                return;
            }
            return;
        }
        if (e(str).exists()) {
            if (g(str)) {
                synchronized (e.f47231b) {
                    try {
                        if (e.f47231b.get(str) == null) {
                            e.f47231b.put(str, b(e(str)));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (imageView instanceof com.ubix.ssp.ad.e.t.a.e) {
                    com.ubix.ssp.ad.e.t.a.e eVar2 = (com.ubix.ssp.ad.e.t.a.e) imageView;
                    eVar2.a(imageView.getWidth(), imageView.getHeight());
                    eVar2.setGifImage(e.f47231b.get(str));
                    return;
                }
                return;
            }
            Bitmap bitmapA = a(e(str));
            u.b("url=" + str + "bitmap=" + bitmapA);
            if (bitmapA != null) {
                synchronized (e.f47230a) {
                    e.f47230a.put(str, bitmapA);
                }
                if (imageView != null) {
                    imageView.setImageBitmap(bitmapA);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // com.ubix.ssp.ad.e.v.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r8, android.widget.ImageView r9, int r10, com.ubix.ssp.ad.e.v.e.b r11) {
        /*
            r7 = this;
            java.util.concurrent.ExecutorService r0 = com.ubix.ssp.ad.e.a0.c.f46117f     // Catch: java.lang.Exception -> L22
            if (r0 != 0) goto Lf
            java.util.concurrent.ExecutorService r0 = com.ubix.ssp.ad.e.a0.c.A()     // Catch: java.lang.Exception -> Lb
            com.ubix.ssp.ad.e.a0.c.f46117f = r0     // Catch: java.lang.Exception -> Lb
            goto Lf
        Lb:
            r0 = move-exception
            r8 = r0
            r3 = r11
            goto L25
        Lf:
            java.util.concurrent.ExecutorService r0 = com.ubix.ssp.ad.e.a0.c.f46117f     // Catch: java.lang.Exception -> L22
            com.ubix.ssp.ad.e.v.g.a$a r1 = new com.ubix.ssp.ad.e.v.g.a$a     // Catch: java.lang.Exception -> L22
            r2 = r7
            r4 = r8
            r5 = r9
            r6 = r10
            r3 = r11
            r1.<init>(r3, r4, r5, r6)     // Catch: java.lang.Exception -> L1f
            r0.execute(r1)     // Catch: java.lang.Exception -> L1f
            return
        L1f:
            r0 = move-exception
        L20:
            r8 = r0
            goto L25
        L22:
            r0 = move-exception
            r3 = r11
            goto L20
        L25:
            r8.printStackTrace()
            if (r3 == 0) goto L35
            r8 = 9
            java.lang.String r9 = "内容加载失败"
            com.ubix.ssp.open.AdError r8 = com.ubix.ssp.ad.e.a0.a0.a.h(r8, r9)
            r3.a(r8)
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.v.g.a.a(java.lang.String, android.widget.ImageView, int, com.ubix.ssp.ad.e.v.e$b):void");
    }

    @Override // com.ubix.ssp.ad.e.v.a
    public void a(String str, e.b bVar) {
        a(str, null, -1, bVar);
    }

    private static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        if (inputStream.available() > Runtime.getRuntime().freeMemory() && inputStream.available() > Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory()) {
            u.b("Do not load bytes,current length=" + inputStream.available() + ";total length=" + Runtime.getRuntime().totalMemory() + ";free length=" + Runtime.getRuntime().freeMemory() + ";allow length=" + (Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory()));
            return null;
        }
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }
}
