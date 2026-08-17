package com.anythink.china.api;

import android.content.Context;
import android.content.Intent;
import com.anythink.china.activity.TransparentActivity;
import com.anythink.odopt.api.ATOaidHandler;
import com.anythink.odopt.api.OaidSDKCallbackListener;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.Random;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public class ATChinaSDKHandler {
    public static void handleInitOaidSDK(Context context, OaidSDKCallbackListener oaidSDKCallbackListener) {
        try {
            ATOaidHandler.handleInitOaidSDK(context, oaidSDKCallbackListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void requestPermissionIfNecessary(Context context) {
        String[] strArr = {"android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE"};
        if (context != null) {
            int iNextInt = new Random().nextInt(Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            Intent intent = new Intent(context, (Class<?>) TransparentActivity.class);
            intent.putExtra("type", 1000);
            intent.putExtra(TransparentActivity.f1407b, iNextInt);
            intent.putExtra(TransparentActivity.f1409d, strArr);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        }
    }

    public static void setAllowUseMdidSDK(boolean z2) {
        try {
            ATOaidHandler.setAllowUseMdidSDK(z2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
