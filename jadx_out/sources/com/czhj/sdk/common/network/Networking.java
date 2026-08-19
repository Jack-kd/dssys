package com.czhj.sdk.common.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.LruCache;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.DeviceUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.SharedPreferencesUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.Cache;
import com.czhj.volley.ExecutorDelivery;
import com.czhj.volley.toolbox.BasicNetwork;
import com.czhj.volley.toolbox.FileDownloadNetwork;
import com.czhj.volley.toolbox.HurlStack;
import com.czhj.volley.toolbox.ImageLoader;
import com.czhj.volley.toolbox.NoCache;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class Networking {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29377a = "sigmob-volley-cache";

    /* renamed from: b, reason: collision with root package name */
    private static final String f29378b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile SigmobRequestQueue f29379c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile SigmobRequestQueue f29380d;

    /* renamed from: e, reason: collision with root package name */
    private static volatile SigmobRequestQueue f29381e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile SigmobRequestQueue f29382f;

    /* renamed from: g, reason: collision with root package name */
    private static volatile String f29383g;

    /* renamed from: h, reason: collision with root package name */
    private static volatile String f29384h;

    /* renamed from: i, reason: collision with root package name */
    private static volatile MaxWidthImageLoader f29385i;

    /* renamed from: j, reason: collision with root package name */
    private static boolean f29386j;

    /* renamed from: k, reason: collision with root package name */
    private static HurlStack.UrlRewriter f29387k;

    /* renamed from: l, reason: collision with root package name */
    private static volatile Cache f29388l;

    /* renamed from: m, reason: collision with root package name */
    private static HashSet f29389m;

    /* renamed from: n, reason: collision with root package name */
    private static SigmobRequestQueue f29390n;

    /* renamed from: o, reason: collision with root package name */
    private static SigmobRequestQueue f29391o;

    /* renamed from: com.czhj.sdk.common.network.Networking$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f29394a;

        public AnonymousClass4(Context context) {
            this.f29394a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    WebView webView = new WebView(this.f29394a);
                    webView.removeJavascriptInterface("searchBoxJavaBridge_");
                    webView.removeJavascriptInterface("accessibility");
                    webView.removeJavascriptInterface("accessibilityTraversal");
                    String unused = Networking.f29383g = webView.getSettings().getUserAgentString();
                    SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f29394a).edit();
                    editorEdit.putString("user-agent-cache", Networking.f29383g);
                    editorEdit.apply();
                }
            } catch (Throwable unused2) {
            }
        }
    }

    static {
        String property = System.getProperty("http.agent");
        f29378b = property;
        f29384h = property;
        f29386j = false;
        f29388l = null;
        f29389m = new HashSet();
    }

    public static void AddSigmobServerURL(String str) {
        f29389m.add(str);
    }

    private static Cache a(Context context) {
        if (f29388l == null) {
            f29388l = new NoCache();
        }
        return f29388l;
    }

    private static HurlStack.UrlRewriter b(Context context) {
        if (f29387k == null) {
            f29387k = new PlayServicesUrlRewriter();
        }
        return f29387k;
    }

    private static SigmobRequestQueue c(Context context) {
        SigmobRequestQueue sigmobRequestQueue;
        SigmobRequestQueue sigmobRequestQueue2 = f29390n;
        if (sigmobRequestQueue2 != null) {
            return sigmobRequestQueue2;
        }
        synchronized (Networking.class) {
            try {
                sigmobRequestQueue = f29390n;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue3 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 2, Integer.MAX_VALUE, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
                    f29390n = sigmobRequestQueue3;
                    sigmobRequestQueue3.start();
                    sigmobRequestQueue = sigmobRequestQueue3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sigmobRequestQueue;
    }

    public static SigmobRequestQueue getAdTrackerRetryQueue() {
        return f29391o;
    }

    public static String getBaseUrlScheme() {
        return b() ? "https" : "http";
    }

    public static SigmobRequestQueue getBuriedPointRequestQueue() {
        return f29381e;
    }

    public static String getCachedUserAgent() {
        String str = f29383g;
        return str == null ? f29378b : str;
    }

    public static SigmobRequestQueue getCommonRequestQueue() {
        return f29382f;
    }

    public static SigmobRequestQueue getDownloadRequestQueue() {
        return f29380d;
    }

    public static SigmobRequestQueue getRequestQueue() {
        return f29390n;
    }

    public static String getScheme() {
        return "https";
    }

    public static SigmobRequestQueue getSigRequestQueue() {
        return f29379c;
    }

    public static HashSet getSigmobServerURLS() {
        return f29389m;
    }

    public static HurlStack.UrlRewriter getUrlRewriter() {
        return f29387k;
    }

    public static String getUserAgent() {
        return TextUtils.isEmpty(f29383g) ? f29384h : f29383g;
    }

    public static void initialize(Context context) {
        initializeUserAgentCache(context);
        initializeUserAgent(context);
        initializeBuriedPointRequestQueue(context);
        initializeDownloadRequestQueue(context);
        c(context);
        initializeCommonRequestQueue(context);
        initializeImageLoader(context);
        initializeadTrackerReTryQueue(context);
    }

    public static SigmobRequestQueue initializeBuriedPointRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue;
        SigmobRequestQueue sigmobRequestQueue2 = f29381e;
        if (sigmobRequestQueue2 != null) {
            return sigmobRequestQueue2;
        }
        synchronized (Networking.class) {
            try {
                sigmobRequestQueue = f29381e;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue3 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 1, 2);
                    f29381e = sigmobRequestQueue3;
                    sigmobRequestQueue3.start();
                    sigmobRequestQueue = sigmobRequestQueue3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sigmobRequestQueue;
    }

    public static SigmobRequestQueue initializeCommonRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue;
        SigmobRequestQueue sigmobRequestQueue2 = f29382f;
        if (sigmobRequestQueue2 != null) {
            return sigmobRequestQueue2;
        }
        synchronized (Networking.class) {
            try {
                sigmobRequestQueue = f29382f;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue3 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 2, 10);
                    f29382f = sigmobRequestQueue3;
                    sigmobRequestQueue3.start();
                    sigmobRequestQueue = sigmobRequestQueue3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sigmobRequestQueue;
    }

    public static SigmobRequestQueue initializeDownloadRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue;
        SigmobRequestQueue sigmobRequestQueue2 = f29380d;
        if (sigmobRequestQueue2 != null) {
            return sigmobRequestQueue2;
        }
        synchronized (Networking.class) {
            try {
                sigmobRequestQueue = f29380d;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue3 = new SigmobRequestQueue(new FileDownloadNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 1, 6);
                    f29380d = sigmobRequestQueue3;
                    sigmobRequestQueue3.start();
                    sigmobRequestQueue = sigmobRequestQueue3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sigmobRequestQueue;
    }

    public static ImageLoader initializeImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader;
        MaxWidthImageLoader maxWidthImageLoader2 = f29385i;
        if (maxWidthImageLoader2 != null) {
            return maxWidthImageLoader2;
        }
        synchronized (Networking.class) {
            try {
                maxWidthImageLoader = f29385i;
                if (maxWidthImageLoader == null) {
                    SigmobRequestQueue downloadRequestQueue = getDownloadRequestQueue();
                    final LruCache<String, Bitmap> lruCache = new LruCache<String, Bitmap>(DeviceUtils.memoryCacheSizeBytes(context)) { // from class: com.czhj.sdk.common.network.Networking.1
                        @Override // android.util.LruCache
                        public int sizeOf(String str, Bitmap bitmap) {
                            return bitmap != null ? bitmap.getRowBytes() * bitmap.getHeight() : super.sizeOf((AnonymousClass1) str, (String) null);
                        }
                    };
                    MaxWidthImageLoader maxWidthImageLoader3 = new MaxWidthImageLoader(downloadRequestQueue, context, new ImageLoader.ImageCache() { // from class: com.czhj.sdk.common.network.Networking.2
                        @Override // com.czhj.volley.toolbox.ImageLoader.ImageCache
                        public Bitmap getBitmap(String str) {
                            return (Bitmap) lruCache.get(str);
                        }

                        @Override // com.czhj.volley.toolbox.ImageLoader.ImageCache
                        public void putBitmap(String str, Bitmap bitmap) {
                            lruCache.put(str, bitmap);
                        }
                    });
                    f29385i = maxWidthImageLoader3;
                    maxWidthImageLoader = maxWidthImageLoader3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return maxWidthImageLoader;
    }

    public static void initializeMill(Context context) {
        initializeUserAgentCache(context);
        initializeUserAgent(context.getApplicationContext());
        c(context);
        initializeCommonRequestQueue(context);
        initializeBuriedPointRequestQueue(context);
    }

    public static SigmobRequestQueue initializeSigRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue;
        SigmobRequestQueue sigmobRequestQueue2 = f29379c;
        if (sigmobRequestQueue2 != null) {
            return sigmobRequestQueue2;
        }
        synchronized (Networking.class) {
            try {
                sigmobRequestQueue = f29379c;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue3 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 2, 5);
                    f29379c = sigmobRequestQueue3;
                    sigmobRequestQueue3.start();
                    sigmobRequestQueue = sigmobRequestQueue3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sigmobRequestQueue;
    }

    public static String initializeUserAgent(final Context context) {
        String str;
        Preconditions.NoThrow.checkNotNull(context);
        String str2 = f29383g;
        if (str2 != null) {
            return str2;
        }
        synchronized (Networking.class) {
            str = f29383g;
            if (str == null) {
                try {
                    ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.network.Networking.3
                        @Override // java.lang.Runnable
                        public void run() {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            String unused = Networking.f29383g = WebSettings.getDefaultUserAgent(context);
                            SigmobLog.d("getUA time " + (System.currentTimeMillis() - jCurrentTimeMillis));
                            SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(context).edit();
                            editorEdit.putString("user-agent-cache", Networking.f29383g);
                            editorEdit.apply();
                        }
                    });
                } catch (Throwable unused) {
                }
            }
        }
        return str;
    }

    public static void initializeUserAgentCache(Context context) {
        f29384h = SharedPreferencesUtil.getSharedPreferences(context).getString("user-agent-cache", f29378b);
    }

    public static void initializeV2(Context context) {
        initializeUserAgentCache(context);
        initializeUserAgent(context);
        initializeBuriedPointRequestQueue(context);
        initializeDownloadRequestQueue(context);
        initializeCommonRequestQueue(context);
        initializeadTrackerReTryQueue(context);
    }

    public static SigmobRequestQueue initializeadTrackerReTryQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue;
        SigmobRequestQueue sigmobRequestQueue2 = f29391o;
        if (sigmobRequestQueue2 != null) {
            return sigmobRequestQueue2;
        }
        synchronized (Networking.class) {
            try {
                sigmobRequestQueue = f29391o;
                if (sigmobRequestQueue == null) {
                    BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000)));
                    if (f29388l == null) {
                        a(context);
                    }
                    SigmobRequestQueue sigmobRequestQueue3 = new SigmobRequestQueue(basicNetwork, 1, 10);
                    f29391o = sigmobRequestQueue3;
                    sigmobRequestQueue3.start();
                    sigmobRequestQueue = sigmobRequestQueue3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sigmobRequestQueue;
    }

    public static void useHttps(boolean z2) {
        f29386j = z2;
    }

    private static boolean b() {
        return f29386j;
    }
}
