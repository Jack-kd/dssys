package com.ad.adapter;

import android.content.Context;
import com.anythink.core.api.ATInitMediation;
import com.windmill.sdk.WindMillAd;
import java.util.Map;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static String f1254a = "AdSDK";

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f1255b;

    /* renamed from: com.ad.adapter.a$a, reason: collision with other inner class name */
    public class C0037a implements WindMillAd.WindMillAdInitListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ b f1256a;

        public C0037a(b bVar) {
            this.f1256a = bVar;
        }
    }

    public interface b {
    }

    public static a a() {
        if (f1255b == null) {
            synchronized (a.class) {
                try {
                    if (f1255b == null) {
                        f1255b = new a();
                    }
                } finally {
                }
            }
        }
        return f1255b;
    }

    public String b() {
        return "Ad";
    }

    public String c() {
        return "1.0.2";
    }

    public synchronized void d(Context context, Map map, b bVar) {
        try {
            String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
            Context applicationContext = context.getApplicationContext();
            WindMillAd windMillAdSharedAds = WindMillAd.sharedAds();
            windMillAdSharedAds.setAdult(true);
            windMillAdSharedAds.setPersonalizedAdvertisingOn(true);
            windMillAdSharedAds.setDebugEnable(false);
            windMillAdSharedAds.startWithAppId(applicationContext, stringFromMap, new C0037a(bVar));
        } catch (Throwable unused) {
        }
    }
}
