package com.alexmercerind.media_kit_video;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import com.alexmercerind.mediakitandroidhelper.MediaKitAndroidHelper;
import io.flutter.view.TextureRegistry;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class e {

    /* renamed from: k, reason: collision with root package name */
    public static final Method f1308k;

    /* renamed from: l, reason: collision with root package name */
    public static final Method f1309l;

    /* renamed from: m, reason: collision with root package name */
    public static final Set f1310m = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: n, reason: collision with root package name */
    public static final Handler f1311n = new Handler(Looper.getMainLooper());

    /* renamed from: e, reason: collision with root package name */
    public final b f1316e;

    /* renamed from: f, reason: collision with root package name */
    public final TextureRegistry.SurfaceTextureEntry f1317f;

    /* renamed from: g, reason: collision with root package name */
    public final Surface f1318g;

    /* renamed from: a, reason: collision with root package name */
    public int f1312a = 1;

    /* renamed from: b, reason: collision with root package name */
    public int f1313b = 1;

    /* renamed from: c, reason: collision with root package name */
    public long f1314c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f1315d = 0;

    /* renamed from: h, reason: collision with root package name */
    public final Object f1319h = new Object();

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f1320i = false;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f1321j = null;

    static {
        try {
            int i2 = MediaKitAndroidHelper.f1325a;
            Method declaredMethod = MediaKitAndroidHelper.class.getDeclaredMethod("newGlobalObjectRef", Object.class);
            f1308k = declaredMethod;
            Method declaredMethod2 = MediaKitAndroidHelper.class.getDeclaredMethod("deleteGlobalObjectRef", Long.TYPE);
            f1309l = declaredMethod2;
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
        } catch (Throwable th) {
            throw new RuntimeException("Failed to initialize com.alexmercerind.media_kit_video.VideoOutput.", th);
        }
    }

    public e(TextureRegistry textureRegistry, b bVar) {
        this.f1316e = bVar;
        TextureRegistry.SurfaceTextureEntry surfaceTextureEntryCreateSurfaceTexture = textureRegistry.createSurfaceTexture();
        this.f1317f = surfaceTextureEntryCreateSurfaceTexture;
        this.f1318g = new Surface(surfaceTextureEntryCreateSurfaceTexture.surfaceTexture());
        try {
            surfaceTextureEntryCreateSurfaceTexture.surfaceTexture().setDefaultBufferSize(this.f1312a, this.f1313b);
        } catch (Throwable th) {
            Log.e("VideoOutput", "init setDefaultBufferSize", th);
        }
        e();
    }

    public static void b(long j2) {
        if (j2 == 0) {
            return;
        }
        Set set = f1310m;
        if (set.contains(Long.valueOf(j2))) {
            return;
        }
        if (set.size() > 1000) {
            set.clear();
        }
        set.add(Long.valueOf(j2));
        try {
            f1309l.invoke(null, Long.valueOf(j2));
        } catch (Throwable th) {
            Log.e("VideoOutput", "deleteGlobalObjectRef", th);
        }
    }

    public static long d(Object obj) {
        try {
            Object objInvoke = f1308k.invoke(null, obj);
            Objects.requireNonNull(objInvoke);
            return ((Long) objInvoke).longValue();
        } catch (Throwable th) {
            Log.e("VideoOutput", "newGlobalRef", th);
            return 0L;
        }
    }

    public void c() {
        this.f1320i = true;
        f();
        synchronized (this.f1319h) {
            try {
                Runnable runnable = this.f1321j;
                if (runnable != null) {
                    f1311n.removeCallbacks(runnable);
                    this.f1321j = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            this.f1318g.release();
        } catch (Throwable th2) {
            Log.e("VideoOutput", "surface.release", th2);
        }
        try {
            this.f1317f.release();
        } catch (Throwable th3) {
            Log.e("VideoOutput", "surfaceTextureEntry.release", th3);
        }
    }

    public void e() {
        synchronized (this.f1319h) {
            try {
                if (this.f1320i) {
                    return;
                }
                Runnable runnable = this.f1321j;
                if (runnable != null) {
                    this.f1321j = null;
                } else {
                    runnable = null;
                }
                long j2 = this.f1315d;
                if (j2 != 0) {
                    this.f1315d = 0L;
                } else {
                    j2 = 0;
                }
                this.f1314c = this.f1317f.id();
                long jD = d(this.f1318g);
                this.f1315d = jD;
                long j3 = this.f1314c;
                int i2 = this.f1312a;
                int i3 = this.f1313b;
                if (runnable != null) {
                    f1311n.removeCallbacks(runnable);
                }
                if (j2 != 0) {
                    b(j2);
                }
                try {
                    this.f1316e.a(j3, jD, i2, i3);
                } catch (Throwable th) {
                    Log.e("VideoOutput", "onTextureUpdate", th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void f() {
        long j2;
        int i2;
        int i3;
        synchronized (this.f1319h) {
            try {
                j2 = this.f1314c;
                i2 = this.f1312a;
                i3 = this.f1313b;
                final long j3 = this.f1315d;
                if (j3 != 0) {
                    this.f1315d = 0L;
                } else {
                    j3 = 0;
                }
                Runnable runnable = this.f1321j;
                if (runnable != null) {
                    f1311n.removeCallbacks(runnable);
                    this.f1321j = null;
                }
                if (j3 != 0) {
                    Runnable runnable2 = new Runnable() { // from class: com.alexmercerind.media_kit_video.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            e.b(j3);
                        }
                    };
                    this.f1321j = runnable2;
                    f1311n.postDelayed(runnable2, 5000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            this.f1316e.a(j2, 0L, i2, i3);
        } catch (Throwable th2) {
            Log.e("VideoOutput", "onTextureUpdate(cleanup)", th2);
        }
    }

    public void g(int i2, int i3) {
        h(i2, i3, false);
    }

    public final void h(int i2, int i3, boolean z2) {
        synchronized (this.f1319h) {
            if (this.f1320i) {
                return;
            }
            try {
                int iMax = Math.max(1, i2);
                int iMax2 = Math.max(1, i3);
                if (!z2 && this.f1312a == iMax && this.f1313b == iMax2) {
                    return;
                }
                this.f1312a = iMax;
                this.f1313b = iMax2;
                this.f1317f.surfaceTexture().setDefaultBufferSize(iMax, iMax2);
                Runnable runnable = this.f1321j;
                if (runnable != null) {
                    this.f1321j = null;
                } else {
                    runnable = null;
                }
                long j2 = this.f1315d;
                if (j2 != 0) {
                    this.f1315d = 0L;
                } else {
                    j2 = 0;
                }
                this.f1314c = this.f1317f.id();
                long jD = d(this.f1318g);
                this.f1315d = jD;
                long j3 = this.f1314c;
                int i4 = this.f1312a;
                int i5 = this.f1313b;
                if (runnable != null) {
                    f1311n.removeCallbacks(runnable);
                }
                if (j2 != 0) {
                    b(j2);
                }
                try {
                    this.f1316e.a(j3, jD, i4, i5);
                } catch (Throwable th) {
                    Log.e("VideoOutput", "onTextureUpdate", th);
                }
            } catch (Throwable th2) {
                Log.e("VideoOutput", "setSurfaceSize", th2);
            }
        }
    }
}
