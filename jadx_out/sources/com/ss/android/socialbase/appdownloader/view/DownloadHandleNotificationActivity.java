package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.byazt.ni.DownloadHandlerService;
import com.byazt.nu.hp;
import org.json.JSONException;

/* loaded from: classes5.dex */
public class DownloadHandleNotificationActivity extends Activity {
    private static final String[] hp = {"android.permission.POST_NOTIFICATIONS"};

    /* renamed from: l, reason: collision with root package name */
    private DownloadHandlerService f45511l = new DownloadHandlerService();

    private void hp() {
        try {
            requestPermissions(hp, 1000);
        } catch (Throwable th) {
            hp.l("DownloadNotificationJumpActivity", "requestNotificationPermissionError:".concat(String.valueOf(th)));
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws JSONException {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if ("android.ss.intent.action.DOWNLOAD_REQUEST_PERMISSION".equals(intent.getAction())) {
            hp();
        } else {
            this.f45511l.onStartCommand(intent, 0, 0);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 1000 || iArr == null || iArr.length <= 0 || iArr[0] != 0) {
            hp.l("DownloadNotificationJumpActivity", "onRequestPermissionsResultNotification Permission denied");
        }
    }
}
