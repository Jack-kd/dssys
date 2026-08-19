package com.octopus.ad;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

/* loaded from: classes4.dex */
public class TransparentActivity extends Activity {
    static {
        try {
            com.octopus.ad.utils.a.a();
        } catch (Throwable th) {
            com.octopus.ad.d.b.f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    public native void activityResult(int i2, int i3);

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        activityResult(i2, i3);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setupWindow();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        pause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.TransparentActivity.1
            @Override // java.lang.Runnable
            public void run() {
                TransparentActivity.this.resume();
            }
        }, 100L);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        stop();
    }

    public native void pause();

    public native void resume();

    public native void setupWindow();

    public native void stop();
}
