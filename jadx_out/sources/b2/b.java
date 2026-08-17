package b2;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: A, reason: collision with root package name */
    public static int f1172A = 0;

    /* renamed from: B, reason: collision with root package name */
    public static int f1173B = 0;

    /* renamed from: C, reason: collision with root package name */
    public static int f1174C = 0;

    /* renamed from: b, reason: collision with root package name */
    public static Object f1175b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static Context f1176c = null;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f1177d = false;

    /* renamed from: e, reason: collision with root package name */
    public static c f1178e;

    /* renamed from: f, reason: collision with root package name */
    public static c f1179f;

    /* renamed from: g, reason: collision with root package name */
    public static c f1180g;

    /* renamed from: h, reason: collision with root package name */
    public static HandlerThread f1181h;

    /* renamed from: i, reason: collision with root package name */
    public static Handler f1182i;

    /* renamed from: j, reason: collision with root package name */
    public static String f1183j;

    /* renamed from: k, reason: collision with root package name */
    public static String f1184k;

    /* renamed from: l, reason: collision with root package name */
    public static String f1185l;

    /* renamed from: m, reason: collision with root package name */
    public static String f1186m;

    /* renamed from: n, reason: collision with root package name */
    public static String f1187n;

    /* renamed from: o, reason: collision with root package name */
    public static String f1188o;

    /* renamed from: p, reason: collision with root package name */
    public static volatile b f1189p;

    /* renamed from: q, reason: collision with root package name */
    public static volatile b2.a f1190q;

    /* renamed from: r, reason: collision with root package name */
    public static int f1191r;

    /* renamed from: s, reason: collision with root package name */
    public static int f1192s;

    /* renamed from: t, reason: collision with root package name */
    public static int f1193t;

    /* renamed from: u, reason: collision with root package name */
    public static int f1194u;

    /* renamed from: v, reason: collision with root package name */
    public static int f1195v;

    /* renamed from: w, reason: collision with root package name */
    public static int f1196w;

    /* renamed from: x, reason: collision with root package name */
    public static int f1197x;

    /* renamed from: y, reason: collision with root package name */
    public static int f1198y;

    /* renamed from: z, reason: collision with root package name */
    public static int f1199z;

    /* renamed from: a, reason: collision with root package name */
    public final int f1200a;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.f1191r + b.f1192s + b.f1197x + b.f1172A + b.f1193t + b.f1194u + b.f1199z + b.f1172A + b.f1195v + b.f1196w + b.f1173B + b.f1174C > 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("oaid", b.this.h(b.f1191r, b.f1192s, b.f1197x, b.f1198y));
                contentValues.put("vaid", b.this.h(b.f1193t, b.f1194u, b.f1199z, b.f1172A));
                contentValues.put("aaid", b.this.h(b.f1195v, b.f1196w, b.f1173B, b.f1174C));
                b.f1190q.b(7, "vivo", new ContentValues[]{contentValues});
                int unused = b.f1191r = b.f1192s = b.f1193t = b.f1194u = b.f1195v = b.f1196w = 0;
                int unused2 = b.f1197x = b.f1198y = b.f1199z = b.f1172A = b.f1173B = b.f1174C = 0;
            }
        }
    }

    /* renamed from: b2.b$b, reason: collision with other inner class name */
    public class HandlerC0036b extends Handler {
        public HandlerC0036b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            if (message.what != 11) {
                Log.e("VMS_SDK_Client", "message type valid");
                return;
            }
            int i2 = message.getData().getInt("type");
            try {
                String strA = b.f1190q.a(i2, message.getData().getString("appid"));
                if (i2 == 0) {
                    String unused = b.f1183j = strA;
                    b.w(8, b.f1183j);
                } else if (i2 == 1) {
                    if (strA != null) {
                        String unused2 = b.f1184k = strA;
                    } else {
                        Log.e("VMS_SDK_Client", "get vaid failed");
                    }
                    b.w(9, b.f1184k);
                } else if (i2 == 2) {
                    if (strA != null) {
                        String unused3 = b.f1185l = strA;
                    } else {
                        Log.e("VMS_SDK_Client", "get aaid failed");
                    }
                    b.w(10, b.f1185l);
                } else if (i2 != 3) {
                    if (i2 == 4) {
                        String unused4 = b.f1187n = strA;
                    } else if (i2 == 5) {
                        if (strA != null) {
                            String unused5 = b.f1188o = strA;
                        } else {
                            Log.e("VMS_SDK_Client", "get guid failed");
                        }
                    }
                } else if (strA != null) {
                    String unused6 = b.f1186m = strA;
                } else {
                    Log.e("VMS_SDK_Client", "get udid failed");
                }
            } catch (Exception e2) {
                Log.e("VMS_SDK_Client", "readException:" + e2.toString());
            }
            synchronized (b.f1175b) {
                b.f1175b.notify();
            }
        }
    }

    public b() {
        d();
        f1190q = new b2.a(f1176c);
        this.f1200a = t(f1176c);
    }

    public static void d() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        f1181h = handlerThread;
        handlerThread.start();
        f1182i = new HandlerC0036b(f1181h.getLooper());
    }

    public static void e() {
        f1177d = "1".equals(k("persist.sys.identifierid.supported", "0")) || "1".equals(k("persist.sys.identifierid", "0"));
    }

    public static b g(Context context) {
        if (f1176c == null) {
            if (context == null) {
                return null;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            f1176c = context;
        }
        if (f1189p == null) {
            synchronized (b.class) {
                try {
                    if (f1189p == null) {
                        f1189p = new b();
                        f1189p.c();
                    }
                } finally {
                }
            }
        }
        return f1189p;
    }

    public static String k(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "0");
            } catch (Exception e2) {
                Log.e("VMS_SDK_Client", "getProperty: invoke is error" + e2.getMessage());
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static synchronized void m(Context context, int i2, String str) {
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        if (f1180g == null) {
                            f1180g = new c(f1189p, 2, str);
                            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/" + context.getPackageName()), false, f1180g);
                        }
                    }
                } else if (f1179f == null) {
                    f1179f = new c(f1189p, 1, str);
                    context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str), false, f1179f);
                }
            } else if (f1178e == null) {
                f1178e = new c(f1189p, 0, null);
                context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, f1178e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean n() {
        if (!f1177d) {
            e();
        }
        return f1177d;
    }

    public static b p(Context context) {
        if (n()) {
            return g(context);
        }
        return null;
    }

    public static int t(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.vivo.vms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static void w(int i2, String str) {
        if (i2 == 0) {
            if (str == null) {
                f1192s++;
                return;
            } else {
                f1191r++;
                return;
            }
        }
        if (i2 == 1) {
            if (str == null) {
                f1194u++;
                return;
            } else {
                f1193t++;
                return;
            }
        }
        if (i2 == 2) {
            if (str == null) {
                f1196w++;
                return;
            } else {
                f1195v++;
                return;
            }
        }
        switch (i2) {
            case 8:
                if (str != null) {
                    f1197x++;
                    break;
                } else {
                    f1198y++;
                    break;
                }
            case 9:
                if (str != null) {
                    f1199z++;
                    break;
                } else {
                    f1172A++;
                    break;
                }
            case 10:
                if (str != null) {
                    f1173B++;
                    break;
                } else {
                    f1174C++;
                    break;
                }
        }
    }

    public final void B(int i2, String str) {
        synchronized (f1175b) {
            l(i2, str);
            SystemClock.uptimeMillis();
            try {
                f1175b.wait(2000L);
            } catch (InterruptedException unused) {
                Log.e("VMS_SDK_Client", "queryId: lock error");
            }
            SystemClock.uptimeMillis();
        }
    }

    public final void c() {
        Executors.newScheduledThreadPool(1).scheduleWithFixedDelay(new a(), 600L, 600L, TimeUnit.SECONDS);
    }

    public final String h(int i2, int i3, int i4, int i5) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i2);
        stringBuffer.append(",");
        stringBuffer.append(i3);
        stringBuffer.append(";");
        stringBuffer.append(i4);
        stringBuffer.append(",");
        stringBuffer.append(i5);
        return stringBuffer.toString();
    }

    public void l(int i2, String str) {
        Message messageObtainMessage = f1182i.obtainMessage();
        messageObtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        if (i2 == 1 || i2 == 2 || i2 == 6) {
            bundle.putString("appid", str);
        }
        messageObtainMessage.setData(bundle);
        f1182i.sendMessage(messageObtainMessage);
    }

    public String u() {
        String str = f1183j;
        if (str != null) {
            w(0, str);
            return f1183j;
        }
        B(0, null);
        if (f1178e == null) {
            m(f1176c, 0, null);
        }
        w(0, f1183j);
        return f1183j;
    }
}
