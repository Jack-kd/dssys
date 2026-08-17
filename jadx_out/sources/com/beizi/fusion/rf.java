package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.collection.LruCache;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public class rf {

    /* renamed from: d, reason: collision with root package name */
    private static Context f15933d;

    /* renamed from: e, reason: collision with root package name */
    private static rf f15934e;

    /* renamed from: a, reason: collision with root package name */
    private ExecutorService f15935a = Executors.newFixedThreadPool(4);

    /* renamed from: b, reason: collision with root package name */
    private LruCache f15936b = new LruCache(4194304);

    /* renamed from: c, reason: collision with root package name */
    private Handler f15937c = new Handler(Looper.getMainLooper());

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f15938a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f15939b;

        /* renamed from: com.beizi.fusion.rf$a$a, reason: collision with other inner class name */
        public class RunnableC0170a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f15941a;

            public RunnableC0170a(Bitmap bitmap) {
                this.f15941a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f15939b.a(this.f15941a);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f15939b.a();
            }
        }

        public a(String str, f fVar) {
            this.f15938a = str;
            this.f15939b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f15938a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(2000);
                if (httpURLConnection.getResponseCode() == 200) {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    httpURLConnection.disconnect();
                    rf.this.f15937c.post(new RunnableC0170a(bitmapDecodeStream));
                    rf.this.f15936b.put(this.f15938a, bitmapDecodeStream);
                    String str = this.f15938a;
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(c8.e(rf.f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)))));
                }
            } catch (Exception unused) {
                rf.this.f15937c.post(new b());
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f15944a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Bitmap f15945b;

        public b(f fVar, Bitmap bitmap) {
            this.f15944a = fVar;
            this.f15945b = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15944a.a(this.f15945b);
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f15947a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Bitmap f15948b;

        public c(f fVar, Bitmap bitmap) {
            this.f15947a = fVar;
            this.f15948b = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15947a.a(this.f15948b);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f15950a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f15951b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f15952c;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f15954a;

            public a(Bitmap bitmap) {
                this.f15954a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f15952c.a(this.f15954a);
            }
        }

        public d(String str, boolean z2, f fVar) {
            this.f15950a = str;
            this.f15951b = z2;
            this.f15952c = fVar;
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f15950a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(2000);
                if (httpURLConnection.getResponseCode() == 200) {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    httpURLConnection.disconnect();
                    if (!this.f15951b) {
                        this.f15952c.a(bitmapDecodeStream);
                    } else if (rf.this.f15937c != null) {
                        rf.this.f15937c.post(new a(bitmapDecodeStream));
                    }
                    rf.this.f15936b.put(this.f15950a, bitmapDecodeStream);
                    String str = this.f15950a;
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(c8.e(rf.f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)))));
                }
            } catch (Exception unused) {
                this.f15952c.a();
            }
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f15956a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f15957b;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f15957b.a();
            }
        }

        public e(String str, f fVar) {
            this.f15956a = str;
            this.f15957b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f15956a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(2000);
                if (httpURLConnection.getResponseCode() == 200) {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    httpURLConnection.disconnect();
                    rf.this.f15936b.put(this.f15956a, bitmapDecodeStream);
                    String str = this.f15956a;
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(c8.c(rf.f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)))));
                }
            } catch (Exception unused) {
                rf.this.f15937c.post(new a());
            }
        }
    }

    public interface f {
        void a();

        void a(Bitmap bitmap);
    }

    private static rf b() {
        if (f15934e == null) {
            synchronized (rf.class) {
                try {
                    if (f15934e == null) {
                        f15934e = new rf();
                    }
                } finally {
                }
            }
        }
        return f15934e;
    }

    private boolean c() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static rf a(Context context) {
        if (b4.j().f13060u != null) {
            f15933d = b4.j().f13060u;
        } else if (context != null) {
            f15933d = context.getApplicationContext();
        } else {
            f15933d = q1.i().n();
        }
        return b();
    }

    public class g implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        String f15960a;

        /* renamed from: b, reason: collision with root package name */
        ImageView f15961b;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f15963a;

            public a(Bitmap bitmap) {
                this.f15963a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.f15961b.setImageBitmap(this.f15963a);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
            }
        }

        public g(String str) {
            this.f15960a = str;
        }

        private void b() {
            rf.this.f15937c.post(new b());
        }

        public void a(ImageView imageView) {
            this.f15961b = imageView;
            if (TextUtils.isEmpty(this.f15960a)) {
                return;
            }
            Bitmap bitmap = (Bitmap) rf.this.f15936b.get(this.f15960a);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapA = a();
            if (bitmapA == null) {
                rf.this.f15935a.submit(this);
            } else {
                imageView.setImageBitmap(bitmapA);
                rf.this.f15936b.put(this.f15960a, bitmapA);
            }
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f15960a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(2000);
                if (httpURLConnection.getResponseCode() != 200) {
                    b();
                    return;
                }
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                rf.this.f15937c.post(new a(bitmapDecodeStream));
                rf.this.f15936b.put(this.f15960a, bitmapDecodeStream);
                String str = this.f15960a;
                bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(c8.c(rf.f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)))));
            } catch (FileNotFoundException unused) {
            } catch (Exception e2) {
                e2.printStackTrace();
                b();
            }
        }

        private Bitmap a() {
            String str = this.f15960a;
            File file = new File(c8.c(rf.f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
            if (!file.exists() || file.length() <= 0) {
                return null;
            }
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }
    }

    public g a(String str) {
        return new g(str);
    }

    public void b(String str, f fVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = (Bitmap) this.f15936b.get(str);
        if (bitmap != null) {
            fVar.a(bitmap);
            return;
        }
        File file = new File(c8.c(f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f15936b.put(str, bitmapDecodeFile);
            fVar.a(bitmapDecodeFile);
        } else {
            this.f15935a.submit(new e(str, fVar));
        }
    }

    public void a(String str, f fVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = (Bitmap) this.f15936b.get(str);
        if (bitmap != null) {
            fVar.a(bitmap);
            return;
        }
        File file = new File(c8.e(f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f15936b.put(str, bitmapDecodeFile);
            fVar.a(bitmapDecodeFile);
        } else {
            this.f15935a.submit(new a(str, fVar));
        }
    }

    public void a(String str, boolean z2, f fVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = (Bitmap) this.f15936b.get(str);
        if (bitmap != null) {
            if (z2) {
                if (c()) {
                    fVar.a(bitmap);
                    return;
                }
                Handler handler = this.f15937c;
                if (handler != null) {
                    handler.post(new b(fVar, bitmap));
                    return;
                }
                return;
            }
            fVar.a(bitmap);
            return;
        }
        File file = new File(c8.e(f15933d), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f15936b.put(str, bitmapDecodeFile);
            if (z2) {
                if (c()) {
                    fVar.a(bitmapDecodeFile);
                    return;
                }
                Handler handler2 = this.f15937c;
                if (handler2 != null) {
                    handler2.post(new c(fVar, bitmapDecodeFile));
                    return;
                }
                return;
            }
            fVar.a(bitmapDecodeFile);
            return;
        }
        this.f15935a.submit(new d(str, z2, fVar));
    }
}
