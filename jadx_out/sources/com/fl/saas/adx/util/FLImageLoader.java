package com.fl.saas.adx.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.util.Log;
import android.util.LruCache;
import android.widget.ImageView;
import com.fl.saas.C1166c;
import com.fl.saas.S;
import com.umeng.analytics.pro.ca;
import com.varbto.utils.api.UtilConst;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class FLImageLoader {
    private static final float CACHE_SIZE_RATIO = 0.005f;
    private static final float CLEANUP_THRESHOLD_RATIO = 0.9f;
    private static final long DEFAULT_CLEANUP_THRESHOLD = 188743680;
    private static final long DEFAULT_MAX_DISK_CACHE_SIZE = 209715200;
    private static final String TAG = "FLImageLoader";
    private static volatile FLImageLoader instance;
    private LruCache<String, Bitmap> bitmapCache;
    private File cacheDir;
    private LruCache<String, File> gifFileCache;
    private LruCache<String, Bitmap> gifFirstFrameCache;
    private Map<String, ImageLoadTask> taskMap = new ConcurrentHashMap();
    private Map<String, BitmapLoadTask> bitmapLoadTaskMap = new ConcurrentHashMap();
    private int defaultImageResId = 0;
    private int errorImageResId = 0;
    private boolean enableDiskCache = true;
    private boolean enableMemoryCache = false;
    private boolean forceArgb8888 = true;
    private long maxDiskCacheSize = DEFAULT_MAX_DISK_CACHE_SIZE;
    private long cleanupThreshold = DEFAULT_CLEANUP_THRESHOLD;
    private Handler mainHandler = new Handler(Looper.getMainLooper());

    public class BitmapLoadTask extends AsyncTask<Void, Void, Object> {
        private String imageUrl;
        private boolean isGif;
        private boolean isWebp;
        private OnBitmapLoadListener listener;

        public BitmapLoadTask(String str, boolean z2, OnBitmapLoadListener onBitmapLoadListener) {
            this.imageUrl = str;
            this.isGif = z2;
            this.isWebp = str.toLowerCase().endsWith(".webp");
            this.listener = onBitmapLoadListener;
        }

        private Bitmap safeCompressBitmap(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                if (width > 1024 || height > 1024) {
                    float f2 = 1024;
                    float f3 = width;
                    float f4 = height;
                    float fMin = Math.min(f2 / f3, f2 / f4);
                    try {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.max((int) (f3 * fMin), 1), Math.max((int) (f4 * fMin), 1), true);
                        if (bitmapCreateScaledBitmap != bitmap) {
                            if (bitmap.isRecycled()) {
                                return bitmapCreateScaledBitmap;
                            }
                            bitmap.recycle();
                            return bitmapCreateScaledBitmap;
                        }
                    } catch (OutOfMemoryError e2) {
                        Log.e(FLImageLoader.TAG, "Out of memory compressing bitmap", e2);
                    }
                }
                return bitmap;
            } catch (Throwable th) {
                Log.e(FLImageLoader.TAG, "Error compressing bitmap", th);
                return bitmap;
            }
        }

        private void safeSaveBitmapToDiskCache(String str, Bitmap bitmap) {
            FileOutputStream fileOutputStream;
            if (!FLImageLoader.this.enableDiskCache || bitmap == null || FLImageLoader.this.cacheDir == null) {
                return;
            }
            FLImageLoader.this.checkAndCleanupDiskCacheIfNeeded();
            try {
                try {
                    String cacheFilename = FLImageLoader.this.getCacheFilename(str);
                    if (cacheFilename == null) {
                        return;
                    }
                    File file = new File(FLImageLoader.this.cacheDir, cacheFilename);
                    File parentFile = file.getParentFile();
                    if (parentFile != null && !parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        if (cacheFilename.endsWith(".png")) {
                            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        } else {
                            bitmap.compress(Bitmap.CompressFormat.JPEG, 85, fileOutputStream);
                        }
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        try {
                            Log.e(FLImageLoader.TAG, "Error saving bitmap to disk cache", th);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (Throwable th2) {
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th3) {
                                    Log.e(FLImageLoader.TAG, "Error closing stream", th3);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
            } catch (Throwable th5) {
                Log.e(FLImageLoader.TAG, "Error closing stream", th5);
            }
        }

        public void addListener(OnBitmapLoadListener onBitmapLoadListener) {
            this.listener = onBitmapLoadListener;
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            try {
                FLImageLoader.this.bitmapLoadTaskMap.remove(this.imageUrl);
            } catch (Throwable th) {
                Log.e(FLImageLoader.TAG, "Error removing bitmap task on cancellation", th);
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            FLImageLoader fLImageLoader;
            OnBitmapLoadListener onBitmapLoadListener;
            String str;
            String str2;
            try {
                FLImageLoader.this.bitmapLoadTaskMap.remove(this.imageUrl);
                if (obj == null || !(obj instanceof Bitmap)) {
                    fLImageLoader = FLImageLoader.this;
                    onBitmapLoadListener = this.listener;
                    str = this.imageUrl;
                    str2 = "Load failed";
                } else {
                    Bitmap bitmap = (Bitmap) obj;
                    if (!bitmap.isRecycled()) {
                        if (FLImageLoader.this.enableMemoryCache) {
                            if (this.isGif) {
                                FLImageLoader.this.addGifFirstFrameToMemoryCache(this.imageUrl, bitmap);
                            } else {
                                FLImageLoader.this.addBitmapToMemoryCache(this.imageUrl, bitmap);
                            }
                        }
                        FLImageLoader.this.safeCallBitmapLoaded(this.listener, this.imageUrl, bitmap, false);
                        return;
                    }
                    fLImageLoader = FLImageLoader.this;
                    onBitmapLoadListener = this.listener;
                    str = this.imageUrl;
                    str2 = "Bitmap is null or recycled";
                }
                fLImageLoader.safeCallBitmapLoadFailed(onBitmapLoadListener, str, str2);
            } catch (Throwable th) {
                Log.e(FLImageLoader.TAG, "Error in BitmapLoadTask onPostExecute", th);
                FLImageLoader.this.safeCallBitmapLoadFailed(this.listener, this.imageUrl, "Unexpected error: " + th.getMessage());
            }
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Void... voidArr) {
            StringBuilder sb;
            String str;
            String cacheFilename;
            try {
            } catch (OutOfMemoryError e2) {
                e = e2;
                sb = new StringBuilder();
                str = "Out of memory loading bitmap: ";
                sb.append(str);
                sb.append(this.imageUrl);
                Log.e(FLImageLoader.TAG, sb.toString(), e);
                return null;
            } catch (Throwable th) {
                e = th;
                sb = new StringBuilder();
                str = "Error loading bitmap: ";
                sb.append(str);
                sb.append(this.imageUrl);
                Log.e(FLImageLoader.TAG, sb.toString(), e);
                return null;
            }
            if (isCancelled()) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.imageUrl).openConnection();
            httpURLConnection.setConnectTimeout(ca.f49002b);
            httpURLConnection.setReadTimeout(ca.f49002b);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
            if (isCancelled()) {
                httpURLConnection.disconnect();
                return null;
            }
            httpURLConnection.connect();
            if (isCancelled()) {
                httpURLConnection.disconnect();
                return null;
            }
            if (httpURLConnection.getResponseCode() != 200) {
                httpURLConnection.disconnect();
                Log.e(FLImageLoader.TAG, "HTTP error: " + httpURLConnection.getResponseCode() + " for URL: " + this.imageUrl);
                return null;
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            if (isCancelled()) {
                inputStream.close();
                httpURLConnection.disconnect();
                return null;
            }
            if (!this.isGif) {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                inputStream.close();
                httpURLConnection.disconnect();
                if (isCancelled()) {
                    if (bitmapDecodeStream != null && !bitmapDecodeStream.isRecycled()) {
                        bitmapDecodeStream.recycle();
                    }
                    return null;
                }
                if (bitmapDecodeStream == null) {
                    return bitmapDecodeStream;
                }
                if (this.isWebp) {
                    bitmapDecodeStream = FLImageLoader.this.checkAndFixBitmapConfig(bitmapDecodeStream, this.imageUrl);
                }
                Bitmap bitmapSafeCompressBitmap = safeCompressBitmap(bitmapDecodeStream);
                if (isCancelled()) {
                    if (!bitmapSafeCompressBitmap.isRecycled()) {
                        bitmapSafeCompressBitmap.recycle();
                    }
                    return null;
                }
                if (FLImageLoader.this.enableDiskCache && FLImageLoader.this.cacheDir != null) {
                    safeSaveBitmapToDiskCache(this.imageUrl, bitmapSafeCompressBitmap);
                }
                return bitmapSafeCompressBitmap;
            }
            byte[] bArr = new byte[4096];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                    if (isCancelled()) {
                        return null;
                    }
                    if (FLImageLoader.this.enableDiskCache && FLImageLoader.this.cacheDir != null) {
                        FLImageLoader.this.saveToDiskCache(this.imageUrl, byteArray);
                    }
                    Bitmap bitmapDecodeGifFirstFrame = FLImageLoader.this.decodeGifFirstFrame(byteArray);
                    if (FLImageLoader.this.enableMemoryCache && FLImageLoader.this.cacheDir != null && (cacheFilename = FLImageLoader.this.getCacheFilename(this.imageUrl)) != null) {
                        FLImageLoader.this.addGifToMemoryCache(this.imageUrl, new File(FLImageLoader.this.cacheDir, cacheFilename));
                    }
                    return bitmapDecodeGifFirstFrame;
                }
                if (isCancelled()) {
                    inputStream.close();
                    byteArrayOutputStream.close();
                    httpURLConnection.disconnect();
                    return null;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        }
    }

    public static class CacheFileInfo {
        private String fileName;
        private long fileSize;
        private long lastModified;

        public CacheFileInfo(String str, long j2, long j3) {
            this.fileName = str;
            this.lastModified = j2;
            this.fileSize = j3;
        }

        public String getFileName() {
            return this.fileName;
        }

        public long getFileSize() {
            return this.fileSize;
        }

        public long getLastModified() {
            return this.lastModified;
        }
    }

    public class ImageLoadTask extends AsyncTask<Void, Void, Object> {
        private String imageUrl;
        private ImageView imageView;
        private boolean isGif;
        private boolean isWebp;
        private OnImageLoadListener listener;

        public class GifLoadResult {
            Bitmap firstFrameBitmap;
            byte[] gifData;

            public GifLoadResult(byte[] bArr, Bitmap bitmap) {
                this.gifData = bArr;
                this.firstFrameBitmap = bitmap;
            }
        }

        public ImageLoadTask(ImageView imageView, String str, boolean z2, OnImageLoadListener onImageLoadListener) {
            this.imageView = imageView;
            this.imageUrl = str;
            this.isGif = z2;
            this.isWebp = str.toLowerCase().endsWith(".webp");
            this.listener = onImageLoadListener;
        }

        private Bitmap safeCompressBitmap(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                if (width > 1024 || height > 1024) {
                    float f2 = 1024;
                    float f3 = width;
                    float f4 = height;
                    float fMin = Math.min(f2 / f3, f2 / f4);
                    try {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.max((int) (f3 * fMin), 1), Math.max((int) (f4 * fMin), 1), true);
                        if (bitmapCreateScaledBitmap != bitmap) {
                            if (bitmap.isRecycled()) {
                                return bitmapCreateScaledBitmap;
                            }
                            bitmap.recycle();
                            return bitmapCreateScaledBitmap;
                        }
                    } catch (OutOfMemoryError e2) {
                        Log.e(FLImageLoader.TAG, "Out of memory compressing bitmap", e2);
                    }
                }
                return bitmap;
            } catch (Throwable th) {
                Log.e(FLImageLoader.TAG, "Error compressing bitmap", th);
                return bitmap;
            }
        }

        private void safeSaveBitmapToDiskCache(String str, Bitmap bitmap) {
            FileOutputStream fileOutputStream;
            Bitmap.CompressFormat compressFormat;
            if (!FLImageLoader.this.enableDiskCache || bitmap == null || FLImageLoader.this.cacheDir == null) {
                return;
            }
            FLImageLoader.this.checkAndCleanupDiskCacheIfNeeded();
            try {
                try {
                    String cacheFilename = FLImageLoader.this.getCacheFilename(str);
                    if (cacheFilename == null) {
                        return;
                    }
                    File file = new File(FLImageLoader.this.cacheDir, cacheFilename);
                    File parentFile = file.getParentFile();
                    if (parentFile != null && !parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        if (cacheFilename.endsWith(".png")) {
                            compressFormat = Bitmap.CompressFormat.PNG;
                        } else {
                            if (!cacheFilename.endsWith(".webp")) {
                                bitmap.compress(Bitmap.CompressFormat.JPEG, 85, fileOutputStream);
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            }
                            compressFormat = Bitmap.CompressFormat.WEBP;
                        }
                        bitmap.compress(compressFormat, 100, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        try {
                            Log.e(FLImageLoader.TAG, "Error saving bitmap to disk cache", th);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (Throwable th2) {
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th3) {
                                    Log.e(FLImageLoader.TAG, "Error closing stream", th3);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
            } catch (Throwable th5) {
                Log.e(FLImageLoader.TAG, "Error closing stream", th5);
            }
        }

        public void addListener(OnImageLoadListener onImageLoadListener) {
            this.listener = onImageLoadListener;
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            try {
                FLImageLoader.this.taskMap.remove(this.imageUrl);
            } catch (Throwable th) {
                Log.e(FLImageLoader.TAG, "Error removing task on cancellation", th);
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            FLImageLoader fLImageLoader;
            OnImageLoadListener onImageLoadListener;
            String str;
            String str2;
            String cacheFilename;
            try {
                FLImageLoader.this.taskMap.remove(this.imageUrl);
                ImageView imageView = this.imageView;
                if (imageView == null) {
                    return;
                }
                if (obj != null) {
                    boolean z2 = this.isGif;
                    if (z2 && (obj instanceof GifLoadResult)) {
                        GifLoadResult gifLoadResult = (GifLoadResult) obj;
                        try {
                            if (FLImageLoader.this.enableMemoryCache && (cacheFilename = FLImageLoader.this.getCacheFilename(this.imageUrl)) != null && FLImageLoader.this.cacheDir != null) {
                                FLImageLoader.this.addGifToMemoryCache(this.imageUrl, new File(FLImageLoader.this.cacheDir, cacheFilename));
                                Bitmap bitmap = gifLoadResult.firstFrameBitmap;
                                if (bitmap != null) {
                                    FLImageLoader.this.addGifFirstFrameToMemoryCache(this.imageUrl, bitmap);
                                }
                            }
                            String cacheFilename2 = FLImageLoader.this.getCacheFilename(this.imageUrl);
                            if (cacheFilename2 == null || FLImageLoader.this.cacheDir == null) {
                                FLImageLoader.this.safeSetErrorImage(this.imageView);
                            } else {
                                FLImageLoader.this.safeDisplayGif(this.imageView, new File(FLImageLoader.this.cacheDir, cacheFilename2), this.imageUrl);
                            }
                            FLImageLoader.this.safeCallOnSuccess(this.listener, this.imageUrl, gifLoadResult.firstFrameBitmap, false);
                            return;
                        } catch (Throwable th) {
                            Log.e(FLImageLoader.TAG, "Error processing GIF result", th);
                            FLImageLoader.this.safeSetErrorImage(this.imageView);
                            fLImageLoader = FLImageLoader.this;
                            onImageLoadListener = this.listener;
                            str = this.imageUrl;
                            str2 = "Error processing GIF: " + th.getMessage();
                        }
                    } else {
                        if (z2 || !(obj instanceof Bitmap)) {
                            return;
                        }
                        Bitmap bitmap2 = (Bitmap) obj;
                        if (!bitmap2.isRecycled()) {
                            if (FLImageLoader.this.enableMemoryCache) {
                                FLImageLoader.this.addBitmapToMemoryCache(this.imageUrl, bitmap2);
                            }
                            FLImageLoader.this.safeDisplayBitmap(this.imageView, bitmap2, this.imageUrl);
                            FLImageLoader.this.safeCallOnSuccess(this.listener, this.imageUrl, bitmap2, false);
                            return;
                        }
                        FLImageLoader.this.safeSetErrorImage(this.imageView);
                        fLImageLoader = FLImageLoader.this;
                        onImageLoadListener = this.listener;
                        str = this.imageUrl;
                        str2 = "Bitmap is null or recycled";
                    }
                } else {
                    FLImageLoader.this.safeSetErrorImage(imageView);
                    fLImageLoader = FLImageLoader.this;
                    onImageLoadListener = this.listener;
                    str = this.imageUrl;
                    str2 = "Load failed";
                }
                fLImageLoader.safeCallOnError(onImageLoadListener, str, str2);
            } catch (Throwable th2) {
                Log.e(FLImageLoader.TAG, "Error in ImageLoadTask onPostExecute", th2);
                FLImageLoader.this.safeSetErrorImage(this.imageView);
                FLImageLoader.this.safeCallOnError(this.listener, this.imageUrl, "Unexpected error: " + th2.getMessage());
            }
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Void... voidArr) {
            StringBuilder sb;
            String str;
            try {
            } catch (OutOfMemoryError e2) {
                e = e2;
                sb = new StringBuilder();
                str = "Out of memory loading image: ";
                sb.append(str);
                sb.append(this.imageUrl);
                Log.e(FLImageLoader.TAG, sb.toString(), e);
                return null;
            } catch (Throwable th) {
                e = th;
                sb = new StringBuilder();
                str = "Error loading image: ";
                sb.append(str);
                sb.append(this.imageUrl);
                Log.e(FLImageLoader.TAG, sb.toString(), e);
                return null;
            }
            if (isCancelled()) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.imageUrl).openConnection();
            httpURLConnection.setConnectTimeout(ca.f49002b);
            httpURLConnection.setReadTimeout(ca.f49002b);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
            if (isCancelled()) {
                httpURLConnection.disconnect();
                return null;
            }
            httpURLConnection.connect();
            if (isCancelled()) {
                httpURLConnection.disconnect();
                return null;
            }
            if (httpURLConnection.getResponseCode() != 200) {
                httpURLConnection.disconnect();
                Log.e(FLImageLoader.TAG, "HTTP error: " + httpURLConnection.getResponseCode() + " for URL: " + this.imageUrl);
                return null;
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            if (isCancelled()) {
                inputStream.close();
                httpURLConnection.disconnect();
                return null;
            }
            if (!this.isGif) {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                inputStream.close();
                httpURLConnection.disconnect();
                if (isCancelled()) {
                    if (bitmapDecodeStream != null && !bitmapDecodeStream.isRecycled()) {
                        bitmapDecodeStream.recycle();
                    }
                    return null;
                }
                if (bitmapDecodeStream == null) {
                    return bitmapDecodeStream;
                }
                if (this.isWebp) {
                    bitmapDecodeStream = FLImageLoader.this.checkAndFixBitmapConfig(bitmapDecodeStream, this.imageUrl);
                }
                Bitmap bitmapSafeCompressBitmap = safeCompressBitmap(bitmapDecodeStream);
                if (isCancelled()) {
                    if (!bitmapSafeCompressBitmap.isRecycled()) {
                        bitmapSafeCompressBitmap.recycle();
                    }
                    return null;
                }
                if (FLImageLoader.this.enableDiskCache && FLImageLoader.this.cacheDir != null) {
                    safeSaveBitmapToDiskCache(this.imageUrl, bitmapSafeCompressBitmap);
                }
                return bitmapSafeCompressBitmap;
            }
            byte[] bArr = new byte[4096];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                    if (isCancelled()) {
                        return null;
                    }
                    if (FLImageLoader.this.enableDiskCache && FLImageLoader.this.cacheDir != null) {
                        FLImageLoader.this.saveToDiskCache(this.imageUrl, byteArray);
                    }
                    return new GifLoadResult(byteArray, FLImageLoader.this.decodeGifFirstFrame(byteArray));
                }
                if (isCancelled()) {
                    inputStream.close();
                    byteArrayOutputStream.close();
                    httpURLConnection.disconnect();
                    return null;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        }
    }

    public static final class LastModifiedComparator implements Comparator<CacheFileInfo> {
        private LastModifiedComparator() {
        }

        private int compareLong(long j2, long j3) {
            if (j2 < j3) {
                return -1;
            }
            return j2 == j3 ? 0 : 1;
        }

        @Override // java.util.Comparator
        public int compare(CacheFileInfo cacheFileInfo, CacheFileInfo cacheFileInfo2) {
            return compareLong(cacheFileInfo.getLastModified(), cacheFileInfo2.getLastModified());
        }
    }

    public interface OnBitmapLoadListener {
        void onBitmapLoadFailed(String str, String str2);

        void onBitmapLoaded(String str, Bitmap bitmap, boolean z2);
    }

    public interface OnBitmapLoadSuccessListener {
        void onSuccess(String str, Bitmap bitmap, boolean z2);
    }

    public interface OnGifLoadListener {
        void onError(String str, String str2);

        void onSuccess(String str, File file, Bitmap bitmap, boolean z2);
    }

    public interface OnImageLoadListener {
        void onError(String str, String str2);

        void onSuccess(String str, Bitmap bitmap, boolean z2);
    }

    public interface OnImageLoadSuccessListener {
        void onSuccess(String str, Bitmap bitmap, boolean z2);
    }

    private FLImageLoader(Context context) {
        initMemoryCache();
        initDiskCache(context);
        calculateCacheSizeLimits();
    }

    public static /* synthetic */ void a(OnBitmapLoadListener onBitmapLoadListener, String str, Bitmap bitmap, boolean z2) {
        try {
            onBitmapLoadListener.onBitmapLoaded(str, bitmap, z2);
        } catch (Throwable th) {
            Log.e(TAG, "Error in onBitmapLoaded callback", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBitmapToMemoryCache(String str, Bitmap bitmap) {
        try {
            if (this.bitmapCache == null || str == null || bitmap == null || bitmap.isRecycled()) {
                return;
            }
            this.bitmapCache.put(str, bitmap);
        } catch (Throwable th) {
            Log.e(TAG, "Error adding bitmap to memory cache", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addGifFirstFrameToMemoryCache(String str, Bitmap bitmap) {
        try {
            if (this.gifFirstFrameCache == null || str == null || bitmap == null || bitmap.isRecycled()) {
                return;
            }
            this.gifFirstFrameCache.put(str, bitmap);
        } catch (Throwable th) {
            Log.e(TAG, "Error adding GIF first frame to memory cache", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addGifToMemoryCache(String str, File file) {
        try {
            if (this.gifFileCache == null || str == null || file == null || !file.exists()) {
                return;
            }
            this.gifFileCache.put(str, file);
        } catch (Throwable th) {
            Log.e(TAG, "Error adding GIF to memory cache", th);
        }
    }

    public static /* synthetic */ void b(FLImageLoader fLImageLoader, ImageView imageView) {
        fLImageLoader.getClass();
        try {
            imageView.setImageResource(fLImageLoader.defaultImageResId);
        } catch (Throwable th) {
            Log.e(TAG, "Error setting default image", th);
        }
    }

    public static /* synthetic */ void c(FLImageLoader fLImageLoader, ImageView imageView, String str, Bitmap bitmap) {
        fLImageLoader.getClass();
        try {
            Object tag = imageView.getTag();
            if (tag == null || !tag.equals(str) || bitmap == null || bitmap.isRecycled()) {
                return;
            }
            imageView.setImageBitmap(bitmap);
        } catch (Throwable th) {
            Log.e(TAG, "Error displaying bitmap", th);
            fLImageLoader.safeSetErrorImage(imageView);
        }
    }

    private void calculateCacheSizeLimits() {
        try {
            long availableStorageSpace = getAvailableStorageSpace();
            long totalStorageSpace = getTotalStorageSpace();
            formatSize(availableStorageSpace);
            formatSize(totalStorageSpace);
            if (availableStorageSpace >= DEFAULT_MAX_DISK_CACHE_SIZE) {
                this.maxDiskCacheSize = DEFAULT_MAX_DISK_CACHE_SIZE;
                this.cleanupThreshold = DEFAULT_CLEANUP_THRESHOLD;
                formatSize(this.maxDiskCacheSize);
                formatSize(this.cleanupThreshold);
                return;
            }
            long jMin = Math.min((long) (totalStorageSpace * CACHE_SIZE_RATIO), (availableStorageSpace * 5) / 10);
            this.maxDiskCacheSize = jMin;
            this.cleanupThreshold = (long) (jMin * CLEANUP_THRESHOLD_RATIO);
            formatSize(this.maxDiskCacheSize);
            formatSize(this.cleanupThreshold);
        } catch (Throwable th) {
            Log.e(TAG, "Error calculating cache size limits, using defaults", th);
            this.maxDiskCacheSize = DEFAULT_MAX_DISK_CACHE_SIZE;
            this.cleanupThreshold = DEFAULT_CLEANUP_THRESHOLD;
        }
    }

    private long calculateCurrentCacheSize() {
        File[] fileArrListFiles;
        File file = this.cacheDir;
        long length = 0;
        if (file != null && file.exists() && (fileArrListFiles = this.cacheDir.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    length += file2.length();
                }
            }
        }
        return length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void checkAndCleanupDiskCacheIfNeeded() {
        File file = this.cacheDir;
        if (file == null || !file.exists()) {
            return;
        }
        try {
            long jCalculateCurrentCacheSize = calculateCurrentCacheSize();
            long currentCleanupThreshold = getCurrentCleanupThreshold();
            formatSize(jCalculateCurrentCacheSize);
            formatSize(currentCleanupThreshold);
            if (jCalculateCurrentCacheSize > currentCleanupThreshold) {
                cleanupDiskCache(currentCleanupThreshold);
            }
        } catch (Throwable th) {
            Log.e(TAG, "Error checking disk cache size", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap checkAndFixBitmapConfig(Bitmap bitmap, String str) {
        Bitmap bitmapFixWebpTransparency;
        if (bitmap != null && !bitmap.isRecycled() && str != null) {
            try {
                if (str.toLowerCase().endsWith(".webp") && this.forceArgb8888 && bitmap.getConfig() != Bitmap.Config.ARGB_8888 && (bitmapFixWebpTransparency = fixWebpTransparency(bitmap)) != null && bitmapFixWebpTransparency != bitmap) {
                    if (bitmap.isRecycled()) {
                        return bitmapFixWebpTransparency;
                    }
                    bitmap.recycle();
                    return bitmapFixWebpTransparency;
                }
                return bitmap;
            } catch (Throwable th) {
                Log.e(TAG, "Error checking and fixing bitmap config", th);
            }
        }
        return bitmap;
    }

    private synchronized void cleanupDiskCache(long j2) {
        File[] fileArrListFiles;
        File file = this.cacheDir;
        if (file == null || !file.exists()) {
            return;
        }
        try {
            fileArrListFiles = this.cacheDir.listFiles();
        } catch (Throwable th) {
            Log.e(TAG, "Error cleaning up disk cache", th);
        }
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            long length = 0;
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    arrayList.add(new CacheFileInfo(file2.getName(), file2.lastModified(), file2.length()));
                    length += file2.length();
                }
            }
            Collections.sort(arrayList, new LastModifiedComparator());
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                CacheFileInfo cacheFileInfo = (CacheFileInfo) obj;
                if (length <= j2) {
                    break;
                }
                File file3 = new File(this.cacheDir, cacheFileInfo.getFileName());
                if (file3.exists()) {
                    long length2 = file3.length();
                    if (file3.delete()) {
                        length -= length2;
                        cacheFileInfo.getFileName();
                        formatSize(length2);
                    }
                }
            }
            formatSize(length);
        }
    }

    public static /* synthetic */ void d(OnBitmapLoadListener onBitmapLoadListener, String str, String str2) {
        try {
            onBitmapLoadListener.onBitmapLoadFailed(str, str2);
        } catch (Throwable th) {
            Log.e(TAG, "Error in onBitmapLoadFailed callback", th);
        }
    }

    private Bitmap decodeGifFirstFrame(File file) {
        String str;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            options.inSampleSize = 1;
            return BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        } catch (OutOfMemoryError e2) {
            Log.e(TAG, "Out of memory decoding GIF first frame", e2);
            try {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = 2;
                return BitmapFactory.decodeFile(file.getAbsolutePath(), options2);
            } catch (Throwable th) {
                th = th;
                str = "Error decoding GIF first frame with sample size 2";
                Log.e(TAG, str, th);
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            str = "Error decoding GIF first frame";
            Log.e(TAG, str, th);
            return null;
        }
    }

    public static /* synthetic */ void e(FLImageLoader fLImageLoader, ImageView imageView) {
        fLImageLoader.getClass();
        try {
            imageView.setImageResource(fLImageLoader.errorImageResId);
        } catch (Throwable th) {
            Log.e(TAG, "Error setting error image", th);
        }
    }

    public static /* synthetic */ void f(OnImageLoadListener onImageLoadListener, String str, String str2) {
        try {
            onImageLoadListener.onError(str, str2);
        } catch (Throwable th) {
            Log.e(TAG, "Error in onError callback", th);
        }
    }

    private Bitmap fixWebpTransparency(Bitmap bitmap) {
        String str;
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        try {
            Bitmap.Config config = bitmap.getConfig();
            Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
            if (config == config2) {
                return bitmap;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), config2);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError e2) {
            e = e2;
            str = "Out of memory fixing WebP transparency";
            Log.e(TAG, str, e);
            return bitmap;
        } catch (Throwable th) {
            e = th;
            str = "Error fixing WebP transparency";
            Log.e(TAG, str, e);
            return bitmap;
        }
    }

    private String formatSize(long j2) {
        if (j2 < 1024) {
            return j2 + UtilConst.CRASH_CAT_B;
        }
        if (j2 < 1048576) {
            return String.format("%.1fKB", Double.valueOf(j2 / 1024.0d));
        }
        double d2 = j2;
        return j2 < 1073741824 ? String.format("%.1fMB", Double.valueOf(d2 / 1048576.0d)) : String.format("%.1fGB", Double.valueOf(d2 / 1.073741824E9d));
    }

    public static /* synthetic */ void g(OnImageLoadListener onImageLoadListener, String str, Bitmap bitmap, boolean z2) {
        try {
            onImageLoadListener.onSuccess(str, bitmap, z2);
        } catch (Throwable th) {
            Log.e(TAG, "Error in onSuccess callback", th);
        }
    }

    public static long getAvailableStorageSpace() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        } catch (Throwable th) {
            Log.e(TAG, "Error getting available storage space", th);
            return 0L;
        }
    }

    private Bitmap getBitmapFromDiskCache(String str) {
        String cacheFilename;
        if (this.cacheDir == null) {
            return null;
        }
        try {
            cacheFilename = getCacheFilename(str);
        } catch (Throwable th) {
            Log.e(TAG, "Error getting bitmap from disk cache", th);
        }
        if (cacheFilename == null) {
            return null;
        }
        File file = new File(this.cacheDir, cacheFilename);
        if (file.exists() && file.length() > 0) {
            if (System.currentTimeMillis() - file.lastModified() <= 604800000) {
                return BitmapFactory.decodeFile(file.getAbsolutePath());
            }
            safeDeleteFile(file);
            return null;
        }
        return null;
    }

    private Bitmap getBitmapFromMemoryCache(String str) {
        try {
            LruCache<String, Bitmap> lruCache = this.bitmapCache;
            if (lruCache == null || str == null) {
                return null;
            }
            return lruCache.get(str);
        } catch (Throwable th) {
            Log.e(TAG, "Error getting bitmap from memory cache", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCacheFilename(String str) {
        String str2 = ".bmp";
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                String hexString = Integer.toHexString(b3 & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            String lowerCase = str.toLowerCase();
            String str3 = ".jpg";
            if (lowerCase.endsWith(".png")) {
                str2 = ".png";
            } else if (lowerCase.endsWith(".webp")) {
                str2 = ".webp";
            } else {
                if (!lowerCase.endsWith(".gif")) {
                    if (lowerCase.endsWith(".bmp")) {
                    }
                    return sb.toString() + str3;
                }
                str2 = ".gif";
            }
            str3 = str2;
            return sb.toString() + str3;
        } catch (NoSuchAlgorithmException e2) {
            Log.e(TAG, "MD5 algorithm not available", e2);
            try {
                return String.valueOf(Math.abs(str.hashCode())) + ".cache";
            } catch (Throwable th) {
                Log.e(TAG, "Error generating fallback filename", th);
                return "unknown.cache";
            }
        } catch (Throwable th2) {
            Log.e(TAG, "Error generating cache filename", th2);
            return "error.cache";
        }
    }

    private long getCurrentCleanupThreshold() {
        return getAvailableStorageSpace() < DEFAULT_MAX_DISK_CACHE_SIZE ? this.cleanupThreshold : DEFAULT_CLEANUP_THRESHOLD;
    }

    private Bitmap getGifFirstFrameFromMemoryCache(String str) {
        try {
            LruCache<String, Bitmap> lruCache = this.gifFirstFrameCache;
            if (lruCache == null || str == null) {
                return null;
            }
            return lruCache.get(str);
        } catch (Throwable th) {
            Log.e(TAG, "Error getting GIF first frame from memory cache", th);
            return null;
        }
    }

    private File getGifFromDiskCache(String str) {
        String cacheFilename;
        if (this.cacheDir == null) {
            return null;
        }
        try {
            cacheFilename = getCacheFilename(str);
        } catch (Throwable th) {
            Log.e(TAG, "Error getting GIF from disk cache", th);
        }
        if (cacheFilename == null) {
            return null;
        }
        File file = new File(this.cacheDir, cacheFilename);
        if (file.exists() && file.length() > 0) {
            if (System.currentTimeMillis() - file.lastModified() <= 604800000) {
                return file;
            }
            safeDeleteFile(file);
            return null;
        }
        return null;
    }

    private File getGifFromMemoryCache(String str) {
        try {
            LruCache<String, File> lruCache = this.gifFileCache;
            if (lruCache == null || str == null) {
                return null;
            }
            return lruCache.get(str);
        } catch (Throwable th) {
            Log.e(TAG, "Error getting GIF from memory cache", th);
            return null;
        }
    }

    public static FLImageLoader getInstance(Context context) {
        if (instance == null) {
            synchronized (FLImageLoader.class) {
                try {
                    if (instance == null) {
                        if (context == null) {
                            context = DeviceUtil.getContext();
                        }
                        if (context != null) {
                            context = context.getApplicationContext();
                        }
                        instance = new FLImageLoader(context);
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public static long getTotalStorageSpace() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Throwable th) {
            Log.e(TAG, "Error getting total storage space", th);
            return 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        if (r4 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void h(com.fl.saas.adx.util.FLImageLoader r2, android.widget.ImageView r3, java.lang.String r4, java.io.File r5) {
        /*
            r2.getClass()
            java.lang.String r0 = "FLImageLoader"
            java.lang.Object r1 = r3.getTag()     // Catch: java.lang.Throwable -> L4e
            if (r1 == 0) goto L68
            boolean r4 = r1.equals(r4)     // Catch: java.lang.Throwable -> L4e
            if (r4 == 0) goto L68
            if (r5 == 0) goto L68
            boolean r4 = r5.exists()     // Catch: java.lang.Throwable -> L4e
            if (r4 != 0) goto L1a
            goto L68
        L1a:
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L4e
            r1 = 28
            if (r4 < r1) goto L50
            java.lang.String r4 = r5.getAbsolutePath()     // Catch: java.lang.Throwable -> L39
            android.graphics.drawable.Drawable r4 = android.graphics.drawable.Drawable.createFromPath(r4)     // Catch: java.lang.Throwable -> L39
            boolean r1 = x.AbstractC1796a.a(r4)     // Catch: java.lang.Throwable -> L39
            if (r1 == 0) goto L3b
            r3.setImageDrawable(r4)     // Catch: java.lang.Throwable -> L39
            android.graphics.drawable.AnimatedImageDrawable r4 = x.AbstractC1797b.a(r4)     // Catch: java.lang.Throwable -> L39
            x.e.a(r4)     // Catch: java.lang.Throwable -> L39
            return
        L39:
            r4 = move-exception
            goto L3f
        L3b:
            r3.setImageDrawable(r4)     // Catch: java.lang.Throwable -> L39
            return
        L3f:
            java.lang.String r1 = "Error loading GIF on Android P+"
            android.util.Log.e(r0, r1, r4)     // Catch: java.lang.Throwable -> L4e
            android.graphics.Bitmap r4 = r2.decodeGifFirstFrame(r5)     // Catch: java.lang.Throwable -> L4e
            if (r4 == 0) goto L5c
        L4a:
            r3.setImageBitmap(r4)     // Catch: java.lang.Throwable -> L4e
            goto L57
        L4e:
            r4 = move-exception
            goto L60
        L50:
            android.graphics.Bitmap r4 = r2.decodeGifFirstFrame(r5)     // Catch: java.lang.Throwable -> L4e
            if (r4 == 0) goto L5c
            goto L4a
        L57:
            r4 = 0
            r3.setBackgroundColor(r4)     // Catch: java.lang.Throwable -> L4e
            goto L68
        L5c:
            r2.safeSetErrorImage(r3)     // Catch: java.lang.Throwable -> L4e
            goto L68
        L60:
            java.lang.String r5 = "Error displaying GIF"
            android.util.Log.e(r0, r5, r4)
            r2.safeSetErrorImage(r3)
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.util.FLImageLoader.h(com.fl.saas.adx.util.FLImageLoader, android.widget.ImageView, java.lang.String, java.io.File):void");
    }

    private void initDiskCache(Context context) {
        if (context == null) {
            return;
        }
        try {
            File file = new File(context.getCacheDir(), "image_cache");
            this.cacheDir = file;
            if (file.exists()) {
                return;
            }
            this.cacheDir.mkdirs();
        } catch (Throwable th) {
            Log.e(TAG, "Error initializing disk cache", th);
            this.cacheDir = null;
        }
    }

    private void initMemoryCache() {
        try {
            int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / 1024);
            int iMax = Math.max(iMaxMemory / 8, 1024);
            int iMax2 = Math.max(iMaxMemory / 16, 512);
            int iMax3 = Math.max(iMaxMemory / 32, 256);
            this.bitmapCache = new LruCache<String, Bitmap>(iMax) { // from class: com.fl.saas.adx.util.FLImageLoader.1
                @Override // android.util.LruCache
                public int sizeOf(String str, Bitmap bitmap) {
                    if (bitmap == null) {
                        return 0;
                    }
                    try {
                        if (bitmap.isRecycled()) {
                            return 0;
                        }
                        return bitmap.getByteCount() / 1024;
                    } catch (Throwable th) {
                        Log.e(FLImageLoader.TAG, "Error calculating bitmap size", th);
                        return 0;
                    }
                }
            };
            this.gifFileCache = new LruCache<String, File>(iMax2) { // from class: com.fl.saas.adx.util.FLImageLoader.2
                @Override // android.util.LruCache
                public int sizeOf(String str, File file) {
                    if (file == null) {
                        return 0;
                    }
                    try {
                        if (file.exists()) {
                            return (int) (file.length() / 1024);
                        }
                        return 0;
                    } catch (Throwable th) {
                        Log.e(FLImageLoader.TAG, "Error calculating file size", th);
                        return 0;
                    }
                }
            };
            this.gifFirstFrameCache = new LruCache<String, Bitmap>(iMax3) { // from class: com.fl.saas.adx.util.FLImageLoader.3
                @Override // android.util.LruCache
                public int sizeOf(String str, Bitmap bitmap) {
                    if (bitmap == null) {
                        return 0;
                    }
                    try {
                        if (bitmap.isRecycled()) {
                            return 0;
                        }
                        return bitmap.getByteCount() / 1024;
                    } catch (Throwable th) {
                        Log.e(FLImageLoader.TAG, "Error calculating gif first frame size", th);
                        return 0;
                    }
                }
            };
        } catch (Throwable th) {
            Log.e(TAG, "Error initializing memory cache", th);
            this.bitmapCache = new LruCache<>(1024);
            this.gifFileCache = new LruCache<>(512);
            this.gifFirstFrameCache = new LruCache<>(256);
        }
    }

    private void loadBitmapFromNetwork(String str, boolean z2, OnBitmapLoadListener onBitmapLoadListener) {
        try {
            if (!this.bitmapLoadTaskMap.containsKey(str)) {
                BitmapLoadTask bitmapLoadTask = new BitmapLoadTask(str, z2, onBitmapLoadListener);
                this.bitmapLoadTaskMap.put(str, bitmapLoadTask);
                bitmapLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else {
                BitmapLoadTask bitmapLoadTask2 = this.bitmapLoadTaskMap.get(str);
                if (bitmapLoadTask2 == null || onBitmapLoadListener == null) {
                    return;
                }
                bitmapLoadTask2.addListener(onBitmapLoadListener);
            }
        } catch (Throwable th) {
            Log.e(TAG, "Error starting bitmap network load", th);
            safeCallBitmapLoadFailed(onBitmapLoadListener, str, "Error starting load: " + th.getMessage());
        }
    }

    private void loadBitmapImageInternal(ImageView imageView, String str, OnImageLoadListener onImageLoadListener) {
        Bitmap bitmapFromDiskCache;
        C1166c c1166cC;
        S s2;
        Bitmap bitmapFromMemoryCache;
        try {
            if (this.enableMemoryCache && (bitmapFromMemoryCache = getBitmapFromMemoryCache(str)) != null && !bitmapFromMemoryCache.isRecycled()) {
                safeDisplayBitmap(imageView, bitmapFromMemoryCache, str);
                safeCallOnSuccess(onImageLoadListener, str, bitmapFromMemoryCache, true);
                c1166cC = C1166c.c();
                s2 = new S() { // from class: com.fl.saas.adx.util.FLImageLoader.6
                    @Override // com.fl.saas.S
                    public void onError(Exception exc) {
                    }

                    @Override // com.fl.saas.S
                    public void onSuccess(byte[] bArr) {
                    }
                };
            } else {
                if (!this.enableDiskCache || (bitmapFromDiskCache = getBitmapFromDiskCache(str)) == null || bitmapFromDiskCache.isRecycled()) {
                    loadFromNetwork(imageView, str, false, onImageLoadListener);
                    return;
                }
                safeDisplayBitmap(imageView, bitmapFromDiskCache, str);
                addBitmapToMemoryCache(str, bitmapFromDiskCache);
                safeCallOnSuccess(onImageLoadListener, str, bitmapFromDiskCache, true);
                c1166cC = C1166c.c();
                s2 = new S() { // from class: com.fl.saas.adx.util.FLImageLoader.7
                    @Override // com.fl.saas.S
                    public void onError(Exception exc) {
                    }

                    @Override // com.fl.saas.S
                    public void onSuccess(byte[] bArr) {
                    }
                };
            }
            c1166cC.a(str, s2);
        } catch (Throwable th) {
            Log.e(TAG, "Error in loadBitmapImageInternal", th);
            safeSetErrorImage(imageView);
            safeCallOnError(onImageLoadListener, str, "Error loading bitmap: " + th.getMessage());
        }
    }

    private void loadBitmapOnlyInternal(String str, OnBitmapLoadListener onBitmapLoadListener) {
        Bitmap bitmapFromDiskCache;
        C1166c c1166cC;
        S s2;
        Bitmap bitmapFromMemoryCache;
        try {
            if (this.enableMemoryCache && (bitmapFromMemoryCache = getBitmapFromMemoryCache(str)) != null && !bitmapFromMemoryCache.isRecycled()) {
                safeCallBitmapLoaded(onBitmapLoadListener, str, bitmapFromMemoryCache, true);
                c1166cC = C1166c.c();
                s2 = new S() { // from class: com.fl.saas.adx.util.FLImageLoader.10
                    @Override // com.fl.saas.S
                    public void onError(Exception exc) {
                    }

                    @Override // com.fl.saas.S
                    public void onSuccess(byte[] bArr) {
                    }
                };
            } else {
                if (!this.enableDiskCache || (bitmapFromDiskCache = getBitmapFromDiskCache(str)) == null || bitmapFromDiskCache.isRecycled()) {
                    loadBitmapFromNetwork(str, false, onBitmapLoadListener);
                    return;
                }
                addBitmapToMemoryCache(str, bitmapFromDiskCache);
                safeCallBitmapLoaded(onBitmapLoadListener, str, bitmapFromDiskCache, true);
                c1166cC = C1166c.c();
                s2 = new S() { // from class: com.fl.saas.adx.util.FLImageLoader.11
                    @Override // com.fl.saas.S
                    public void onError(Exception exc) {
                    }

                    @Override // com.fl.saas.S
                    public void onSuccess(byte[] bArr) {
                    }
                };
            }
            c1166cC.a(str, s2);
        } catch (Throwable th) {
            Log.e(TAG, "Error in loadBitmapOnlyInternal", th);
            safeCallBitmapLoadFailed(onBitmapLoadListener, str, "Error loading bitmap only: " + th.getMessage());
        }
    }

    private void loadFromNetwork(ImageView imageView, String str, boolean z2, OnImageLoadListener onImageLoadListener) {
        ImageView imageView2;
        String str2;
        OnImageLoadListener onImageLoadListener2;
        Throwable th;
        try {
            if (!this.taskMap.containsKey(str)) {
                imageView2 = imageView;
                str2 = str;
                onImageLoadListener2 = onImageLoadListener;
                try {
                    ImageLoadTask imageLoadTask = new ImageLoadTask(imageView2, str2, z2, onImageLoadListener2);
                    this.taskMap.put(str2, imageLoadTask);
                    imageLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    th = th;
                    Log.e(TAG, "Error starting network load", th);
                    safeSetErrorImage(imageView2);
                    safeCallOnError(onImageLoadListener2, str2, "Error starting load: " + th.getMessage());
                }
            }
            try {
                ImageLoadTask imageLoadTask2 = this.taskMap.get(str);
                if (imageLoadTask2 == null || onImageLoadListener == null) {
                    return;
                }
                imageLoadTask2.addListener(onImageLoadListener);
            } catch (Throwable th3) {
                th = th3;
                imageView2 = imageView;
                str2 = str;
                onImageLoadListener2 = onImageLoadListener;
                Log.e(TAG, "Error starting network load", th);
                safeSetErrorImage(imageView2);
                safeCallOnError(onImageLoadListener2, str2, "Error starting load: " + th.getMessage());
            }
        } catch (Throwable th4) {
            th = th4;
            imageView2 = imageView;
            str2 = str;
            onImageLoadListener2 = onImageLoadListener;
        }
    }

    private void loadGifBitmapInternal(String str, OnBitmapLoadListener onBitmapLoadListener) {
        File gifFromDiskCache;
        Bitmap gifFirstFrameFromMemoryCache;
        try {
            if (this.enableMemoryCache && (gifFirstFrameFromMemoryCache = getGifFirstFrameFromMemoryCache(str)) != null && !gifFirstFrameFromMemoryCache.isRecycled()) {
                safeCallBitmapLoaded(onBitmapLoadListener, str, gifFirstFrameFromMemoryCache, true);
                C1166c.c().a(str, new S() { // from class: com.fl.saas.adx.util.FLImageLoader.12
                    @Override // com.fl.saas.S
                    public void onError(Exception exc) {
                    }

                    @Override // com.fl.saas.S
                    public void onSuccess(byte[] bArr) {
                    }
                });
                return;
            }
            if (this.enableDiskCache && (gifFromDiskCache = getGifFromDiskCache(str)) != null && gifFromDiskCache.exists()) {
                Bitmap bitmapDecodeGifFirstFrame = decodeGifFirstFrame(gifFromDiskCache);
                if (bitmapDecodeGifFirstFrame != null) {
                    addGifFirstFrameToMemoryCache(str, bitmapDecodeGifFirstFrame);
                    safeCallBitmapLoaded(onBitmapLoadListener, str, bitmapDecodeGifFirstFrame, true);
                    return;
                }
                C1166c.c().a(str, new S() { // from class: com.fl.saas.adx.util.FLImageLoader.13
                    @Override // com.fl.saas.S
                    public void onError(Exception exc) {
                    }

                    @Override // com.fl.saas.S
                    public void onSuccess(byte[] bArr) {
                    }
                });
            }
            loadBitmapFromNetwork(str, true, onBitmapLoadListener);
        } catch (Throwable th) {
            Log.e(TAG, "Error in loadGifBitmapInternal", th);
            safeCallBitmapLoadFailed(onBitmapLoadListener, str, "Error loading GIF bitmap: " + th.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:2:0x0000, B:4:0x0005, B:7:0x0011, B:9:0x0017, B:10:0x0026, B:14:0x002c, B:16:0x0030, B:18:0x0036, B:20:0x003c, B:22:0x0042, B:23:0x0058), top: B:27:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadGifImageInternal(android.widget.ImageView r5, java.lang.String r6, com.fl.saas.adx.util.FLImageLoader.OnImageLoadListener r7) {
        /*
            r4 = this;
            boolean r0 = r4.enableMemoryCache     // Catch: java.lang.Throwable -> L2a
            r1 = 1
            if (r0 == 0) goto L2c
            android.graphics.Bitmap r0 = r4.getGifFirstFrameFromMemoryCache(r6)     // Catch: java.lang.Throwable -> L2a
            java.io.File r2 = r4.getGifFromMemoryCache(r6)     // Catch: java.lang.Throwable -> L2a
            if (r0 == 0) goto L2c
            if (r2 == 0) goto L2c
            boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> L2a
            if (r3 == 0) goto L2c
            r4.safeDisplayGif(r5, r2, r6)     // Catch: java.lang.Throwable -> L2a
            r4.safeCallOnSuccess(r7, r6, r0, r1)     // Catch: java.lang.Throwable -> L2a
            com.fl.saas.c r0 = com.fl.saas.C1166c.c()     // Catch: java.lang.Throwable -> L2a
            com.fl.saas.adx.util.FLImageLoader$8 r1 = new com.fl.saas.adx.util.FLImageLoader$8     // Catch: java.lang.Throwable -> L2a
            r1.<init>()     // Catch: java.lang.Throwable -> L2a
        L26:
            r0.a(r6, r1)     // Catch: java.lang.Throwable -> L2a
            return
        L2a:
            r0 = move-exception
            goto L5c
        L2c:
            boolean r0 = r4.enableDiskCache     // Catch: java.lang.Throwable -> L2a
            if (r0 == 0) goto L58
            java.io.File r0 = r4.getGifFromDiskCache(r6)     // Catch: java.lang.Throwable -> L2a
            if (r0 == 0) goto L58
            boolean r2 = r0.exists()     // Catch: java.lang.Throwable -> L2a
            if (r2 == 0) goto L58
            android.graphics.Bitmap r2 = r4.decodeGifFirstFrame(r0)     // Catch: java.lang.Throwable -> L2a
            if (r2 == 0) goto L58
            r4.safeDisplayGif(r5, r0, r6)     // Catch: java.lang.Throwable -> L2a
            r4.addGifToMemoryCache(r6, r0)     // Catch: java.lang.Throwable -> L2a
            r4.addGifFirstFrameToMemoryCache(r6, r2)     // Catch: java.lang.Throwable -> L2a
            r4.safeCallOnSuccess(r7, r6, r2, r1)     // Catch: java.lang.Throwable -> L2a
            com.fl.saas.c r0 = com.fl.saas.C1166c.c()     // Catch: java.lang.Throwable -> L2a
            com.fl.saas.adx.util.FLImageLoader$9 r1 = new com.fl.saas.adx.util.FLImageLoader$9     // Catch: java.lang.Throwable -> L2a
            r1.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L26
        L58:
            r4.loadFromNetwork(r5, r6, r1, r7)     // Catch: java.lang.Throwable -> L2a
            return
        L5c:
            java.lang.String r1 = "FLImageLoader"
            java.lang.String r2 = "Error in loadGifImageInternal"
            android.util.Log.e(r1, r2, r0)
            r4.safeSetErrorImage(r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r1 = "Error loading GIF: "
            r5.append(r1)
            java.lang.String r0 = r0.getMessage()
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            r4.safeCallOnError(r7, r6, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.util.FLImageLoader.loadGifImageInternal(android.widget.ImageView, java.lang.String, com.fl.saas.adx.util.FLImageLoader$OnImageLoadListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeCallBitmapLoadFailed(final OnBitmapLoadListener onBitmapLoadListener, final String str, final String str2) {
        if (onBitmapLoadListener == null) {
            return;
        }
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.p
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.d(onBitmapLoadListener, str, str2);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting onBitmapLoadFailed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeCallBitmapLoaded(final OnBitmapLoadListener onBitmapLoadListener, final String str, final Bitmap bitmap, final boolean z2) {
        if (onBitmapLoadListener == null) {
            return;
        }
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.q
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.a(onBitmapLoadListener, str, bitmap, z2);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting onBitmapLoaded", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeCallOnError(final OnImageLoadListener onImageLoadListener, final String str, final String str2) {
        if (onImageLoadListener == null) {
            return;
        }
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.o
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.f(onImageLoadListener, str, str2);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting onError", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeCallOnSuccess(final OnImageLoadListener onImageLoadListener, final String str, final Bitmap bitmap, final boolean z2) {
        if (onImageLoadListener == null) {
            return;
        }
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.r
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.g(onImageLoadListener, str, bitmap, z2);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting onSuccess", th);
        }
    }

    private void safeDeleteFile(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        try {
            file.delete();
        } catch (Throwable th) {
            Log.e(TAG, "Error deleting file", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeDisplayBitmap(final ImageView imageView, final Bitmap bitmap, final String str) {
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.n
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.c(this.f30320b, imageView, str, bitmap);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting display bitmap", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeDisplayGif(final ImageView imageView, final File file, final String str) {
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.k
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.h(this.f30312b, imageView, str, file);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting display GIF", th);
        }
    }

    private void safeSetDefaultImage(final ImageView imageView) {
        if (imageView == null || this.defaultImageResId == 0) {
            return;
        }
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.l
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.b(this.f30316b, imageView);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting set default image", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeSetErrorImage(final ImageView imageView) {
        if (imageView == null || this.errorImageResId == 0) {
            return;
        }
        try {
            this.mainHandler.post(new Runnable() { // from class: com.fl.saas.adx.util.m
                @Override // java.lang.Runnable
                public final void run() {
                    FLImageLoader.e(this.f30318b, imageView);
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "Error posting set error image", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveToDiskCache(String str, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream;
        if (!this.enableDiskCache || bArr == null || bArr.length == 0 || this.cacheDir == null) {
            return;
        }
        checkAndCleanupDiskCacheIfNeeded();
        try {
            try {
                String cacheFilename = getCacheFilename(str);
                if (cacheFilename == null) {
                    return;
                }
                File file = new File(this.cacheDir, cacheFilename);
                File parentFile = file.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(bArr);
                    fileOutputStream.flush();
                    formatSize(bArr.length);
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        Log.e(TAG, "Error saving to disk cache", th);
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th3) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th4) {
                                Log.e(TAG, "Error closing stream", th4);
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
            }
        } catch (Throwable th6) {
            Log.e(TAG, "Error closing stream", th6);
        }
    }

    public void cancelAllLoads() {
        try {
            for (ImageLoadTask imageLoadTask : this.taskMap.values()) {
                if (imageLoadTask != null && !imageLoadTask.isCancelled()) {
                    imageLoadTask.cancel(true);
                }
            }
            this.taskMap.clear();
            for (BitmapLoadTask bitmapLoadTask : this.bitmapLoadTaskMap.values()) {
                if (bitmapLoadTask != null && !bitmapLoadTask.isCancelled()) {
                    bitmapLoadTask.cancel(true);
                }
            }
            this.bitmapLoadTaskMap.clear();
        } catch (Throwable th) {
            Log.e(TAG, "Error canceling all loads", th);
        }
    }

    public void cancelLoad(String str) {
        if (str == null) {
            return;
        }
        try {
            if (this.taskMap.containsKey(str)) {
                ImageLoadTask imageLoadTask = this.taskMap.get(str);
                if (imageLoadTask != null && !imageLoadTask.isCancelled()) {
                    imageLoadTask.cancel(true);
                }
                this.taskMap.remove(str);
            }
            if (this.bitmapLoadTaskMap.containsKey(str)) {
                BitmapLoadTask bitmapLoadTask = this.bitmapLoadTaskMap.get(str);
                if (bitmapLoadTask != null && !bitmapLoadTask.isCancelled()) {
                    bitmapLoadTask.cancel(true);
                }
                this.bitmapLoadTaskMap.remove(str);
            }
        } catch (Throwable th) {
            Log.e(TAG, "Error canceling load", th);
        }
    }

    public void cleanupDiskCacheToSize(long j2) {
        cleanupDiskCache(j2);
    }

    public void clearAllCache() {
        clearMemoryCache();
        clearDiskCache();
    }

    public void clearDiskCache() {
        File[] fileArrListFiles;
        try {
            File file = this.cacheDir;
            if (file == null || !file.exists() || (fileArrListFiles = this.cacheDir.listFiles()) == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                safeDeleteFile(file2);
            }
        } catch (Throwable th) {
            Log.e(TAG, "Error clearing disk cache", th);
        }
    }

    public void clearMemoryCache() {
        try {
            LruCache<String, Bitmap> lruCache = this.bitmapCache;
            if (lruCache != null) {
                lruCache.evictAll();
            }
            LruCache<String, File> lruCache2 = this.gifFileCache;
            if (lruCache2 != null) {
                lruCache2.evictAll();
            }
            LruCache<String, Bitmap> lruCache3 = this.gifFirstFrameCache;
            if (lruCache3 != null) {
                lruCache3.evictAll();
            }
        } catch (Throwable th) {
            Log.e(TAG, "Error clearing memory cache", th);
        }
    }

    public void forceCleanupDiskCache() {
        cleanupDiskCache(getCurrentCleanupThreshold());
    }

    public Bitmap getCachedBitmap(String str) {
        if (str == null) {
            return null;
        }
        try {
        } catch (Throwable th) {
            Log.e(TAG, "Error getting cached bitmap", th);
        }
        if (!str.toLowerCase().endsWith(".gif")) {
            Bitmap bitmapFromMemoryCache = getBitmapFromMemoryCache(str);
            return bitmapFromMemoryCache != null ? bitmapFromMemoryCache : getBitmapFromDiskCache(str);
        }
        Bitmap gifFirstFrameFromMemoryCache = getGifFirstFrameFromMemoryCache(str);
        if (gifFirstFrameFromMemoryCache != null) {
            return gifFirstFrameFromMemoryCache;
        }
        File gifFromDiskCache = getGifFromDiskCache(str);
        if (gifFromDiskCache != null) {
            return decodeGifFirstFrame(gifFromDiskCache);
        }
        return null;
    }

    public File getCachedGifFile(String str) {
        if (str == null) {
            return null;
        }
        try {
            File gifFromMemoryCache = getGifFromMemoryCache(str);
            return gifFromMemoryCache != null ? gifFromMemoryCache : getGifFromDiskCache(str);
        } catch (Throwable th) {
            Log.e(TAG, "Error getting cached GIF file", th);
            return null;
        }
    }

    public long getCleanupThreshold() {
        return getCurrentCleanupThreshold();
    }

    public long getCurrentDiskCacheSize() {
        return calculateCurrentCacheSize();
    }

    public long getMaxDiskCacheSize() {
        return this.maxDiskCacheSize;
    }

    public void loadBitmap(String str, OnBitmapLoadListener onBitmapLoadListener) {
        if (str != null) {
            try {
                if (!str.trim().isEmpty()) {
                    String strTrim = str.trim();
                    if (strTrim.toLowerCase().endsWith(".gif")) {
                        loadGifBitmapInternal(strTrim, onBitmapLoadListener);
                        return;
                    } else {
                        loadBitmapOnlyInternal(strTrim, onBitmapLoadListener);
                        return;
                    }
                }
            } catch (Throwable th) {
                Log.e(TAG, "Error in loadBitmap", th);
                safeCallBitmapLoadFailed(onBitmapLoadListener, str, "Unexpected error: " + th.getMessage());
                return;
            }
        }
        safeCallBitmapLoadFailed(onBitmapLoadListener, str, "Invalid URL");
    }

    public void loadImage(ImageView imageView, String str) {
        loadImage(imageView, str, (OnImageLoadListener) null);
    }

    public void removeFromCache(String str) {
        String cacheFilename;
        if (str == null) {
            return;
        }
        try {
            boolean zEndsWith = str.toLowerCase().endsWith(".gif");
            LruCache<String, Bitmap> lruCache = this.bitmapCache;
            if (lruCache != null) {
                lruCache.remove(str);
            }
            LruCache<String, File> lruCache2 = this.gifFileCache;
            if (lruCache2 != null && zEndsWith) {
                lruCache2.remove(str);
            }
            LruCache<String, Bitmap> lruCache3 = this.gifFirstFrameCache;
            if (lruCache3 != null && zEndsWith) {
                lruCache3.remove(str);
            }
            if (this.cacheDir == null || (cacheFilename = getCacheFilename(str)) == null) {
                return;
            }
            safeDeleteFile(new File(this.cacheDir, cacheFilename));
        } catch (Throwable th) {
            Log.e(TAG, "Error removing from cache", th);
        }
    }

    public FLImageLoader setDefaultImage(int i2) {
        this.defaultImageResId = i2;
        return this;
    }

    public FLImageLoader setEnableDiskCache(boolean z2) {
        this.enableDiskCache = z2;
        return this;
    }

    public FLImageLoader setEnableMemoryCache(boolean z2) {
        return this;
    }

    public FLImageLoader setErrorImage(int i2) {
        this.errorImageResId = i2;
        return this;
    }

    public FLImageLoader setForceArgb8888(boolean z2) {
        this.forceArgb8888 = z2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap decodeGifFirstFrame(byte[] bArr) {
        String str;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            options.inSampleSize = 1;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } catch (OutOfMemoryError e2) {
            Log.e(TAG, "Out of memory decoding GIF first frame from byte array", e2);
            try {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = 2;
                return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options2);
            } catch (Throwable th) {
                th = th;
                str = "Error decoding GIF first frame with sample size 2";
                Log.e(TAG, str, th);
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            str = "Error decoding GIF first frame from byte array";
            Log.e(TAG, str, th);
            return null;
        }
    }

    public void loadBitmap(String str, final OnBitmapLoadSuccessListener onBitmapLoadSuccessListener) {
        loadBitmap(str, new OnBitmapLoadListener() { // from class: com.fl.saas.adx.util.FLImageLoader.5
            @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
            public void onBitmapLoadFailed(String str2, String str3) {
                Log.e(FLImageLoader.TAG, "Load bitmap failed: " + str3);
            }

            @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
            public void onBitmapLoaded(String str2, Bitmap bitmap, boolean z2) {
                try {
                    OnBitmapLoadSuccessListener onBitmapLoadSuccessListener2 = onBitmapLoadSuccessListener;
                    if (onBitmapLoadSuccessListener2 != null) {
                        onBitmapLoadSuccessListener2.onSuccess(str2, bitmap, z2);
                    }
                } catch (Throwable th) {
                    Log.e(FLImageLoader.TAG, "Error in bitmap success listener", th);
                }
            }
        });
    }

    public void loadImage(ImageView imageView, String str, OnImageLoadListener onImageLoadListener) {
        if (imageView != null && str != null) {
            try {
                if (!str.trim().isEmpty()) {
                    String strTrim = str.trim();
                    safeSetDefaultImage(imageView);
                    try {
                        imageView.setTag(strTrim);
                    } catch (Throwable th) {
                        Log.e(TAG, "Error setting tag", th);
                    }
                    if (strTrim.toLowerCase().endsWith(".gif")) {
                        loadGifImageInternal(imageView, strTrim, onImageLoadListener);
                        return;
                    } else {
                        loadBitmapImageInternal(imageView, strTrim, onImageLoadListener);
                        return;
                    }
                }
            } catch (Throwable th2) {
                Log.e(TAG, "Error in loadImage", th2);
                safeSetErrorImage(imageView);
                safeCallOnError(onImageLoadListener, str, "Unexpected error: " + th2.getMessage());
                return;
            }
        }
        safeCallOnError(onImageLoadListener, str, "Invalid parameters");
    }

    public void loadImage(ImageView imageView, String str, final OnImageLoadSuccessListener onImageLoadSuccessListener) {
        loadImage(imageView, str, new OnImageLoadListener() { // from class: com.fl.saas.adx.util.FLImageLoader.4
            @Override // com.fl.saas.adx.util.FLImageLoader.OnImageLoadListener
            public void onError(String str2, String str3) {
                Log.e(FLImageLoader.TAG, "Load image error: " + str3);
            }

            @Override // com.fl.saas.adx.util.FLImageLoader.OnImageLoadListener
            public void onSuccess(String str2, Bitmap bitmap, boolean z2) {
                try {
                    OnImageLoadSuccessListener onImageLoadSuccessListener2 = onImageLoadSuccessListener;
                    if (onImageLoadSuccessListener2 != null) {
                        onImageLoadSuccessListener2.onSuccess(str2, bitmap, z2);
                    }
                } catch (Throwable th) {
                    Log.e(FLImageLoader.TAG, "Error in success listener", th);
                }
            }
        });
    }
}
