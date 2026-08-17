package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.collection.LruCache;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public class a4 {

    /* renamed from: d, reason: collision with root package name */
    private static Context f12604d;

    /* renamed from: e, reason: collision with root package name */
    private static a4 f12605e;

    /* renamed from: a, reason: collision with root package name */
    private ExecutorService f12606a = Executors.newFixedThreadPool(4);

    /* renamed from: b, reason: collision with root package name */
    private LruCache f12607b = new LruCache(4194304);

    /* renamed from: c, reason: collision with root package name */
    private Handler f12608c = new Handler();

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f12609a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f12610b;

        /* renamed from: com.beizi.fusion.a4$a$a, reason: collision with other inner class name */
        public class RunnableC0147a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f12612a;

            public RunnableC0147a(Bitmap bitmap) {
                this.f12612a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f12610b.a(this.f12612a);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f12610b.a();
            }
        }

        public a(String str, c cVar) {
            this.f12609a = str;
            this.f12610b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f12609a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                if (httpURLConnection.getResponseCode() == 200) {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    httpURLConnection.disconnect();
                    a4.this.f12608c.post(new RunnableC0147a(bitmapDecodeStream));
                    a4.this.f12607b.put(this.f12609a, bitmapDecodeStream);
                    String str = this.f12609a;
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(k4.a(a4.f12604d), a4.c(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)))));
                }
            } catch (Exception unused) {
                a4.this.f12608c.post(new b());
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f12615a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f12616b;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f12616b.a();
            }
        }

        public b(String str, c cVar) {
            this.f12615a = str;
            this.f12616b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f12615a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                if (httpURLConnection.getResponseCode() == 200) {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    httpURLConnection.disconnect();
                    a4.this.f12607b.put(this.f12615a, bitmapDecodeStream);
                    String str = this.f12615a;
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(k4.a(a4.f12604d), a4.c(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)))));
                }
            } catch (Exception unused) {
                a4.this.f12608c.post(new a());
            }
        }
    }

    public interface c {
        void a();

        void a(Bitmap bitmap);
    }

    private static a4 b() {
        if (f12605e == null) {
            synchronized (a4.class) {
                try {
                    if (f12605e == null) {
                        f12605e = new a4();
                    }
                } finally {
                }
            }
        }
        return f12605e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static a4 a(Context context) {
        if (context == null) {
            vo.c("Illegal Argument: context is null");
        } else {
            f12604d = context;
        }
        return b();
    }

    public void a(String str, c cVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = (Bitmap) this.f12607b.get(str);
        if (bitmap != null) {
            cVar.a(bitmap);
            return;
        }
        File file = new File(k4.a(f12604d), c(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f12607b.put(str, bitmapDecodeFile);
            cVar.a(bitmapDecodeFile);
        } else {
            this.f12606a.submit(new a(str, cVar));
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        String f12619a;

        /* renamed from: b, reason: collision with root package name */
        ImageView f12620b;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f12622a;

            public a(Bitmap bitmap) {
                this.f12622a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f12620b.setImageBitmap(this.f12622a);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
            }
        }

        public d(String str) {
            this.f12619a = str;
        }

        private void b() {
            a4.this.f12608c.post(new b());
        }

        public void a(ImageView imageView) {
            this.f12620b = imageView;
            if (TextUtils.isEmpty(this.f12619a)) {
                return;
            }
            Bitmap bitmap = (Bitmap) a4.this.f12607b.get(this.f12619a);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapA = a();
            if (bitmapA == null) {
                a4.this.f12606a.submit(this);
            } else {
                imageView.setImageBitmap(bitmapA);
                a4.this.f12607b.put(this.f12619a, bitmapA);
            }
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f12619a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                if (httpURLConnection.getResponseCode() != 200) {
                    b();
                    return;
                }
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                a4.this.f12608c.post(new a(bitmapDecodeStream));
                a4.this.f12607b.put(this.f12619a, bitmapDecodeStream);
                String str = this.f12619a;
                File file = new File(k4.a(a4.f12604d), a4.c(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
                mh.a("BeiZis", "BeiZiImageUtils run file == " + file);
                bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(file));
            } catch (FileNotFoundException unused) {
            } catch (Exception unused2) {
                b();
            }
        }

        private Bitmap a() {
            String str = this.f12619a;
            File file = new File(k4.a(a4.f12604d), a4.c(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
            mh.a("BeiZis", "BeiZiImageUtils getBitmapFile file == " + file);
            if (!file.exists() || file.length() <= 0) {
                return null;
            }
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }
    }

    public d b(String str) {
        return new d(str);
    }

    public void b(String str, c cVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = (Bitmap) this.f12607b.get(str);
        if (bitmap != null) {
            cVar.a(bitmap);
            return;
        }
        File file = new File(k4.a(f12604d), c(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f12607b.put(str, bitmapDecodeFile);
            cVar.a(bitmapDecodeFile);
        } else {
            this.f12606a.submit(new b(str, cVar));
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            int i2 = (b3 >>> 4) & 15;
            int i3 = 0;
            while (true) {
                sb.append((char) ((i2 < 0 || i2 > 9) ? i2 + 87 : i2 + 48));
                i2 = b3 & com.umeng.analytics.pro.ek.f49295m;
                int i4 = i3 + 1;
                if (i3 >= 1) {
                    break;
                }
                i3 = i4;
            }
        }
        return sb.toString();
    }
}
