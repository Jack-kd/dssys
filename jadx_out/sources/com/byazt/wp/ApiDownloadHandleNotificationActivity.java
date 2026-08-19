package com.byazt.wp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.ActivityCompat;
import com.byazt.ik.a;

@com.byazt.kj.hp(hp = {0, 1, 207, 801})
/* loaded from: classes3.dex */
public class ApiDownloadHandleNotificationActivity extends Activity {
    public static final String[] hp = {"android.permission.POST_NOTIFICATIONS"};

    /* renamed from: l, reason: collision with root package name */
    public ApiDownloadHandlerService f27093l = new ApiDownloadHandlerService();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.wp.ApiDownloadHandleNotificationActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if ("android.ss.intent.action.DOWNLOAD_REQUEST_PERMISSION".equals(intent.getAction())) {
                    ApiDownloadHandleNotificationActivity.this.hp();
                } else {
                    ApiDownloadHandleNotificationActivity.this.f27093l.onStartCommand(intent, 0, 0);
                }
                ApiDownloadHandleNotificationActivity.this.finish();
            }
        });
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 1000 || iArr == null || iArr.length <= 0 || iArr[0] != 0) {
            a.l("DownloadNotificationJumpActivity", "onRequestPermissionsResultNotification Permission denied");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        try {
            ActivityCompat.requestPermissions(this, hp, 1000);
        } catch (Throwable th) {
            a.l("DownloadNotificationJumpActivity", "requestNotificationPermissionError:".concat(String.valueOf(th)));
        }
    }
}
