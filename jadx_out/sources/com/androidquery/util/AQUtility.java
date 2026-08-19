package com.androidquery.util;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AlphaAnimation;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Thread;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class AQUtility {
    private static final int IO_BUFFER_SIZE = 4096;
    private static File cacheDir = null;
    private static Context context = null;
    private static boolean debug = false;
    private static Thread.UncaughtExceptionHandler eh;
    private static Handler handler;
    private static File pcacheDir;
    private static ScheduledExecutorService storeExe;
    private static Map<String, Long> times = new HashMap();
    private static Object wait;

    public static void apply(SharedPreferences.Editor editor) {
        if (Constants.SDK_INT >= 9) {
            invokeHandler(editor, "apply", false, true, null, null);
        } else {
            editor.commit();
        }
    }

    public static void cleanCache(File file, long j2, long j3) {
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            Arrays.sort(fileArrListFiles, new Common());
            if (testCleanNeeded(fileArrListFiles, j2)) {
                cleanCache(fileArrListFiles, j3);
            }
            File tempDir = getTempDir();
            if (tempDir == null || !tempDir.exists()) {
                return;
            }
            cleanCache(tempDir.listFiles(), 0L);
        } catch (Exception e2) {
            report(e2);
        }
    }

    public static void cleanCacheAsync(Context context2) {
        cleanCacheAsync(context2, 3000000L, 2000000L);
    }

    public static void close(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        copy(inputStream, outputStream, 0, null);
    }

    public static void debug(Object obj) {
        if (debug) {
            Objects.toString(obj);
        }
    }

    public static void debugNotify() {
        Object obj;
        if (!debug || (obj = wait) == null) {
            return;
        }
        synchronized (obj) {
            wait.notifyAll();
        }
    }

    public static void debugWait(long j2) {
        if (debug) {
            if (wait == null) {
                wait = new Object();
            }
            synchronized (wait) {
                try {
                    wait.wait(j2);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static int dip2pixel(Context context2, float f2) {
        return (int) TypedValue.applyDimension(1, f2, context2.getResources().getDisplayMetrics());
    }

    public static void ensureUIThread() {
        if (isUIThread()) {
            return;
        }
        report(new IllegalStateException("Not UI Thread"));
    }

    public static File getCacheDir(Context context2, int i2) {
        if (i2 != 1) {
            return getCacheDir(context2);
        }
        File file = pcacheDir;
        if (file != null) {
            return file;
        }
        File file2 = new File(getCacheDir(context2), "persistent");
        pcacheDir = file2;
        file2.mkdirs();
        return pcacheDir;
    }

    public static File getCacheFile(File file, String str) {
        if (str == null) {
            return null;
        }
        return str.startsWith(File.separator) ? new File(str) : makeCacheFile(file, getCacheFileName(str));
    }

    private static String getCacheFileName(String str) {
        return getMD5Hex(str);
    }

    public static Context getContext() {
        if (context == null) {
            warn("warn", "getContext with null");
            debug((Throwable) new IllegalStateException());
        }
        return context;
    }

    public static File getExistedCacheByUrl(File file, String str) {
        File cacheFile = getCacheFile(file, str);
        if (cacheFile == null || !cacheFile.exists()) {
            return null;
        }
        return cacheFile;
    }

    public static File getExistedCacheByUrlSetAccess(File file, String str) {
        File existedCacheByUrl = getExistedCacheByUrl(file, str);
        if (existedCacheByUrl != null) {
            lastAccess(existedCacheByUrl);
        }
        return existedCacheByUrl;
    }

    private static ScheduledExecutorService getFileStoreExecutor() {
        if (storeExe == null) {
            storeExe = Executors.newSingleThreadScheduledExecutor();
        }
        return storeExe;
    }

    public static Handler getHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        return handler;
    }

    private static byte[] getMD5(byte[] bArr) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e2) {
            report(e2);
            return null;
        }
    }

    private static String getMD5Hex(String str) {
        return new BigInteger(getMD5(str.getBytes())).abs().toString(36);
    }

    public static File getTempDir() {
        File file = new File(Environment.getExternalStorageDirectory(), "aquery/temp");
        file.mkdirs();
        if (file.exists() && file.canWrite()) {
            return file;
        }
        return null;
    }

    public static Object invokeHandler(Object obj, String str, boolean z2, boolean z3, Class<?>[] clsArr, Object... objArr) {
        return invokeHandler(obj, str, z2, z3, clsArr, null, objArr);
    }

    private static Object invokeMethod(Object obj, String str, boolean z2, Class<?>[] clsArr, Class<?>[] clsArr2, Object... objArr) throws Exception {
        if (obj != null && str != null) {
            if (clsArr == null) {
                try {
                    clsArr = new Class[0];
                } catch (NoSuchMethodException unused) {
                    if (z2) {
                        try {
                            return clsArr2 == null ? obj.getClass().getMethod(str, null).invoke(obj, null) : obj.getClass().getMethod(str, clsArr2).invoke(obj, objArr);
                        } catch (NoSuchMethodException unused2) {
                        }
                    }
                }
            }
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        }
        return null;
    }

    public static boolean isDebug() {
        return debug;
    }

    public static boolean isUIThread() {
        return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
    }

    private static void lastAccess(File file) {
        file.setLastModified(System.currentTimeMillis());
    }

    private static File makeCacheFile(File file, String str) {
        return new File(file, str);
    }

    public static float pixel2dip(Context context2, float f2) {
        return f2 / (context2.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static void post(Runnable runnable) {
        getHandler().post(runnable);
    }

    public static void postAsync(final Runnable runnable) {
        new AsyncTask<Void, Void, String>() { // from class: com.androidquery.util.AQUtility.2
            @Override // android.os.AsyncTask
            public String doInBackground(Void... voidArr) {
                try {
                    runnable.run();
                    return null;
                } catch (Exception e2) {
                    AQUtility.report(e2);
                    return null;
                }
            }
        }.execute(new Void[0]);
    }

    public static void postDelayed(Runnable runnable, long j2) {
        getHandler().postDelayed(runnable, j2);
    }

    public static void removePost(Runnable runnable) {
        getHandler().removeCallbacks(runnable);
    }

    public static void report(Throwable th) {
        if (th == null) {
            return;
        }
        try {
            warn("reporting", Log.getStackTraceString(th));
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = eh;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void setAlpha(View view, float f2) {
        if (f2 == 1.0f) {
            view.clearAnimation();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f2);
        alphaAnimation.setDuration(0L);
        alphaAnimation.setFillAfter(true);
        view.startAnimation(alphaAnimation);
    }

    public static void setCacheDir(File file) {
        cacheDir = file;
        if (file != null) {
            file.mkdirs();
        }
    }

    public static void setContext(Application application) {
        context = application.getApplicationContext();
    }

    public static void setDebug(boolean z2) {
        debug = z2;
    }

    public static void setExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        eh = uncaughtExceptionHandler;
    }

    public static void store(File file, byte[] bArr) {
        if (file != null) {
            try {
                write(file, bArr);
            } catch (Exception e2) {
                report(e2);
            }
        }
    }

    public static void storeAsync(File file, byte[] bArr, long j2) {
        getFileStoreExecutor().schedule(new Common().method(1, file, bArr), j2, TimeUnit.MILLISECONDS);
    }

    private static boolean testCleanNeeded(File[] fileArr, long j2) {
        long length = 0;
        for (File file : fileArr) {
            length += file.length();
            if (length > j2) {
                return true;
            }
        }
        return false;
    }

    public static void time(String str) {
        times.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    public static long timeEnd(String str, long j2) {
        Long l2 = times.get(str);
        if (l2 == null) {
            return 0L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - l2.longValue();
        if (j2 != 0 && jCurrentTimeMillis <= j2) {
            return jCurrentTimeMillis;
        }
        debug(str, Long.valueOf(jCurrentTimeMillis));
        return jCurrentTimeMillis;
    }

    public static byte[] toBytes(InputStream inputStream) throws IOException {
        byte[] byteArray;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            copy(inputStream, byteArrayOutputStream);
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            report(e2);
            byteArray = null;
        }
        close(inputStream);
        return byteArray;
    }

    public static void transparent(View view, boolean z2) {
        setAlpha(view, z2 ? 0.5f : 1.0f);
    }

    public static void warn(Object obj, Object obj2) {
        Objects.toString(obj);
        Objects.toString(obj2);
    }

    public static void write(File file, byte[] bArr) throws IOException {
        try {
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (Exception e2) {
                    debug("file create fail", file);
                    report(e2);
                }
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Exception e3) {
            report(e3);
        }
    }

    public static void cleanCacheAsync(Context context2, long j2, long j3) {
        try {
            getFileStoreExecutor().schedule(new Common().method(2, getCacheDir(context2), Long.valueOf(j2), Long.valueOf(j3)), 0L, TimeUnit.MILLISECONDS);
        } catch (Exception e2) {
            report(e2);
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, int i2, Progress progress) throws IOException {
        if (progress != null) {
            progress.reset();
            progress.setBytes(i2);
        }
        byte[] bArr = new byte[4096];
        while (true) {
            int i3 = inputStream.read(bArr);
            if (i3 == -1) {
                break;
            }
            outputStream.write(bArr, 0, i3);
            if (progress != null) {
                progress.increment(i3);
            }
        }
        if (progress != null) {
            progress.done();
        }
    }

    public static Object invokeHandler(Object obj, String str, boolean z2, boolean z3, Class<?>[] clsArr, Class<?>[] clsArr2, Object... objArr) {
        try {
            return invokeMethod(obj, str, z2, clsArr, clsArr2, objArr);
        } catch (Exception e2) {
            if (z3) {
                report(e2);
                return null;
            }
            debug((Throwable) e2);
            return null;
        }
    }

    public static void post(Object obj, String str) {
        post(obj, str, new Class[0], new Object[0]);
    }

    public static void debug(Object obj, Object obj2) {
        if (debug) {
            Objects.toString(obj);
            Objects.toString(obj2);
        }
    }

    public static void post(final Object obj, final String str, final Class<?>[] clsArr, final Object... objArr) {
        post(new Runnable() { // from class: com.androidquery.util.AQUtility.1
            @Override // java.lang.Runnable
            public void run() {
                AQUtility.invokeHandler(obj, str, false, true, clsArr, objArr);
            }
        });
    }

    public static void postAsync(Object obj, String str) {
        postAsync(obj, str, new Class[0], new Object[0]);
    }

    public static void postAsync(final Object obj, final String str, final Class<?>[] clsArr, final Object... objArr) {
        postAsync(new Runnable() { // from class: com.androidquery.util.AQUtility.3
            @Override // java.lang.Runnable
            public void run() {
                AQUtility.invokeHandler(obj, str, false, true, clsArr, objArr);
            }
        });
    }

    public static void debug(Throwable th) {
        if (debug) {
            Log.getStackTraceString(th);
        }
    }

    public static File getCacheDir(Context context2) {
        if (cacheDir == null) {
            File file = new File(context2.getCacheDir(), "aquery");
            cacheDir = file;
            file.mkdirs();
        }
        return cacheDir;
    }

    private static void cleanCache(File[] fileArr, long j2) {
        long length = 0;
        int i2 = 0;
        for (File file : fileArr) {
            if (file.isFile()) {
                length += file.length();
                if (length >= j2) {
                    file.delete();
                    i2++;
                }
            }
        }
        debug("deleted", Integer.valueOf(i2));
    }
}
