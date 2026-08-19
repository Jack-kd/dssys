package com.octopus.ad;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Display;
import android.view.Menu;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import java.util.Locale;

/* loaded from: classes4.dex */
public class AdActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f33191a = false;

    /* renamed from: b, reason: collision with root package name */
    static Class<AdActivity> f33192b = AdActivity.class;

    /* renamed from: c, reason: collision with root package name */
    private a f33193c;

    public interface a {
        void a();

        void b();

        void c();

        void d();

        void e();
    }

    public static Class<AdActivity> a() {
        return f33192b;
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private static void b(Activity activity, int i2) {
        String str = com.octopus.ad.internal.c.a.a().f34521k;
        Locale locale = Locale.US;
        String upperCase = str.toUpperCase(locale);
        boolean z2 = com.octopus.ad.internal.c.a.a().f34520j.toUpperCase(locale).equals("AMAZON") && (upperCase.equals("KFTT") || upperCase.equals("KFJWI") || upperCase.equals("KFJWA"));
        Display defaultDisplay = ((WindowManager) activity.getSystemService("window")).getDefaultDisplay();
        if (i2 == 1) {
            int rotation = defaultDisplay.getRotation();
            if (rotation == 1 || rotation == 2) {
                activity.setRequestedOrientation(9);
                return;
            } else {
                activity.setRequestedOrientation(1);
                return;
            }
        }
        if (i2 == 2) {
            int rotation2 = defaultDisplay.getRotation();
            if (z2) {
                if (rotation2 == 0 || rotation2 == 1) {
                    activity.setRequestedOrientation(8);
                    return;
                } else {
                    activity.setRequestedOrientation(0);
                    return;
                }
            }
            if (rotation2 == 0 || rotation2 == 1) {
                activity.setRequestedOrientation(0);
            } else {
                activity.setRequestedOrientation(8);
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a aVar = this.f33193c;
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("ACTIVITY_TYPE");
        if (TextUtils.isEmpty(stringExtra)) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.adactivity_no_type));
            finish();
        } else if ("INTERSTITIAL".equals(stringExtra)) {
            e eVar = new e(this);
            this.f33193c = eVar;
            eVar.a();
        }
        CookieSyncManager.createInstance(this);
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.startSync();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return false;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        a aVar = this.f33193c;
        if (aVar != null) {
            aVar.d();
            this.f33193c = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        a aVar = this.f33193c;
        if (aVar != null) {
            aVar.c();
        }
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.stopSync();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        a aVar = this.f33193c;
        if (aVar != null) {
            aVar.b();
        }
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.startSync();
        }
        super.onResume();
    }

    public static void a(Activity activity, int i2) {
        b(activity, i2);
    }
}
