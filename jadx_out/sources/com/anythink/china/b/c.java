package com.anythink.china.b;

import android.content.Context;
import android.content.Intent;
import com.anythink.china.activity.TransparentActivity;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.Random;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1430a = "android.permission.READ_PHONE_STATE";

    /* renamed from: b, reason: collision with root package name */
    public static final String f1431b = "android.permission.WRITE_EXTERNAL_STORAGE";

    public interface a {
        void a();
    }

    private static void a(Context context, a aVar, String... strArr) {
        if (context != null) {
            int iNextInt = new Random().nextInt(Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            if (aVar != null) {
                TransparentActivity.f1410e.put(Integer.valueOf(iNextInt), aVar);
            }
            Intent intent = new Intent(context, (Class<?>) TransparentActivity.class);
            intent.putExtra("type", 1000);
            intent.putExtra(TransparentActivity.f1407b, iNextInt);
            intent.putExtra(TransparentActivity.f1409d, strArr);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        }
    }

    public static boolean a(Context context, String str) {
        if (context != null) {
            try {
                return context.checkSelfPermission(str) == 0;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }
}
