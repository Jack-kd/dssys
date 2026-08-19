package com.octopus.ad.internal.utilities;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.collection.LruCache;
import com.octopus.ad.d.b.c;
import com.octopus.ad.d.b.f;
import com.octopus.ad.internal.c.h;
import com.octopus.ad.internal.q;
import com.octopus.ad.utils.ThreadUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes4.dex */
public class ImageManager {
    private static volatile ImageManager instance;
    private static SoftReference<Context> mContext;
    private final ExecutorService executorService = Executors.newFixedThreadPool(4);
    private final LruCache<String, Bitmap> imageCache = new LruCache<>(4194304);
    private final Handler handler = new Handler(Looper.getMainLooper());

    /* renamed from: com.octopus.ad.internal.utilities.ImageManager$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ String val$imgUrl;
        final /* synthetic */ BitmapLoadedListener val$listener;

        public AnonymousClass1(String str, BitmapLoadedListener bitmapLoadedListener) {
            this.val$imgUrl = str;
            this.val$listener = bitmapLoadedListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmap = (Bitmap) ImageManager.this.imageCache.get(this.val$imgUrl);
            if (bitmap != null) {
                this.val$listener.onBitmapLoaded(bitmap);
                return;
            }
            File file = new File(c.c((Context) ImageManager.mContext.get()), h.a(this.val$imgUrl));
            Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
            if (bitmapDecodeFile == null) {
                ImageManager.this.executorService.submit(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.1.1
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        FileOutputStream fileOutputStream;
                        Throwable th;
                        InputStream inputStream;
                        HttpURLConnection httpURLConnection;
                        FileOutputStream fileOutputStream2 = null;
                        try {
                            try {
                                try {
                                    httpURLConnection = (HttpURLConnection) new URL(AnonymousClass1.this.val$imgUrl).openConnection();
                                    try {
                                        httpURLConnection.setRequestMethod("GET");
                                        httpURLConnection.setConnectTimeout(2000);
                                        if (httpURLConnection.getResponseCode() == 200) {
                                            inputStream = httpURLConnection.getInputStream();
                                            try {
                                                final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                                                ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.1.1.1
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        AnonymousClass1.this.val$listener.onBitmapLoaded(bitmapDecodeStream);
                                                    }
                                                });
                                                ImageManager.this.imageCache.put(AnonymousClass1.this.val$imgUrl, bitmapDecodeStream);
                                                if (ImageManager.mContext != null && ImageManager.mContext.get() != null) {
                                                    fileOutputStream = new FileOutputStream(new File(c.c((Context) ImageManager.mContext.get()), h.a(AnonymousClass1.this.val$imgUrl)));
                                                    try {
                                                        bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                                        fileOutputStream2 = fileOutputStream;
                                                    } catch (Exception unused) {
                                                        fileOutputStream2 = fileOutputStream;
                                                        ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.1.1.2
                                                            @Override // java.lang.Runnable
                                                            public void run() {
                                                                AnonymousClass1.this.val$listener.onBitmapLoadFailed();
                                                            }
                                                        });
                                                        if (fileOutputStream2 != null) {
                                                            fileOutputStream2.close();
                                                        }
                                                        if (inputStream != null) {
                                                            inputStream.close();
                                                        }
                                                        if (httpURLConnection != null) {
                                                            httpURLConnection.disconnect();
                                                            return;
                                                        }
                                                        return;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        if (fileOutputStream != null) {
                                                            try {
                                                                fileOutputStream.close();
                                                            } catch (Exception e2) {
                                                                f.a("OctopusAd", "An Exception Caught", e2);
                                                                throw th;
                                                            }
                                                        }
                                                        if (inputStream != null) {
                                                            inputStream.close();
                                                        }
                                                        if (httpURLConnection != null) {
                                                            httpURLConnection.disconnect();
                                                        }
                                                        throw th;
                                                    }
                                                }
                                            } catch (Exception unused2) {
                                            }
                                        } else {
                                            inputStream = null;
                                        }
                                        if (fileOutputStream2 != null) {
                                            fileOutputStream2.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        httpURLConnection.disconnect();
                                    } catch (Exception unused3) {
                                        inputStream = null;
                                    } catch (Throwable th3) {
                                        fileOutputStream = null;
                                        th = th3;
                                        inputStream = null;
                                    }
                                } catch (Exception e3) {
                                    f.a("OctopusAd", "An Exception Caught", e3);
                                }
                            } catch (Exception unused4) {
                                httpURLConnection = null;
                                inputStream = null;
                            } catch (Throwable th4) {
                                inputStream = null;
                                fileOutputStream = null;
                                th = th4;
                                httpURLConnection = null;
                            }
                        } catch (Throwable th5) {
                            fileOutputStream = fileOutputStream2;
                            th = th5;
                        }
                    }
                });
            } else {
                ImageManager.this.imageCache.put(this.val$imgUrl, bitmapDecodeFile);
                this.val$listener.onBitmapLoaded(bitmapDecodeFile);
            }
        }
    }

    public interface BitmapLoadedListener {
        void onBitmapLoadFailed();

        void onBitmapLoaded(Bitmap bitmap);
    }

    public class RequestCreatorRunnble implements Runnable {
        HttpURLConnection conn;
        int errorResId;
        int holderResId;
        ImageView imageView;
        InputStream is;
        FileOutputStream os;
        String url;

        public RequestCreatorRunnble(String str) {
            this.url = str;
        }

        private Bitmap getBitmapFile() throws NoSuchAlgorithmException {
            if (ImageManager.mContext != null && ImageManager.mContext.get() != null) {
                File file = new File(c.c((Context) ImageManager.mContext.get()), h.a(this.url));
                if (file.exists() && file.length() > 0) {
                    return BitmapFactory.decodeFile(file.getAbsolutePath());
                }
            }
            return null;
        }

        private void showError() {
            ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.RequestCreatorRunnble.2
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        }

        public RequestCreatorRunnble error(int i2) {
            this.errorResId = i2;
            return this;
        }

        public String getImagePath() {
            if (ImageManager.mContext == null || ImageManager.mContext.get() == null || TextUtils.isEmpty(this.url)) {
                return "";
            }
            File file = new File(c.c((Context) ImageManager.mContext.get()), h.a(this.url));
            if (!file.exists() || file.length() <= 0) {
                ImageManager.this.executorService.submit(this);
                return this.url;
            }
            return "file://" + file.getAbsolutePath();
        }

        public void into(ImageView imageView) throws NoSuchAlgorithmException {
            this.imageView = imageView;
            if (TextUtils.isEmpty(this.url)) {
                return;
            }
            Bitmap bitmap = (Bitmap) ImageManager.this.imageCache.get(this.url);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapFile = getBitmapFile();
            if (bitmapFile == null) {
                ImageManager.this.executorService.submit(this);
            } else {
                imageView.setImageBitmap(bitmapFile);
                ImageManager.this.imageCache.put(this.url, bitmapFile);
            }
        }

        public RequestCreatorRunnble placeholder(int i2) {
            this.holderResId = i2;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            try {
                try {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.url).openConnection();
                        this.conn = httpURLConnection;
                        httpURLConnection.setRequestMethod("GET");
                        this.conn.setConnectTimeout(2000);
                        if (this.conn.getResponseCode() == 200) {
                            InputStream inputStream = this.conn.getInputStream();
                            this.is = inputStream;
                            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                            ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.RequestCreatorRunnble.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ImageView imageView = RequestCreatorRunnble.this.imageView;
                                    if (imageView != null) {
                                        imageView.setImageBitmap(bitmapDecodeStream);
                                    }
                                }
                            });
                            ImageManager.this.imageCache.put(this.url, bitmapDecodeStream);
                            if (ImageManager.mContext != null && ImageManager.mContext.get() != null) {
                                FileOutputStream fileOutputStream = new FileOutputStream(new File(c.c((Context) ImageManager.mContext.get()), h.a(this.url)));
                                this.os = fileOutputStream;
                                bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                            }
                        } else {
                            showError();
                        }
                        InputStream inputStream2 = this.is;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        FileOutputStream fileOutputStream2 = this.os;
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                        HttpURLConnection httpURLConnection2 = this.conn;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                    } catch (Exception e2) {
                        f.a("OctopusAd", "An Exception Caught", e2);
                        showError();
                        InputStream inputStream3 = this.is;
                        if (inputStream3 != null) {
                            inputStream3.close();
                        }
                        FileOutputStream fileOutputStream3 = this.os;
                        if (fileOutputStream3 != null) {
                            fileOutputStream3.close();
                        }
                        HttpURLConnection httpURLConnection3 = this.conn;
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                    }
                } catch (Throwable th) {
                    try {
                        InputStream inputStream4 = this.is;
                        if (inputStream4 != null) {
                            inputStream4.close();
                        }
                        FileOutputStream fileOutputStream4 = this.os;
                        if (fileOutputStream4 != null) {
                            fileOutputStream4.close();
                        }
                        HttpURLConnection httpURLConnection4 = this.conn;
                        if (httpURLConnection4 != null) {
                            httpURLConnection4.disconnect();
                        }
                    } catch (Exception e3) {
                        f.a("OctopusAd", "An Exception Caught", e3);
                    }
                    throw th;
                }
            } catch (Exception e4) {
                f.a("OctopusAd", "An Exception Caught", e4);
            }
        }
    }

    private static ImageManager getInstance() {
        if (instance == null) {
            synchronized (ImageManager.class) {
                try {
                    if (instance == null) {
                        instance = new ImageManager();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public static ImageManager with(Context context) {
        if (q.a().f35026t != null) {
            mContext = new SoftReference<>(q.a().f35026t);
        } else {
            mContext = new SoftReference<>(context);
        }
        return getInstance();
    }

    public void getBitmap(String str, BitmapLoadedListener bitmapLoadedListener) {
        SoftReference<Context> softReference = mContext;
        if (softReference == null || softReference.get() == null || TextUtils.isEmpty(str)) {
            return;
        }
        ThreadUtils.runOnThreadPool(new AnonymousClass1(str, bitmapLoadedListener));
    }

    public RequestCreatorRunnble load(String str) {
        return new RequestCreatorRunnble(str);
    }
}
