package com.czhj.sdk.common.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.LruCache;
import android.widget.ImageView;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class ImageManager {

    /* renamed from: a, reason: collision with root package name */
    private static volatile ImageManager f29476a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f29477b;

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f29478c = ThreadPoolFactory.getFixIOExecutor();

    /* renamed from: d, reason: collision with root package name */
    private final LruCache<String, Bitmap> f29479d = new LruCache<>(4194304);

    /* renamed from: e, reason: collision with root package name */
    private final Handler f29480e = new Handler(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    private File f29481f;

    public interface BitmapLoadedListener {
        void onBitmapLoadFailed();

        void onBitmapLoaded(Bitmap bitmap);
    }

    public class RequestCreatorRunnable implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        String f29488a;

        /* renamed from: b, reason: collision with root package name */
        int f29489b;

        /* renamed from: c, reason: collision with root package name */
        int f29490c;

        /* renamed from: d, reason: collision with root package name */
        ImageView f29491d;

        public RequestCreatorRunnable(String str) {
            this.f29488a = StringUtil.getUrl(str);
        }

        private Bitmap a() {
            File file = new File(ImageManager.this.a(), Md5Util.getMd5FilenameFromUrl(this.f29488a));
            if (!file.exists() || file.length() <= 0) {
                return null;
            }
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }

        private void b() {
            ImageManager.this.f29480e.post(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.RequestCreatorRunnable.2
                @Override // java.lang.Runnable
                public void run() {
                    ImageView imageView;
                    RequestCreatorRunnable requestCreatorRunnable = RequestCreatorRunnable.this;
                    int i2 = requestCreatorRunnable.f29490c;
                    if (i2 == 0 || (imageView = requestCreatorRunnable.f29491d) == null) {
                        return;
                    }
                    imageView.setImageResource(i2);
                }
            });
        }

        public RequestCreatorRunnable error(int i2) {
            this.f29490c = i2;
            return this;
        }

        public void into(ImageView imageView) {
            this.f29491d = imageView;
            int i2 = this.f29489b;
            if (i2 != 0 && imageView != null) {
                imageView.setImageResource(i2);
            }
            if (TextUtils.isEmpty(this.f29488a)) {
                return;
            }
            Bitmap bitmap = (Bitmap) ImageManager.this.f29479d.get(this.f29488a);
            if (bitmap != null && imageView != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapA = a();
            if (bitmapA == null || imageView == null) {
                ImageManager.this.f29478c.submit(this);
            } else {
                imageView.setImageBitmap(bitmapA);
                ImageManager.this.f29479d.put(this.f29488a, bitmapA);
            }
        }

        public RequestCreatorRunnable placeholder(int i2) {
            this.f29489b = i2;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() throws ProtocolException {
            HttpURLConnection httpURLConnection;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= 3) {
                    return;
                }
                try {
                    httpURLConnection = (HttpURLConnection) new URL(this.f29488a).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(2000);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    b();
                }
                if (httpURLConnection.getResponseCode() == 200) {
                    final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    ImageManager.this.f29480e.post(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.RequestCreatorRunnable.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ImageView imageView = RequestCreatorRunnable.this.f29491d;
                            if (imageView == null) {
                                return;
                            }
                            imageView.setImageBitmap(bitmapDecodeStream);
                            RequestCreatorRunnable.this.f29491d = null;
                        }
                    });
                    ImageManager.this.f29479d.put(this.f29488a, bitmapDecodeStream);
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(ImageManager.this.a(), Md5Util.getMd5FilenameFromUrl(this.f29488a))));
                    return;
                }
                b();
                i2 = i3;
            }
        }
    }

    public ImageManager(Context context) {
        this.f29477b = context.getApplicationContext();
    }

    private static ImageManager a(Context context) {
        if (f29476a == null) {
            synchronized (ImageManager.class) {
                try {
                    if (f29476a == null) {
                        f29476a = new ImageManager(context);
                    }
                } finally {
                }
            }
        }
        return f29476a;
    }

    public static ImageManager with(Context context) {
        return a(context);
    }

    public void clearCache() {
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.1
            @Override // java.lang.Runnable
            public void run() {
                String str;
                try {
                    File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(FileUtil.orderByDate(ImageManager.this.a().getAbsolutePath()), 100);
                    if (fileArrClearCacheFileByCount == null) {
                        str = "native ad file list is null";
                    } else {
                        str = "native ad file remain num: " + fileArrClearCacheFileByCount.length;
                    }
                    SigmobLog.i(str);
                } catch (Throwable th) {
                    SigmobLog.e("clean native ad file error", th);
                }
            }
        });
    }

    public ImageManager customCachePath(File file) {
        this.f29481f = file;
        return this;
    }

    public void getBitmap(String str, final BitmapLoadedListener bitmapLoadedListener) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final String url = StringUtil.getUrl(str);
        Bitmap bitmapDecodeFile = this.f29479d.get(url);
        if (bitmapDecodeFile == null) {
            bitmapDecodeFile = null;
        } else {
            if (!bitmapDecodeFile.isRecycled()) {
                bitmapLoadedListener.onBitmapLoaded(bitmapDecodeFile);
                return;
            }
            this.f29479d.remove(url);
        }
        File file = new File(a(), Md5Util.getMd5FilenameFromUrl(url));
        if (file.exists() && file.length() > 0) {
            bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
        }
        if (bitmapDecodeFile == null) {
            this.f29478c.submit(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.2
                @Override // java.lang.Runnable
                public void run() throws ProtocolException {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(2000);
                        if (httpURLConnection.getResponseCode() == 200) {
                            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                            httpURLConnection.disconnect();
                            ImageManager.this.f29480e.post(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    bitmapLoadedListener.onBitmapLoaded(bitmapDecodeStream);
                                }
                            });
                            ImageManager.this.f29479d.put(url, bitmapDecodeStream);
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(ImageManager.this.a(), Md5Util.getMd5FilenameFromUrl(url))));
                        }
                    } catch (Exception unused) {
                        Handler handler = ImageManager.this.f29480e;
                        final BitmapLoadedListener bitmapLoadedListener2 = bitmapLoadedListener;
                        Objects.requireNonNull(bitmapLoadedListener2);
                        handler.post(new Runnable() { // from class: com.czhj.sdk.common.utils.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                bitmapLoadedListener2.onBitmapLoadFailed();
                            }
                        });
                    }
                }
            });
        } else {
            this.f29479d.put(url, bitmapDecodeFile);
            bitmapLoadedListener.onBitmapLoaded(bitmapDecodeFile);
        }
    }

    public RequestCreatorRunnable load(String str) {
        return new RequestCreatorRunnable(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File a() {
        File file = this.f29481f;
        if (file != null && file.isDirectory() && this.f29481f.exists()) {
            return this.f29481f;
        }
        File file2 = Environment.getExternalStorageState().equals("mounted") ? new File(this.f29477b.getExternalCacheDir(), "SigImageCache") : new File(this.f29477b.getCacheDir(), "SigImageCache");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        this.f29481f = file2;
        return file2;
    }
}
