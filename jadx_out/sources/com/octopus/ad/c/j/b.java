package com.octopus.ad.c.j;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.octopus.ad.d.b.f;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: A, reason: collision with root package name */
    private static int f33851A = 0;

    /* renamed from: B, reason: collision with root package name */
    private static int f33852B = 0;

    /* renamed from: C, reason: collision with root package name */
    private static int f33853C = 0;

    /* renamed from: D, reason: collision with root package name */
    private static int f33854D = 0;

    /* renamed from: E, reason: collision with root package name */
    private static int f33855E = 0;

    /* renamed from: F, reason: collision with root package name */
    private static int f33856F = 0;

    /* renamed from: a, reason: collision with root package name */
    private static Context f33857a = null;

    /* renamed from: c, reason: collision with root package name */
    private static Object f33858c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private static boolean f33859d = false;

    /* renamed from: e, reason: collision with root package name */
    private static int f33860e = 13;

    /* renamed from: f, reason: collision with root package name */
    private static c f33861f;

    /* renamed from: g, reason: collision with root package name */
    private static c f33862g;

    /* renamed from: h, reason: collision with root package name */
    private static c f33863h;

    /* renamed from: i, reason: collision with root package name */
    private static c f33864i;

    /* renamed from: j, reason: collision with root package name */
    private static HandlerThread f33865j;

    /* renamed from: k, reason: collision with root package name */
    private static Handler f33866k;

    /* renamed from: l, reason: collision with root package name */
    private static String f33867l;

    /* renamed from: m, reason: collision with root package name */
    private static String f33868m;

    /* renamed from: n, reason: collision with root package name */
    private static String f33869n;

    /* renamed from: o, reason: collision with root package name */
    private static String f33870o;

    /* renamed from: p, reason: collision with root package name */
    private static String f33871p;

    /* renamed from: q, reason: collision with root package name */
    private static String f33872q;

    /* renamed from: r, reason: collision with root package name */
    private static String f33873r;

    /* renamed from: s, reason: collision with root package name */
    private static volatile b f33874s;

    /* renamed from: t, reason: collision with root package name */
    private static volatile a f33875t;

    /* renamed from: u, reason: collision with root package name */
    private static int f33876u;

    /* renamed from: v, reason: collision with root package name */
    private static int f33877v;

    /* renamed from: w, reason: collision with root package name */
    private static int f33878w;

    /* renamed from: x, reason: collision with root package name */
    private static int f33879x;

    /* renamed from: y, reason: collision with root package name */
    private static int f33880y;

    /* renamed from: z, reason: collision with root package name */
    private static int f33881z;

    /* renamed from: b, reason: collision with root package name */
    private final int f33882b;

    private b() {
        u();
        f33875t = new a(f33857a);
        this.f33882b = c(f33857a);
    }

    private void t() {
        Executors.newScheduledThreadPool(1).scheduleWithFixedDelay(new Runnable() { // from class: com.octopus.ad.c.j.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.f33876u + b.f33877v + b.f33851A + b.f33854D + b.f33878w + b.f33879x + b.f33853C + b.f33854D + b.f33880y + b.f33881z + b.f33855E + b.f33856F > 0) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("oaid", b.this.a(b.f33876u, b.f33877v, b.f33851A, b.f33852B));
                    contentValues.put("vaid", b.this.a(b.f33878w, b.f33879x, b.f33853C, b.f33854D));
                    contentValues.put("aaid", b.this.a(b.f33880y, b.f33881z, b.f33855E, b.f33856F));
                    b.f33875t.a(7, "vivo", new ContentValues[]{contentValues});
                    int unused = b.f33876u = b.f33877v = b.f33878w = b.f33879x = b.f33880y = b.f33881z = 0;
                    int unused2 = b.f33851A = b.f33852B = b.f33853C = b.f33854D = b.f33855E = b.f33856F = 0;
                }
            }
        }, 600L, 600L, TimeUnit.SECONDS);
    }

    private static void u() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        f33865j = handlerThread;
        handlerThread.start();
        f33866k = new Handler(f33865j.getLooper()) { // from class: com.octopus.ad.c.j.b.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 11) {
                    f.d("VMS_SDK_Client", "message type valid");
                    return;
                }
                int i2 = message.getData().getInt("type");
                try {
                    String strA = b.f33875t.a(i2, message.getData().getString("appid"));
                    if (i2 == 0) {
                        String unused = b.f33867l = strA;
                        b.a(8, b.f33867l);
                    } else if (i2 == 1) {
                        if (strA != null) {
                            String unused2 = b.f33868m = strA;
                        } else {
                            f.d("VMS_SDK_Client", "get vaid failed");
                        }
                        b.a(9, b.f33868m);
                    } else if (i2 == 2) {
                        if (strA != null) {
                            String unused3 = b.f33869n = strA;
                        } else {
                            f.d("VMS_SDK_Client", "get aaid failed");
                        }
                        b.a(10, b.f33869n);
                    } else if (i2 != 3) {
                        if (i2 == 4) {
                            String unused4 = b.f33871p = strA;
                        } else if (i2 == 5) {
                            if (strA != null) {
                                String unused5 = b.f33872q = strA;
                            } else {
                                f.d("VMS_SDK_Client", "get guid failed");
                            }
                        }
                    } else if (strA != null) {
                        String unused6 = b.f33870o = strA;
                    } else {
                        f.d("VMS_SDK_Client", "get udid failed");
                    }
                } catch (Exception e2) {
                    f.d("VMS_SDK_Client", "readException:" + e2.toString());
                }
                synchronized (b.f33858c) {
                    b.f33858c.notify();
                }
            }
        };
    }

    private static void v() {
        f33859d = "1".equals(a("persist.sys.identifierid.supported", "0")) || "1".equals(a("persist.sys.identifierid", "0"));
    }

    public static b b(Context context) {
        if (a()) {
            return a(context);
        }
        return null;
    }

    public String a(int i2, int i3, int i4, int i5) {
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

    public static b a(Context context) {
        if (f33857a == null) {
            if (context == null) {
                return null;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            f33857a = context;
        }
        if (f33874s == null) {
            synchronized (b.class) {
                try {
                    if (f33874s == null) {
                        f33874s = new b();
                        f33874s.t();
                    }
                } finally {
                }
            }
        }
        return f33874s;
    }

    private static int c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.vivo.vms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public String b() {
        String str = f33867l;
        if (str != null) {
            a(0, str);
            return f33867l;
        }
        c(0, null);
        if (f33861f == null) {
            a(f33857a, 0, null);
        }
        a(0, f33867l);
        return f33867l;
    }

    private void c(int i2, String str) {
        synchronized (f33858c) {
            b(i2, str);
            long jUptimeMillis = SystemClock.uptimeMillis();
            try {
                f33858c.wait(2000L);
            } catch (InterruptedException unused) {
                f.d("VMS_SDK_Client", "queryId: lock error");
            }
            if (SystemClock.uptimeMillis() - jUptimeMillis >= 2000) {
                f.a("VMS_SDK_Client", "query timeout");
            }
        }
    }

    public void b(int i2, String str) {
        Message messageObtainMessage = f33866k.obtainMessage();
        messageObtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        if (i2 == 1 || i2 == 2 || i2 == 6) {
            bundle.putString("appid", str);
        }
        messageObtainMessage.setData(bundle);
        f33866k.sendMessage(messageObtainMessage);
    }

    public static boolean a() {
        if (!f33859d) {
            v();
        }
        return f33859d;
    }

    public static void a(int i2, String str) {
        if (i2 == 0) {
            if (str == null) {
                f33877v++;
                return;
            } else {
                f33876u++;
                return;
            }
        }
        if (i2 == 1) {
            if (str == null) {
                f33879x++;
                return;
            } else {
                f33878w++;
                return;
            }
        }
        if (i2 == 2) {
            if (str == null) {
                f33881z++;
                return;
            } else {
                f33880y++;
                return;
            }
        }
        switch (i2) {
            case 8:
                if (str == null) {
                    f33852B++;
                    break;
                } else {
                    f33851A++;
                    break;
                }
            case 9:
                if (str == null) {
                    f33854D++;
                    break;
                } else {
                    f33853C++;
                    break;
                }
            case 10:
                if (str == null) {
                    f33856F++;
                    break;
                } else {
                    f33855E++;
                    break;
                }
        }
    }

    private static String a(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "0");
            } catch (Exception e2) {
                f.d("VMS_SDK_Client", "getProperty: invoke is error" + e2.getMessage());
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    private static synchronized void a(Context context, int i2, String str) {
        if (i2 == 0) {
            if (f33861f == null) {
                f33861f = new c(f33874s, 0, null);
                context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, f33861f);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (f33862g == null) {
                f33862g = new c(f33874s, 1, str);
                context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str), false, f33862g);
                return;
            }
            return;
        }
        if (i2 != 2) {
            return;
        }
        if (f33863h == null) {
            f33863h = new c(f33874s, 2, str);
            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/" + context.getPackageName()), false, f33863h);
        }
    }
}
