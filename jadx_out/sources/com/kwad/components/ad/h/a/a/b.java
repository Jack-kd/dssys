package com.kwad.components.ad.h.a.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.by;

/* loaded from: classes4.dex */
public final class b implements com.kwad.sdk.core.webview.c.a {
    public static int rf = 1;
    public static int rg = 2;
    private com.kwad.sdk.core.webview.c.c re;
    private int rh;
    private int ri;
    private InterfaceC0472b rk;
    private c rj = new c(this, 0);

    @Nullable
    private Runnable rl = null;

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public int rn;
        public int ro;
    }

    /* renamed from: com.kwad.components.ad.h.a.a.b$b, reason: collision with other inner class name */
    public interface InterfaceC0472b {
        void ab(int i2);
    }

    private b(int i2, int i3) {
        this.rh = i2;
        this.ri = i3;
    }

    @Nullable
    public static b M(AdTemplate adTemplate) {
        AdInfo adInfoEO = e.eO(adTemplate);
        if (com.kwad.sdk.core.response.helper.a.bi(adInfoEO)) {
            return null;
        }
        if (com.kwad.sdk.core.response.helper.a.bQ(adInfoEO)) {
            return new b(rg, f(adInfoEO));
        }
        int i2 = adInfoEO.adInsertScreenInfo.autoCloseTime;
        if (i2 > 0) {
            return new b(rf, i2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ag(int i2) {
        com.kwad.sdk.core.d.c.d("RegisterTimer", "updateTimer: " + i2 + ", mCallBackFunction: " + this.re);
        if (i2 >= 0 && this.re != null) {
            InterfaceC0472b interfaceC0472b = this.rk;
            if (interfaceC0472b != null && i2 == 0) {
                interfaceC0472b.ab(this.rh);
            }
            a aVar = new a();
            aVar.ro = i2;
            aVar.rn = this.rh;
            com.kwad.sdk.core.webview.c.c cVar = this.re;
            if (cVar != null) {
                cVar.b(aVar);
            }
        }
    }

    private static int f(AdInfo adInfo) {
        int iB = com.kwad.components.ad.interstitial.b.b.b(adInfo);
        if (iB <= 0) {
            iB = 60;
        }
        int i2 = adInfo.adInsertScreenInfo.autoCloseTime;
        return i2 > 0 ? Math.min(iB, i2) : iB;
    }

    public final void az() {
        com.kwad.sdk.core.d.c.d("RegisterTimer", "startTimer: mCallBackFunction: " + this.re);
        if (this.re == null) {
            this.rl = new Runnable() { // from class: com.kwad.components.ad.h.a.a.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.az();
                }
            };
        } else {
            this.rj.ah(this.ri);
            by.runOnUiThread(this.rj);
        }
    }

    public final void gb() {
        this.rj.z(true);
    }

    public final void gc() {
        this.rj.z(false);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerTimerListener";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.re = null;
    }

    public final void a(InterfaceC0472b interfaceC0472b) {
        this.rk = interfaceC0472b;
    }

    public class c implements Runnable {
        private boolean rp;
        private int rq;

        private c() {
            this.rp = false;
            this.rq = -1;
        }

        public final void ah(int i2) {
            this.rq = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.kwad.sdk.core.d.c.d("RegisterTimer", "TimerRunnable run timerPaused:  " + this.rp + ", currentTime: " + this.rq);
            if (this.rp) {
                by.a(this, null, 1000L);
                return;
            }
            int i2 = this.rq;
            if (i2 < 0) {
                return;
            }
            b.this.ag(i2);
            this.rq--;
            by.a(this, null, 1000L);
        }

        public final void z(boolean z2) {
            this.rp = z2;
        }

        public /* synthetic */ c(b bVar, byte b3) {
            this();
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        this.re = cVar;
        Runnable runnable = this.rl;
        if (runnable != null) {
            runnable.run();
            this.rl = null;
        }
    }
}
