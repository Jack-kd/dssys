package com.kwad.sdk.core.h;

import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.offline.api.BuildConfig;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.h;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.bt;
import com.kwad.sdk.utils.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a {
    private static C0613a aYU;
    private static boolean aYV;
    private static final AtomicBoolean mHasInit = new AtomicBoolean(false);
    private static boolean aYW = true;

    @KsJson
    /* renamed from: com.kwad.sdk.core.h.a$a, reason: collision with other inner class name */
    public static class C0613a extends com.kwad.sdk.core.response.a.a {
        public List<String> aYX;
        public int aYY;
        public List<String> aYZ;
        public List<String> aZa;
    }

    public static void Ov() {
        i.execute(new bi() { // from class: com.kwad.sdk.core.h.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                if (a.mHasInit.getAndSet(true)) {
                    return;
                }
                try {
                    C0613a unused = a.aYU = new C0613a();
                    boolean unused2 = a.aYV = ((h) ServiceProvider.get(h.class)).Gf();
                    String strGg = ((h) ServiceProvider.get(h.class)).Gg();
                    if (a.aYV && !TextUtils.isEmpty(strGg)) {
                        a.aYU.parseJson(new JSONObject(strGg));
                        a.Ow();
                        return;
                    }
                    boolean unused3 = a.aYW = a.aYV;
                } catch (Throwable unused4) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Ow() {
        aYW = true;
        if (aYU == null) {
            return;
        }
        eI(Ox());
        ai.l("ksadsdk_tk_switch", "tk_config", aYW);
    }

    private static int Ox() {
        int i2 = !aYU.aYZ.isEmpty() ? 1 : 0;
        C0613a c0613a = aYU;
        int i3 = c0613a.aYY != 0 ? 2 : 0;
        return ((i2 ^ i3) ^ (!c0613a.aYX.isEmpty() ? 4 : 0)) ^ (aYU.aZa.isEmpty() ? 0 : 8);
    }

    public static boolean Oy() {
        return mHasInit.get() ? aYW : ai.m("ksadsdk_tk_switch", "tk_config", true);
    }

    private static void eI(int i2) {
        for (int i3 = 0; i3 < Integer.toBinaryString(i2).length(); i3++) {
            if (((1 << i3) & i2) != 0) {
                aYW = false;
                eJ(i3);
                if (aYW) {
                    return;
                }
            }
        }
    }

    private static void eJ(int i2) {
        if (i2 == 0) {
            if (aYU.aYZ.contains(bt.WN())) {
                return;
            }
            aYW = true;
        } else if (i2 == 1) {
            if (aYU.aYY < bt.WX()) {
                aYW = true;
            }
        } else if (i2 == 2) {
            if (aYU.aYX.contains(BuildConfig.VERSION_NAME)) {
                return;
            }
            aYW = true;
        } else if (i2 == 3 && !aYU.aZa.contains(bt.WM())) {
            aYW = true;
        }
    }
}
