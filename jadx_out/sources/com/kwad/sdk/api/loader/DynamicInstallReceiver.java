package com.kwad.sdk.api.loader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Build;
import androidx.annotation.Keep;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

@Keep
/* loaded from: classes4.dex */
public class DynamicInstallReceiver extends BroadcastReceiver {
    private static final AtomicBoolean HAS_REGISTER = new AtomicBoolean(false);
    private static final String TAG = "KSAd_DYI";

    @Keep
    public static void registerToApp(Context context) {
        if (context != null) {
            AtomicBoolean atomicBoolean = HAS_REGISTER;
            if (atomicBoolean.get() || context.getApplicationContext() == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter(context.getPackageName() + ".loader.install.DynamicApk");
            Context applicationContext = context.getApplicationContext();
            if (Build.VERSION.SDK_INT >= 33) {
                applicationContext.registerReceiver(new DynamicInstallReceiver(), intentFilter, 2);
            } else {
                applicationContext.registerReceiver(new DynamicInstallReceiver(), intentFilter);
            }
            atomicBoolean.set(true);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("apkPath");
        final String stringExtra2 = intent.getStringExtra("sdkVersion");
        final File file = new File(stringExtra);
        if (file.exists()) {
            AsyncTask.execute(new Runnable() { // from class: com.kwad.sdk.api.loader.DynamicInstallReceiver.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (d.a(context, AnonymousClass1.class.getClassLoader(), file.getPath(), stringExtra2)) {
                            i.t(context, stringExtra2);
                            j.h(file);
                        }
                    } catch (Exception e2) {
                        e2.toString();
                        e2.printStackTrace();
                    }
                }
            });
        } else {
            file.toString();
        }
    }
}
