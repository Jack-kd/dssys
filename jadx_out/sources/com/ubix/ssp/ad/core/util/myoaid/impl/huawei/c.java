package com.ubix.ssp.ad.core.util.myoaid.impl.huawei;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import com.ubix.ssp.ad.core.util.myoaid.impl.huawei.AdvertisingIdClient;
import com.ubix.ssp.ad.core.util.myoaid.impl.huawei.e;
import com.ubix.ssp.ad.e.a0.u;
import java.io.Closeable;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final Uri f45737a = new Uri.Builder().scheme("content").authority("com.huawei.hwid.pps.apiprovider").path("/oaid_scp/get").build();

    /* renamed from: b, reason: collision with root package name */
    private static final Uri f45738b = new Uri.Builder().scheme("content").authority("com.huawei.hwid.pps.apiprovider").path("/oaid/query").build();

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e.b f45739a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f45740b;

        public a(e.b bVar, Context context) {
            this.f45739a = bVar;
            this.f45740b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f45739a.c()) {
                return;
            }
            this.f45739a.b();
            this.f45739a.a(c.e(this.f45740b));
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f45741a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ e.b f45742b;

        public b(Context context, e.b bVar) {
            this.f45741a = context;
            this.f45742b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f45742b.a(c.e(this.f45741a));
        }
    }

    public static AdvertisingIdClient.Info a(Context context) {
        if (context == null || !a(context, f45737a)) {
            return null;
        }
        String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid_c");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        e.b bVarA = e.b.a(context);
        String strA = bVarA.a();
        if (TextUtils.isEmpty(strA)) {
            f.f45758a.execute(new a(bVarA, context));
            if (bVarA.e()) {
                return new AdvertisingIdClient.Info("00000000-0000-0000-0000-000000000000", true);
            }
            bVarA.d();
            return null;
        }
        String strA2 = e.a(string, strA);
        if (!TextUtils.isEmpty(strA2)) {
            return new AdvertisingIdClient.Info(strA2, "00000000-0000-0000-0000-000000000000".equalsIgnoreCase(strA2));
        }
        f.f45758a.execute(new b(context, bVarA));
        return null;
    }

    public static AdvertisingIdClient.Info c(Context context) {
        if (context == null || !d(context)) {
            return new AdvertisingIdClient.Info("00000000-0000-0000-0000-000000000000", true);
        }
        try {
            Cursor cursorQuery = context.getContentResolver().query(f45738b, null, null, null, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                AdvertisingIdClient.Info info = new AdvertisingIdClient.Info("00000000-0000-0000-0000-000000000000", true);
                f.a(cursorQuery);
                return info;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("oaid");
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("limit_track");
            String string = cursorQuery.getString(columnIndexOrThrow);
            AdvertisingIdClient.Info info2 = new AdvertisingIdClient.Info(string, "00000000-0000-0000-0000-000000000000".equalsIgnoreCase(string) ? true : Boolean.valueOf(cursorQuery.getString(columnIndexOrThrow2)).booleanValue());
            f.a(cursorQuery);
            return info2;
        } catch (Throwable unused) {
            f.a((Closeable) null);
            return new AdvertisingIdClient.Info("00000000-0000-0000-0000-000000000000", true);
        }
    }

    public static boolean d(Context context) {
        return a(context, f45738b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(Context context) {
        if (context == null) {
            return "";
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(f45737a, null, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("op_wk"));
                u.e("InfoProviderUtil", " op_wk=" + string);
                f.a(cursorQuery);
                return string;
            }
            f.a(cursorQuery);
            return "";
        } catch (Throwable unused) {
            f.a(cursorQuery);
            return "";
        }
    }

    private static boolean a(Context context, Uri uri) {
        Integer numB;
        if (context == null || uri == null || (numB = f.b(context)) == null || 30462100 > numB.intValue()) {
            return false;
        }
        return f.a(context, uri);
    }
}
