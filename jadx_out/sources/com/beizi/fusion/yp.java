package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.collection.LruCache;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public class yp {

    /* renamed from: d, reason: collision with root package name */
    private static yp f17705d;

    /* renamed from: a, reason: collision with root package name */
    private ExecutorService f17706a = Executors.newFixedThreadPool(4);

    /* renamed from: b, reason: collision with root package name */
    private LruCache f17707b = new LruCache(1048576);

    /* renamed from: c, reason: collision with root package name */
    private Handler f17708c = new Handler();

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f17709a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f17710b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ e f17711c;

        /* renamed from: com.beizi.fusion.yp$a$a, reason: collision with other inner class name */
        public class RunnableC0181a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f17713a;

            public RunnableC0181a(String str) {
                this.f17713a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f17711c.a(this.f17713a);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f17711c.a();
            }
        }

        public a(String str, Context context, e eVar) {
            this.f17709a = str;
            this.f17710b = context;
            this.f17711c = eVar;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            try {
                InputStream inputStream = ((HttpURLConnection) new URL(this.f17709a).openConnection()).getInputStream();
                String str = this.f17709a;
                File file = new File(c8.e(this.f17710b), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i2 = bufferedInputStream.read(bArr);
                    if (i2 == -1) {
                        String absolutePath = file.getAbsolutePath();
                        yp.this.f17708c.post(new RunnableC0181a(absolutePath));
                        yp.this.f17707b.put(this.f17709a, absolutePath);
                        fileOutputStream.close();
                        inputStream.close();
                        bufferedInputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                }
            } catch (Exception unused) {
                yp.this.f17708c.post(new b());
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f17716a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f17717b;

        public b(e eVar, String str) {
            this.f17716a = eVar;
            this.f17717b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17716a.a(this.f17717b);
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f17719a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f17720b;

        public c(e eVar, String str) {
            this.f17719a = eVar;
            this.f17720b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17719a.a(this.f17720b);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f17722a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f17723b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f17724c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ e f17725d;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f17727a;

            public a(String str) {
                this.f17727a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f17725d.a(this.f17727a);
            }
        }

        public d(String str, Context context, boolean z2, e eVar) {
            this.f17722a = str;
            this.f17723b = context;
            this.f17724c = z2;
            this.f17725d = eVar;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            try {
                InputStream inputStream = ((HttpURLConnection) new URL(this.f17722a).openConnection()).getInputStream();
                String str = this.f17722a;
                String strSubstring = str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1);
                File file = new File(c8.e(this.f17723b), e9.a(strSubstring) + "_" + Thread.currentThread().getId() + "_" + System.currentTimeMillis());
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i2 = bufferedInputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, i2);
                    }
                }
                File file2 = new File(c8.e(this.f17723b), e9.a(strSubstring));
                if (file2.exists()) {
                    file.delete();
                } else {
                    file.renameTo(file2);
                }
                String absolutePath = file2.getAbsolutePath();
                if (!this.f17724c) {
                    this.f17725d.a(absolutePath);
                } else if (yp.this.f17708c != null) {
                    yp.this.f17708c.post(new a(absolutePath));
                }
                yp.this.f17707b.put(this.f17722a, absolutePath);
                fileOutputStream.close();
                inputStream.close();
                bufferedInputStream.close();
            } catch (Exception unused) {
                this.f17725d.a();
            }
        }
    }

    public interface e {
        void a();

        void a(String str);
    }

    public static yp c() {
        return a();
    }

    private static yp a() {
        if (f17705d == null) {
            synchronized (yp.class) {
                try {
                    if (f17705d == null) {
                        f17705d = new yp();
                    }
                } finally {
                }
            }
        }
        return f17705d;
    }

    private boolean b() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public void a(Context context, String str, e eVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = (String) this.f17707b.get(str);
        if (!TextUtils.isEmpty(str2)) {
            eVar.a(str2);
            return;
        }
        File file = new File(c8.e(context), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
        String absolutePath = (!file.exists() || file.length() <= 0) ? null : file.getAbsolutePath();
        if (!TextUtils.isEmpty(absolutePath)) {
            this.f17707b.put(str, absolutePath);
            eVar.a(absolutePath);
        } else {
            this.f17706a.submit(new a(str, context, eVar));
        }
    }

    public void a(Context context, String str, boolean z2, e eVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = (String) this.f17707b.get(str);
        if (!TextUtils.isEmpty(str2)) {
            if (z2) {
                if (b()) {
                    eVar.a(str2);
                    return;
                }
                Handler handler = this.f17708c;
                if (handler != null) {
                    handler.post(new b(eVar, str2));
                    return;
                }
                return;
            }
            eVar.a(str2);
            return;
        }
        File file = new File(c8.e(context), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
        String absolutePath = (!file.exists() || file.length() <= 0) ? null : file.getAbsolutePath();
        if (!TextUtils.isEmpty(absolutePath)) {
            this.f17707b.put(str, absolutePath);
            if (z2) {
                if (b()) {
                    eVar.a(absolutePath);
                    return;
                }
                Handler handler2 = this.f17708c;
                if (handler2 != null) {
                    handler2.post(new c(eVar, absolutePath));
                    return;
                }
                return;
            }
            eVar.a(absolutePath);
            return;
        }
        this.f17706a.submit(new d(str, context, z2, eVar));
    }

    public void a(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (!TextUtils.isEmpty((String) this.f17707b.get(str))) {
                this.f17707b.remove(str);
            }
            File file = new File(c8.e(context), e9.a(str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1)));
            if (!file.exists() || file.length() <= 0) {
                return;
            }
            file.delete();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
