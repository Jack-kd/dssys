package com.ubix.ssp.ad.e.a0.c0;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile String f46144a = "";

    /* renamed from: b, reason: collision with root package name */
    private static Object f46145b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static long f46146c;

    public class a implements c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f46147a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f46148b;

        /* renamed from: com.ubix.ssp.ad.e.a0.c0.b$a$a, reason: collision with other inner class name */
        public class RunnableC0789a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f46149a;

            public RunnableC0789a(String str) {
                this.f46149a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    u.e("onOAIDGetComplete " + this.f46149a);
                    v.b(a.this.f46148b, "ubix_sp_seed", "seed", Base64.encodeToString(this.f46149a.getBytes(), 10));
                    v.a(a.this.f46148b, "ubix_sp_seed", "seed_expired", System.currentTimeMillis() + 864000000);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public a(boolean z2, Context context) {
            this.f46147a = z2;
            this.f46148b = context;
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.c
        public void a(Exception exc) {
            String strD = v.d(this.f46148b, "ubix_sp_seed", "seed");
            if (!TextUtils.isEmpty(strD)) {
                String unused = b.f46144a = new String(Base64.decode(strD.getBytes(), 10));
                if (b.f46144a == null) {
                    String unused2 = b.f46144a = "";
                    return;
                }
                return;
            }
            String strD2 = v.d(this.f46148b, "ubix_sp_seed", "oaid");
            if (TextUtils.isEmpty(strD2)) {
                String unused3 = b.f46144a = "";
            } else {
                String unused4 = b.f46144a = strD2;
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.c
        public void a(String str) {
            try {
                String unused = b.f46144a = str;
                try {
                    com.ubix.ssp.ad.e.a0.c.y();
                    com.ubix.ssp.ad.e.a0.c.f46115d.execute(new RunnableC0789a(str));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Exception unused2) {
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.c
        public boolean a() {
            return this.f46147a;
        }
    }

    private b() {
    }

    public static String b(Context context) {
        String str;
        try {
            if (TextUtils.isEmpty(f46144a) || f46144a.startsWith("00000")) {
                String strD = v.d(context, "ubix_sp_seed", "seed");
                if (TextUtils.isEmpty(strD)) {
                    str = v.d(context, "ubix_sp_seed", "oaid");
                    if (!TextUtils.isEmpty(str)) {
                    }
                } else {
                    str = new String(Base64.decode(strD.getBytes(), 10));
                }
                f46144a = str;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f46144a;
    }

    public static String a(Context context) {
        try {
            if (!TextUtils.isEmpty(com.ubix.ssp.ad.d.b.f45799f)) {
                return "";
            }
            String strD = v.d(context, "ubix_sp_seed", "android_id");
            return TextUtils.isEmpty(strD) ? new String(Base64.decode(strD.getBytes(), 10)) : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static void b(Context context, boolean z2) {
        synchronized (f46145b) {
            try {
                if (System.currentTimeMillis() - f46146c > com.ubix.ssp.ad.d.b.f45812s) {
                    f46146c = System.currentTimeMillis();
                    com.ubix.ssp.ad.e.a0.c0.a.a(context, new a(z2, context));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String a(Context context, boolean z2) {
        b(context, z2);
        return b(context);
    }
}
