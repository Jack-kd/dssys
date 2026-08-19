package com.beizi.fusion;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.beizi.fusion.e7;

/* loaded from: classes2.dex */
public class zj {

    /* renamed from: a, reason: collision with root package name */
    private String f17881a;

    /* renamed from: b, reason: collision with root package name */
    private String f17882b;

    /* renamed from: c, reason: collision with root package name */
    private volatile boolean f17883c;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f17884a;

        public a(Context context) {
            this.f17884a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            zj.this.b(this.f17884a);
            zj zjVar = zj.this;
            zjVar.a(this.f17884a, new d(zjVar, null));
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private static zj f17889a = new zj(null);
    }

    public class d {

        public class a implements e7.a {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f17891a;

            public a(Context context) {
                this.f17891a = context;
            }

            @Override // com.beizi.fusion.e7.a
            public void a(String str) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    zj.this.a(this.f17891a, str, "CN");
                } catch (Throwable th) {
                    rm.a(th);
                }
            }
        }

        public /* synthetic */ d(zj zjVar, a aVar) {
            this();
        }

        private void b(Context context) {
            try {
                new e7(new a(context)).b(context);
            } catch (Throwable th) {
                rm.a(th);
            }
        }

        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context) {
            b(context);
        }
    }

    public /* synthetic */ zj(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        if (Build.BRAND.equals("HONOR")) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), "oaid_limit_state");
                if (TextUtils.isEmpty(string) || Boolean.parseBoolean(string)) {
                    return;
                }
                String string2 = Settings.Global.getString(context.getContentResolver(), "oaid");
                if (TextUtils.isEmpty(string2)) {
                    return;
                }
                a(context, string2);
            } catch (Throwable unused) {
            }
        }
    }

    public String c(Context context) {
        if (TextUtils.isEmpty(this.f17881a)) {
            this.f17881a = g3.b(t5.a(context, t5.a(), "OAID_CIP", ""));
        }
        return this.f17881a;
    }

    public synchronized void d(Context context) {
        if (this.f17883c) {
            return;
        }
        this.f17883c = true;
        ((hb) fn.a().b(context)).a(new a(context));
    }

    private zj() {
        this.f17883c = false;
        if (c.f17889a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static zj a() {
        return c.f17889a;
    }

    public class b implements mc {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f17886a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f17887b;

        public b(Context context, d dVar) {
            this.f17886a = context;
            this.f17887b = dVar;
        }

        @Override // com.beizi.fusion.mc
        public void a(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    zj.this.a(this.f17886a, str, "SM");
                    return;
                }
            } catch (Throwable th) {
                rm.a(th);
            }
            d dVar = this.f17887b;
            if (dVar != null) {
                dVar.a(this.f17886a);
            }
        }

        @Override // com.beizi.fusion.mc
        public void a(Exception exc) {
            d dVar = this.f17887b;
            if (dVar != null) {
                dVar.a(this.f17886a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, d dVar) {
        try {
            v6.a((Application) context.getApplicationContext());
            if (t6.a(context)) {
                t6.a(context, new b(context, dVar));
            }
        } catch (Throwable th) {
            rm.a(th);
        }
    }

    private void a(Context context, String str) {
        rm.a("OAIDHelper", "保存Honor OAID: " + str);
        this.f17882b = str;
        t5.b(context, t5.a(), "HONOR_OAID_CIP", g3.c(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2) {
        rm.a("OAIDHelper", str2 + "保存 OAID: " + str);
        this.f17881a = str;
        t5.b(context, t5.a(), "OAID_CIP", g3.c(str));
    }

    public String a(Context context) {
        if (TextUtils.isEmpty(this.f17882b)) {
            this.f17882b = g3.b(t5.a(context, t5.a(), "HONOR_OAID_CIP", ""));
        }
        return this.f17882b;
    }
}
