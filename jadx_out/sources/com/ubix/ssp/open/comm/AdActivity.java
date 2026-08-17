package com.ubix.ssp.open.comm;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.kc.AbsServerManager;
import com.ubix.ssp.ad.e.a0.m;
import com.ubix.ssp.ad.e.a0.n;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.s.a;
import com.ubix.ssp.ad.e.s.b;
import com.ubix.ssp.open.UBiXAdSetting;
import java.io.File;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public class AdActivity extends Activity {
    public static final String INSTALL_ACTION = "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfQURERUQ=";
    private a apkBr;
    private String packageName;
    private int notifyId = -1;
    String path = null;
    boolean isSimple = false;

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        com.ubix.ssp.ad.d.a aVar;
        super.onActivityResult(i2, i3, intent);
        try {
            if (i3 != -1) {
                u.b("未能安装" + i3 + ":" + i2);
            } else if (!TextUtils.isEmpty(this.packageName) && (aVar = b.f47066b.get(this.packageName)) != null) {
                b.f47066b.remove(this.packageName);
                b.c().a(getApplicationContext(), this.packageName, aVar, "back", this.path);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        File file;
        Uri uriForFile;
        super.onCreate(bundle);
        try {
            Bundle extras = getIntent().getExtras();
            if (extras.getBoolean("dance", false)) {
                finish();
                return;
            }
            this.path = extras.getString("path");
            u.e("apkPath=" + this.path);
            this.packageName = extras.getString("pkg");
            this.isSimple = extras.getBoolean("isSimple", false);
            this.notifyId = extras.getInt("nid");
            Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
            intent.addFlags(1);
            intent.putExtra("android.intent.extra.RETURN_RESULT", true);
            UBiXAdSetting uBiXAdSetting = com.ubix.ssp.ad.d.b.f45794a;
            if (uBiXAdSetting != null && uBiXAdSetting.getExtra() != null && !com.ubix.ssp.ad.d.b.f45794a.getExtra().isEmpty() && com.ubix.ssp.ad.d.b.f45794a.getExtra().containsKey("FileProviderAuthority")) {
                try {
                    String str2 = com.ubix.ssp.ad.d.b.f45794a.getExtra().get("FileProviderAuthority");
                    if (TextUtils.isEmpty(str2)) {
                        uriForFile = UBiXFileProvider.getUriForFile(this, getPackageName() + ".UBiXFileProvider", new File(this.path));
                    } else {
                        Method method = Class.forName(getPackageManager().resolveContentProvider(str2, 0).name).getMethod("getUriForFile", Context.class, String.class, File.class);
                        method.setAccessible(true);
                        uriForFile = (Uri) method.invoke(null, this, str2, new File(this.path));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    str = getPackageName() + ".UBiXFileProvider";
                    file = new File(this.path);
                }
                u.e("apkUriPath=" + uriForFile);
                intent.setData(uriForFile);
                startActivityForResult(intent, 1567);
                u.e("listenPackageInstall=" + com.ubix.ssp.ad.d.b.f45783B + ";isSimple=" + this.isSimple);
                if (com.ubix.ssp.ad.d.b.f45783B || this.isSimple) {
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(new String(n.a().a("YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfQURERUQ=")));
                intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
                a aVar = new a(this.packageName);
                this.apkBr = aVar;
                registerReceiver(aVar, intentFilter);
                return;
            }
            str = getPackageName() + ".UBiXFileProvider";
            file = new File(this.path);
            uriForFile = UBiXFileProvider.getUriForFile(this, str, file);
            u.e("apkUriPath=" + uriForFile);
            intent.setData(uriForFile);
            startActivityForResult(intent, 1567);
            u.e("listenPackageInstall=" + com.ubix.ssp.ad.d.b.f45783B + ";isSimple=" + this.isSimple);
            if (com.ubix.ssp.ad.d.b.f45783B) {
            }
        } catch (Throwable th) {
            th.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        com.ubix.ssp.ad.d.a aVar;
        super.onDestroy();
        try {
            a aVar2 = this.apkBr;
            if (aVar2 != null) {
                unregisterReceiver(aVar2);
            }
            if (!TextUtils.isEmpty(this.packageName) && (aVar = b.f47066b.get(this.packageName)) != null) {
                b.f47066b.remove(this.packageName);
                b.c().a(getApplicationContext(), this.packageName, aVar, "back", this.path);
            }
        } catch (Exception unused) {
        }
        try {
            if (this.notifyId != -1) {
                Intent intent = new Intent();
                intent.setAction("ACTION_INSTALLED");
                intent.putExtra("service_intent_notify_id", this.notifyId);
                intent.putExtra("service_intent_pkg_extra", this.packageName);
                m.a(getApplicationContext()).b(intent);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
