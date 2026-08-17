package com.smartdigimkt.d;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;
import com.smartdigimkt.china.activity.TransparentActivity;
import java.util.Random;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes5.dex */
public abstract class b {
    public static void a(Context context, String... strArr) {
        if (context != null) {
            int iNextInt = new Random().nextInt(Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            Intent intent = new Intent(context, (Class<?>) TransparentActivity.class);
            intent.putExtra("type", 1000);
            intent.putExtra(com.anythink.china.activity.TransparentActivity.f1407b, iNextInt);
            intent.putExtra(com.anythink.china.activity.TransparentActivity.f1409d, strArr);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        }
    }
}
