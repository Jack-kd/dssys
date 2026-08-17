package com.meishu.sdk.meishu_ad.reward;

import com.meishu.sdk.activity.MeishuRewardH5Activity;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.safe.n;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.webview.h;
import com.meishu.sdk.meishu_ad.f0;
import com.meishu.sdk.meishu_ad.v;
import java.util.Timer;

/* loaded from: classes4.dex */
public class i {

    /* renamed from: c, reason: collision with root package name */
    public c f32483c;

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f32481a = false;

    /* renamed from: b, reason: collision with root package name */
    public final Object f32482b = new Object();

    /* renamed from: d, reason: collision with root package name */
    public volatile Boolean f32484d = null;

    /* renamed from: e, reason: collision with root package name */
    public volatile Boolean f32485e = null;

    /* renamed from: f, reason: collision with root package name */
    public final com.meishu.sdk.core.webview.h f32486f = new com.meishu.sdk.core.webview.h(new h.a() { // from class: R0.a
        @Override // com.meishu.sdk.core.webview.h.a
        public final void a(boolean z2) {
            this.f498a.a(z2);
        }
    });

    public class a extends n {

        /* renamed from: com.meishu.sdk.meishu_ad.reward.i$a$a, reason: collision with other inner class name */
        public class C0683a extends l {
            public C0683a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                LogUtil.dev("RewardH5", "timeoutCheck");
                i.a(i.this);
            }
        }

        public a() {
        }

        @Override // com.meishu.sdk.core.safe.n
        public void a() {
            cancel();
            SdkHandler.getInstance().runOnUiThread(new C0683a());
        }
    }

    public class b extends n {

        public class a extends l {
            public a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                i.a(i.this);
            }
        }

        public b() {
        }

        @Override // com.meishu.sdk.core.safe.n
        public void a() {
            cancel();
            SdkHandler.getInstance().runOnUiThread(new a());
        }
    }

    public interface c {
    }

    public i(c cVar) {
        this.f32483c = cVar;
        try {
            new Timer().schedule(new a(), 5000L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(boolean z2) {
        if (this.f32484d != null) {
            return;
        }
        this.f32484d = Boolean.valueOf(z2);
        LogUtil.dev("RewardH5", "nativeReadyRes:" + z2);
        if (this.f32484d.booleanValue()) {
            if (this.f32485e == null) {
                LogUtil.dev("RewardH5", "nativeReadyRes2");
                b();
                return;
            } else {
                LogUtil.dev("RewardH5", "nativeReadyRes3");
                c(this.f32485e.booleanValue());
                return;
            }
        }
        if (this.f32485e == null) {
            LogUtil.dev("RewardH5", "nativeReadyRes4");
            b();
            return;
        }
        LogUtil.dev("RewardH5", "nativeReadyRes5");
        if (this.f32485e.booleanValue()) {
            LogUtil.dev("RewardH5", "nativeReadyRes6");
            c(true);
        } else {
            LogUtil.dev("RewardH5", "nativeReadyRes7");
            a();
        }
    }

    public final void c(boolean z2) {
        synchronized (this.f32482b) {
            try {
                if (this.f32483c != null) {
                    LogUtil.dev("RewardH5", "final reward notifySuccess:" + z2);
                    v.c cVar = (v.c) this.f32483c;
                    cVar.getClass();
                    if (z2 && !cVar.f32611a.f32382l) {
                        MeishuRewardH5Activity.setRewardH5Data(cVar.f32612b[0], cVar.f32611a);
                    }
                    SdkHandler.getInstance().runOnUiThread(new f0(cVar));
                    this.f32483c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(boolean z2) {
        com.meishu.sdk.core.webview.h hVar = this.f32486f;
        if (hVar.f32123c != null) {
            return;
        }
        hVar.f32123c = Boolean.valueOf(z2);
        LogUtil.dev("RewardH5", "h5LoadedRes:" + z2);
        if (hVar.f32123c.booleanValue()) {
            synchronized (hVar.f32121a) {
                try {
                    h.a aVar = hVar.f32122b;
                    if (aVar != null) {
                        aVar.a(true);
                        hVar.f32122b = null;
                    }
                } finally {
                }
            }
            return;
        }
        synchronized (hVar.f32121a) {
            try {
                h.a aVar2 = hVar.f32122b;
                if (aVar2 != null) {
                    aVar2.a(false);
                    hVar.f32122b = null;
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2) {
        if (this.f32485e != null) {
            return;
        }
        this.f32485e = Boolean.valueOf(z2);
        if (this.f32485e.booleanValue()) {
            LogUtil.dev("RewardH5", "onH5ReadyRes 2");
            c(true);
        } else if (this.f32484d != null) {
            LogUtil.dev("RewardH5", "onH5ReadyRes 3");
            if (this.f32484d.booleanValue()) {
                LogUtil.dev("RewardH5", "onH5ReadyRes 4");
                c(false);
            } else {
                LogUtil.dev("RewardH5", "onH5ReadyRes 5");
                a();
            }
        }
    }

    public static void a(i iVar) {
        if (iVar.f32485e == null) {
            iVar.f32485e = Boolean.valueOf(Boolean.TRUE.equals(iVar.f32486f.f32123c));
        }
        Boolean bool = Boolean.TRUE;
        if (!bool.equals(iVar.f32485e) && !bool.equals(iVar.f32484d)) {
            iVar.a();
        } else {
            iVar.c(bool.equals(iVar.f32485e));
        }
    }

    public final void b() {
        try {
            if (this.f32481a) {
                return;
            }
            this.f32481a = true;
            new Timer().schedule(new b(), 5000L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a() {
        synchronized (this.f32482b) {
            try {
                if (this.f32483c != null) {
                    LogUtil.dev("RewardH5", "final reward notifyFail");
                    v.c cVar = (v.c) this.f32483c;
                    if (cVar.f32614d != 1) {
                        v.this.a(cVar.f32613c, "video load error", ErrorCodeUtil.AD_LOAD_ERROR);
                    }
                    this.f32483c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
