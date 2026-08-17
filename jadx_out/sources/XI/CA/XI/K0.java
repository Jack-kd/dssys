package XI.CA.XI;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class K0 {
    public static kM CA = null;
    public static volatile XI.CA.XI.XI CV = null;
    public static Handler FL = null;
    public static HandlerThread J9 = null;

    /* renamed from: K0, reason: collision with root package name */
    public static boolean f690K0 = false;
    public static String WI;

    /* renamed from: XI, reason: collision with root package name */
    public static Context f691XI;
    public static String bs;
    public static String cs;
    public static kM kM;
    public static volatile K0 q6;
    public static Object vs = new Object();
    public static kM xo;

    public static class XI extends Handler {
        public XI(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            if (message.what == 11) {
                int i2 = message.getData().getInt("type");
                try {
                    String strXI = K0.CV.XI(i2, message.getData().getString("appid"));
                    if (i2 == 0) {
                        K0.WI = strXI;
                    } else if (i2 != 1) {
                        if (i2 == 2 && strXI != null) {
                            K0.cs = strXI;
                        }
                    } else if (strXI != null) {
                        K0.bs = strXI;
                    }
                } catch (Exception e2) {
                    e2.toString();
                }
                synchronized (K0.vs) {
                    K0.vs.notify();
                }
            }
        }
    }

    public K0() {
        XI();
        CV = new XI.CA.XI.XI(f691XI);
    }

    public static K0 XI(Context context) {
        if (!K0()) {
            return null;
        }
        if (f691XI == null) {
            if (context == null) {
                return null;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            f691XI = context;
        }
        if (q6 == null) {
            synchronized (K0.class) {
                try {
                    if (q6 == null) {
                        q6 = new K0();
                    }
                } finally {
                }
            }
        }
        return q6;
    }

    public void K0(int i2, String str) {
        Message messageObtainMessage = FL.obtainMessage();
        messageObtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        if (i2 == 1 || i2 == 2) {
            bundle.putString("appid", str);
        }
        messageObtainMessage.setData(bundle);
        FL.sendMessage(messageObtainMessage);
    }

    public static boolean K0() {
        String str = "0";
        if (!f690K0 && Build.VERSION.SDK_INT >= 28) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.identifierid.supported", "0");
            } catch (Throwable unused) {
            }
            f690K0 = "1".equals(str);
        }
        return f690K0;
    }

    public static void XI() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        J9 = handlerThread;
        handlerThread.start();
        FL = new XI(J9.getLooper());
    }

    public final void XI(int i2, String str) {
        synchronized (vs) {
            K0(i2, str);
            SystemClock.uptimeMillis();
            try {
                vs.wait(2000L);
            } catch (InterruptedException unused) {
            }
            SystemClock.uptimeMillis();
        }
    }

    public static synchronized void XI(Context context, int i2, String str) {
        ContentResolver contentResolver;
        Uri uri;
        kM kMVar;
        try {
            String packageName = context.getPackageName();
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 && CA == null) {
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 29) {
                            CA = new kM(q6, 2, packageName);
                            contentResolver = context.getContentResolver();
                            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/" + packageName);
                            kMVar = CA;
                        } else if (i3 == 28) {
                            CA = new kM(q6, 2, str);
                            contentResolver = context.getContentResolver();
                            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str);
                            kMVar = CA;
                        }
                        contentResolver.registerContentObserver(uri, false, kMVar);
                    }
                } else if (xo == null) {
                    int i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 29) {
                        xo = new kM(q6, 1, packageName);
                        contentResolver = context.getContentResolver();
                        uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + packageName);
                        kMVar = xo;
                    } else if (i4 == 28) {
                        xo = new kM(q6, 1, str);
                        contentResolver = context.getContentResolver();
                        uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str);
                        kMVar = xo;
                    }
                    contentResolver.registerContentObserver(uri, false, kMVar);
                }
            } else if (kM == null) {
                kM = new kM(q6, 0, null);
                context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, kM);
            }
        } finally {
        }
    }
}
