package com.anythink.core.basead.a;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.basead.adx.api.ATAdxAPI;
import com.anythink.core.basead.adx.api.ATAdxAdapterConfig;
import com.anythink.core.basead.adx.api.ATAdxAdapterConfigListener;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.az;
import com.anythink.core.e.k;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static String f1578a = "anythink_adx_context";

    /* renamed from: b, reason: collision with root package name */
    private static volatile a f1579b;

    public static a a() {
        if (f1579b == null) {
            synchronized (s.class) {
                try {
                    if (f1579b == null) {
                        f1579b = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1579b;
    }

    public final void a(Context context, String str, Map<String, Object> map, final ATAdxAdapterConfigListener aTAdxAdapterConfigListener) {
        if (context == null) {
            if (aTAdxAdapterConfigListener != null) {
                aTAdxAdapterConfigListener.onLoadFailed("context = null");
                return;
            }
            return;
        }
        String strP = s.b().p();
        String strQ = s.b().q();
        if (s.b().g() != null && !TextUtils.isEmpty(strP) && !TextUtils.isEmpty(strQ)) {
            if (TextUtils.isEmpty(str)) {
                if (aTAdxAdapterConfigListener != null) {
                    aTAdxAdapterConfigListener.onLoadFailed("placementId is empty");
                    return;
                }
                return;
            } else {
                if (map == null) {
                    if (aTAdxAdapterConfigListener != null) {
                        aTAdxAdapterConfigListener.onLoadFailed("requestMap = null");
                        return;
                    }
                    return;
                }
                Object obj = map.get(ATAdxAPI.KEY_A_WF_INFO);
                if (obj instanceof JSONObject) {
                    k.a(context).a(new az(strP, strQ, str, s.b().d(str), (JSONObject) obj), new k.a() { // from class: com.anythink.core.basead.a.a.1
                        @Override // com.anythink.core.e.k.a
                        public final void a(JSONObject jSONObject) {
                            ATAdxAdapterConfigListener aTAdxAdapterConfigListener2 = aTAdxAdapterConfigListener;
                            if (aTAdxAdapterConfigListener2 != null) {
                                aTAdxAdapterConfigListener2.onLoadSuccess(ATAdxAdapterConfig.parse(jSONObject));
                            }
                        }

                        @Override // com.anythink.core.e.k.a
                        public final void a(String str2) {
                            ATAdxAdapterConfigListener aTAdxAdapterConfigListener2 = aTAdxAdapterConfigListener;
                            if (aTAdxAdapterConfigListener2 != null) {
                                aTAdxAdapterConfigListener2.onLoadFailed(str2);
                            }
                        }
                    });
                    return;
                } else {
                    if (aTAdxAdapterConfigListener != null) {
                        aTAdxAdapterConfigListener.onLoadFailed("waterfall info = null");
                        return;
                    }
                    return;
                }
            }
        }
        Log.e(f1578a, "SDK init error!");
        if (aTAdxAdapterConfigListener != null) {
            aTAdxAdapterConfigListener.onLoadFailed("SDK init error!");
        }
    }
}
