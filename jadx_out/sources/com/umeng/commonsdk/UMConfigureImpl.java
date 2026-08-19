package com.umeng.commonsdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.pro.be;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.utils.onMessageSendListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class UMConfigureImpl {

    /* renamed from: e, reason: collision with root package name */
    private static final int f49862e = 1000;

    /* renamed from: f, reason: collision with root package name */
    private static ScheduledExecutorService f49863f;

    /* renamed from: g, reason: collision with root package name */
    private static Context f49864g;

    /* renamed from: a, reason: collision with root package name */
    private static String f49858a = be.b().b(be.f48812o);

    /* renamed from: b, reason: collision with root package name */
    private static CopyOnWriteArrayList<onMessageSendListener> f49859b = new CopyOnWriteArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    private static int f49860c = 0;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f49861d = false;

    /* renamed from: h, reason: collision with root package name */
    private static int f49865h = 0;

    /* renamed from: i, reason: collision with root package name */
    private static Runnable f49866i = new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (UMConfigureImpl.f49860c == 0 || UMConfigureImpl.f49865h >= 10) {
                    if (!UMConfigureImpl.f49861d) {
                        boolean unused = UMConfigureImpl.f49861d = true;
                        UMConfigureImpl.b(UMConfigureImpl.f49864g);
                    }
                    if (UMConfigureImpl.f49863f != null) {
                        UMConfigureImpl.f49863f.shutdown();
                        ScheduledExecutorService unused2 = UMConfigureImpl.f49863f = null;
                    }
                }
                UMConfigureImpl.f();
            } catch (Exception unused3) {
            }
        }
    };

    public static /* synthetic */ int f() {
        int i2 = f49865h;
        f49865h = i2 + 1;
        return i2;
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        f49864g = context;
        try {
            if (f49860c < 1) {
                UMEnvelopeBuild.setTransmissionSendFlag(true);
                return;
            }
            if (d(context)) {
                UMEnvelopeBuild.setTransmissionSendFlag(true);
                return;
            }
            UMEnvelopeBuild.setTransmissionSendFlag(false);
            c(context);
            if (f49863f == null) {
                ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
                f49863f = scheduledExecutorServiceNewScheduledThreadPool;
                scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(f49866i, 0L, 100L, TimeUnit.MILLISECONDS);
            }
        } catch (Exception unused) {
        }
    }

    public static synchronized void registerInterruptFlag() {
        try {
            f49860c++;
        } catch (Exception unused) {
        }
    }

    public static synchronized void registerMessageSendListener(onMessageSendListener onmessagesendlistener) {
        CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList;
        try {
            CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList2 = f49859b;
            if (copyOnWriteArrayList2 != null) {
                copyOnWriteArrayList2.add(onmessagesendlistener);
            }
            if (UMEnvelopeBuild.getTransmissionSendFlag() && (copyOnWriteArrayList = f49859b) != null && copyOnWriteArrayList.size() > 0) {
                Iterator<onMessageSendListener> it = f49859b.iterator();
                while (it.hasNext()) {
                    it.next().onMessageSend();
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void removeInterruptFlag() {
        try {
            f49860c--;
        } catch (Exception unused) {
        }
    }

    public static synchronized void removeMessageSendListener(onMessageSendListener onmessagesendlistener) {
        try {
            CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList = f49859b;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(onmessagesendlistener);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void b(Context context) {
        try {
            UMEnvelopeBuild.setTransmissionSendFlag(true);
            CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList = f49859b;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                Iterator<onMessageSendListener> it = f49859b.iterator();
                while (it.hasNext()) {
                    it.next().onMessageSend();
                }
            }
        } catch (Exception unused) {
        }
    }

    private static void c(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f49858a, 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putBoolean(f49858a, true);
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean d(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f49858a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(f49858a, false);
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
