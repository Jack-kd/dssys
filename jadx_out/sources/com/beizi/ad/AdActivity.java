package com.beizi.ad;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Menu;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.beizi.fusion.nq;
import com.beizi.fusion.z4;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class AdActivity extends Activity {

    /* renamed from: b, reason: collision with root package name */
    public static boolean f11903b = false;

    /* renamed from: c, reason: collision with root package name */
    static Class f11904c = AdActivity.class;

    /* renamed from: a, reason: collision with root package name */
    private b f11905a;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (i2 != 3) {
                i2++;
                if (AdActivity.f11903b) {
                    AdActivity.f11903b = false;
                    AdActivity.this.finish();
                    i2 = 3;
                }
                SystemClock.sleep(500L);
            }
        }
    }

    public interface b {
        WebView a();

        void b();

        void c();

        void destroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        b bVar = this.f11905a;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            String stringExtra = getIntent().getStringExtra("ACTIVITY_TYPE");
            boolean booleanExtra = getIntent().getBooleanExtra("ACTIVITY_CAN_JUMP", false);
            boolean booleanExtra2 = getIntent().getBooleanExtra("ACTIVITY_CAN_DOWNLOAD", false);
            String stringExtra2 = getIntent().getStringExtra("deeplinkUrl");
            int intExtra = getIntent().getIntExtra("webDeepLink", 0);
            try {
                if (TextUtils.isEmpty(stringExtra)) {
                    finish();
                } else if ("BROWSER".equals(stringExtra)) {
                    z4 z4Var = new z4(this, booleanExtra, booleanExtra2, stringExtra2, intExtra);
                    this.f11905a = z4Var;
                    z4Var.b();
                } else if ("DOWNLOADBROWSER".equals(stringExtra)) {
                    z4 z4Var2 = new z4(this, booleanExtra, booleanExtra2, stringExtra2, intExtra);
                    this.f11905a = z4Var2;
                    z4Var2.b();
                    new Thread(new a()).start();
                }
                CookieSyncManager.createInstance(this);
                CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
                if (cookieSyncManager != null) {
                    cookieSyncManager.startSync();
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return false;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        b bVar = this.f11905a;
        if (bVar != null) {
            bVar.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f11905a;
        if (bVar != null) {
            nq.a(bVar.a());
        }
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.stopSync();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f11905a;
        if (bVar != null) {
            nq.b(bVar.a());
        }
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.startSync();
        }
        super.onResume();
    }
}
