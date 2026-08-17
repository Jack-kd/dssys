package com.sigmob.sdk.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.LandscapeAdActivity;
import com.sigmob.sdk.base.common.LandscapeTransparentAdActivity;
import com.sigmob.sdk.base.common.PortraitAdActivity;
import com.sigmob.sdk.base.common.PortraitTransparentAdActivity;
import com.sigmob.sdk.base.common.TransparentAdActivity;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class BaseAdActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static final String f35507a = "LandPage";

    /* renamed from: b, reason: collision with root package name */
    public static final String f35508b = "reward";

    /* renamed from: c, reason: collision with root package name */
    public static final String f35509c = "mraid";

    /* renamed from: d, reason: collision with root package name */
    public static final String f35510d = "mraid_two";

    /* renamed from: e, reason: collision with root package name */
    public static final String f35511e = "LandNative";

    /* renamed from: f, reason: collision with root package name */
    public static final String f35512f = "DisLike";

    /* renamed from: g, reason: collision with root package name */
    protected static final String f35513g = "ad_view_class_name";

    /* renamed from: h, reason: collision with root package name */
    protected static final String f35514h = "adUnit_requestId_key";

    /* renamed from: i, reason: collision with root package name */
    public static final String f35515i = "land_page_url";

    /* renamed from: j, reason: collision with root package name */
    public static final String f35516j = "new_interstitial";

    private static Intent a(Context context, Class<? extends BaseAdActivity> cls, String str, String str2) {
        Intent intentPutExtra = new Intent(context, cls).setFlags(C.ENCODING_PCM_MU_LAW).putExtra(f35513g, str2).putExtra(f35514h, str);
        int requestedOrientation = context instanceof Activity ? ((Activity) context).getRequestedOrientation() : 3;
        if (requestedOrientation != 7 && requestedOrientation != 6) {
            requestedOrientation = context.getResources().getDisplayMetrics().widthPixels > context.getResources().getDisplayMetrics().heightPixels ? 6 : 7;
        }
        intentPutExtra.putExtra(n.f36461x, requestedOrientation);
        intentPutExtra.putExtra(Constants.BROADCAST_IDENTIFIER_KEY, str);
        return intentPutExtra;
    }

    public static void b(Context context, Class<? extends BaseAdActivity> cls, String str) {
        try {
            Intent intentPutExtra = new Intent(context, cls).setFlags(C.ENCODING_PCM_MU_LAW).putExtra(f35513g, f35512f).putExtra(f35514h, str);
            intentPutExtra.putExtra(Constants.BROADCAST_IDENTIFIER_KEY, "dislike_broadcastIdentifier");
            context.startActivity(intentPutExtra);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, Class<? extends BaseAdActivity> cls, BaseAdUnit baseAdUnit) {
        try {
            context.startActivity(a(context, cls, baseAdUnit.getUuid(), f35507a));
        } catch (Throwable th) {
            new HashMap().put("error", th.getMessage());
        }
    }

    public static void a(Context context, Class<? extends BaseAdActivity> cls, String str) {
        a(context, cls, str, null, f35507a);
    }

    public static void a(Context context, Class<? extends BaseAdActivity> cls, String str, Bundle bundle, String str2) {
        try {
            int display_orientation = C1258h.c(str).getDisplay_orientation();
            if (display_orientation == 0) {
                display_orientation = ClientMetadata.getInstance().getOrientationInt().intValue();
            }
            Class cls2 = TransparentAdActivity.class;
            if (cls != cls2) {
                cls2 = display_orientation != 1 ? display_orientation != 2 ? AdActivity.class : LandscapeAdActivity.class : PortraitAdActivity.class;
            } else if (display_orientation == 1) {
                cls2 = PortraitTransparentAdActivity.class;
            } else if (display_orientation == 2) {
                cls2 = LandscapeTransparentAdActivity.class;
            }
            Intent intentA = a(context, cls2, str, str2);
            if (bundle != null) {
                intentA.putExtras(bundle);
            }
            context.startActivity(intentA);
        } catch (Throwable th) {
            HashMap map = new HashMap();
            map.put("error", th.getMessage());
            BaseBroadcastReceiver.a(context, str, map, IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
        }
    }
}
