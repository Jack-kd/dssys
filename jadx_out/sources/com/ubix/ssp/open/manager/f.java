package com.ubix.ssp.open.manager;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.sigmob.sdk.mraid.C1315g;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.g.j;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.UBiXAdLossInfo;
import com.ubix.ssp.open.video.UBiXRewardInfo;
import com.ubix.ssp.open.video.UBiXRewardVideoAdListener;
import com.ubix.ssp.open.video.UBiXRewardVideoExtra;
import com.ubix.ssp.open.video.UBiXRewardVideoManager;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.HashMap;
import java.util.UUID;

/* loaded from: classes5.dex */
public class f implements UBiXRewardVideoManager, Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48543a = "f";

    /* renamed from: b, reason: collision with root package name */
    private String f48544b;

    /* renamed from: c, reason: collision with root package name */
    private com.ubix.ssp.ad.k.b f48545c;

    /* renamed from: d, reason: collision with root package name */
    private Activity f48546d;

    /* renamed from: e, reason: collision with root package name */
    private int f48547e = 0;

    public class a implements j {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXRewardVideoAdListener f48548a;

        /* renamed from: com.ubix.ssp.open.manager.f$a$a, reason: collision with other inner class name */
        public class C0852a implements UBiXRewardInfo {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f48550a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f48551b;

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f48552c;

            /* renamed from: d, reason: collision with root package name */
            final /* synthetic */ AdError f48553d;

            public C0852a(String str, int i2, String str2, AdError adError) {
                this.f48550a = str;
                this.f48551b = i2;
                this.f48552c = str2;
                this.f48553d = adError;
            }

            @Override // com.ubix.ssp.open.video.UBiXRewardInfo
            public AdError getError() {
                return this.f48553d;
            }

            @Override // com.ubix.ssp.open.video.UBiXRewardInfo
            public String getExtra() {
                return this.f48552c;
            }

            @Override // com.ubix.ssp.open.video.UBiXRewardInfo
            public int getRewardAmount() {
                return this.f48551b;
            }

            @Override // com.ubix.ssp.open.video.UBiXRewardInfo
            public String getRewardName() {
                return this.f48550a;
            }
        }

        public a(UBiXRewardVideoAdListener uBiXRewardVideoAdListener) {
            this.f48548a = uBiXRewardVideoAdListener;
        }

        @Override // com.ubix.ssp.ad.g.j
        public void a(boolean z2, String str, int i2, String str2, AdError adError) {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onVideoRewardVerify in");
                this.f48548a.onVideoRewardVerify(z2, new C0852a(str, i2, str2, adError));
            }
            u.e(f.f48543a, "onVideoRewardVerify out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onAdClosed() {
            if (f.this.f48546d != null) {
                f.this.f48546d.finish();
            }
            if (this.f48548a != null) {
                u.e(f.f48543a, "onAdClosed in");
                this.f48548a.onAdClosed();
            }
            u.e(f.f48543a, "onAdClosed out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onAdExposed() {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onAdExposed in");
                this.f48548a.onAdExposed();
            }
            u.e(f.f48543a, "onAdExposed out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onAdLoadSucceed() {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onAdLoadSucceed in");
                this.f48548a.onAdLoadSucceed();
            }
            u.e(f.f48543a, "onAdLoadSucceed out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onError(AdError adError) {
            if (this.f48548a != null) {
                u.c(f.f48543a, "onError in");
                this.f48548a.onError(adError);
            }
            u.c(f.f48543a, "onError out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onVideoCached() {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onVideoCached in");
                this.f48548a.onVideoCached();
            }
            u.e(f.f48543a, "onVideoCached out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onVideoClicked() {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onVideoClicked in");
                this.f48548a.onVideoClicked();
            }
            u.e(f.f48543a, "onVideoClicked out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onVideoPlayCompleted() {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onVideoPlayCompleted in");
                this.f48548a.onVideoPlayCompleted();
            }
            u.e(f.f48543a, "onVideoPlayCompleted out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onVideoPlayStarted() {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onVideoPlayStarted in");
                this.f48548a.onVideoPlayStarted();
            }
            u.e(f.f48543a, "onVideoPlayStarted out");
        }

        @Override // com.ubix.ssp.ad.g.j
        public void onVideoRewarded() {
            if (this.f48548a != null) {
                u.e(f.f48543a, "onVideoRewarded in");
                this.f48548a.onVideoRewarded();
            }
            u.e(f.f48543a, "onVideoRewarded out");
        }
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void destroy() {
        com.ubix.ssp.ad.k.b bVar = this.f48545c;
        if (bVar != null) {
            bVar.h();
            u.e(f48543a, C1315g.f37905b);
        }
        this.f48546d = null;
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public String getBiddingToken() {
        com.ubix.ssp.ad.k.b bVar = this.f48545c;
        if (bVar == null) {
            u.e(f48543a, "getBiddingToken:null");
            return null;
        }
        String strB = bVar.B();
        u.f("getBiddingToken:" + strB);
        return strB;
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public ParamsReview getParamsReview() {
        if (this.f48545c == null) {
            u.e(f48543a, "getParamsReview: return null");
            return null;
        }
        u.e(f48543a, "getParamsReview:" + this.f48545c.C());
        return this.f48545c.C();
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public long getPrice() {
        if (this.f48545c == null) {
            u.e(f48543a, "getPrice: return 0");
            return 0L;
        }
        u.e(f48543a, "getPrice:" + this.f48545c.D());
        return this.f48545c.D();
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public String getTransId() {
        com.ubix.ssp.ad.k.b bVar = this.f48545c;
        if (bVar != null) {
            return bVar.F();
        }
        return null;
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public boolean isValid() {
        if (this.f48545c == null) {
            u.e(f48543a, "isValid: return false");
            return false;
        }
        u.e(f48543a, "isValid:" + this.f48545c.M());
        return this.f48545c.M();
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public boolean isVideoAd() {
        if (this.f48545c == null) {
            u.e(f48543a, "isVideoAd: return false");
            return false;
        }
        u.e(f48543a, "isVideoAd:" + this.f48545c.N());
        return this.f48545c.N();
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void loadAd() {
        com.ubix.ssp.ad.k.b bVar = this.f48545c;
        if (bVar != null) {
            bVar.O();
            u.e(f48543a, "loadAd");
        }
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void loadBiddingAd(String str) {
        if (this.f48545c != null) {
            u.e(f48543a, "loadBiddingAd adm:" + str);
            this.f48545c.h(str);
        }
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void loadRewardVideoAd(Context context, String str, UBiXRewardVideoAdListener uBiXRewardVideoAdListener) {
        loadRewardVideoAd(context, str, null, uBiXRewardVideoAdListener);
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void lossNotice(UBiXAdLossInfo uBiXAdLossInfo) {
        String str;
        String str2;
        if (uBiXAdLossInfo == null) {
            str = f48543a;
            str2 = "lossInfo is empty";
        } else {
            com.ubix.ssp.ad.k.b bVar = this.f48545c;
            if (bVar == null) {
                return;
            }
            bVar.b(uBiXAdLossInfo.getInfo());
            str = f48543a;
            str2 = "lossNotice";
        }
        u.e(str, str2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity.getComponentName().getClassName().equals("com.ubix.ssp.open.comm.UBiXVideoActivity") && this.f48544b.equals(activity.getIntent().getStringExtra("uniqueId"))) {
            this.f48546d = activity;
            try {
                u.e("onActivityCreated " + activity);
                this.f48545c.a(this.f48546d);
                if (this.f48545c.G().getParent() != null) {
                    ((ViewGroup) this.f48545c.G().getParent()).removeView(this.f48545c.G());
                }
                LinearLayout linearLayout = new LinearLayout(activity);
                activity.setContentView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
                int i2 = this.f48547e;
                if (i2 == 0) {
                    this.f48546d.setRequestedOrientation(1);
                } else if (i2 == 1) {
                    this.f48546d.setRequestedOrientation(0);
                } else if (i2 == 2) {
                    this.f48546d.setRequestedOrientation(9);
                } else if (i2 == 3) {
                    this.f48546d.setRequestedOrientation(8);
                }
                linearLayout.addView(this.f48545c.G());
                try {
                    Window window = activity.getWindow();
                    window.addFlags(Integer.MIN_VALUE);
                    window.clearFlags(67108864);
                    window.setStatusBarColor(0);
                    window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                Activity activity2 = this.f48546d;
                if (activity2 != null) {
                    activity2.finish();
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        try {
            if (activity == this.f48546d) {
                com.ubix.ssp.ad.k.b bVar = this.f48545c;
                if (bVar != null) {
                    bVar.h();
                    u.e(f48543a, "onActivityDestroyed");
                }
                this.f48546d.getApplication().unregisterActivityLifecycleCallbacks(this);
                this.f48546d = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void setExtraInfo(HashMap<String, String> map) {
        com.ubix.ssp.ad.k.b bVar = this.f48545c;
        if (bVar != null) {
            bVar.a(map);
            u.e(f48543a, "setExtraInfo");
        }
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void showRewardVideo(Activity activity) {
        com.ubix.ssp.ad.k.b bVar = this.f48545c;
        if (bVar != null) {
            bVar.x();
            u.e(f48543a, "showRewardVideo:ShowStart");
        }
        if (activity != null) {
            this.f48547e = activity.getWindowManager().getDefaultDisplay().getRotation();
            activity.getApplication().registerActivityLifecycleCallbacks(this);
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(activity.getPackageName(), "com.ubix.ssp.open.comm.UBiXVideoActivity"));
            intent.putExtra("uniqueId", this.f48544b);
            activity.startActivity(intent);
            return;
        }
        AdError adErrorB = com.ubix.ssp.ad.e.a0.a0.a.b(4, "Activity/Context为空");
        this.f48545c.e(adErrorB);
        u.c(f48543a, "showRewardVideo:ShowError:ErrorCode:" + adErrorB.getErrorCode() + "   ErrorMessage:" + adErrorB.getErrorMessage());
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void winNotice(long j2) {
        com.ubix.ssp.ad.k.b bVar = this.f48545c;
        if (bVar != null) {
            bVar.a(j2);
            u.e(f48543a, "winNotice");
        }
    }

    @Override // com.ubix.ssp.open.video.UBiXRewardVideoManager
    public void loadRewardVideoAd(Context context, String str, UBiXRewardVideoExtra uBiXRewardVideoExtra, UBiXRewardVideoAdListener uBiXRewardVideoAdListener) {
        if (u.a()) {
            String str2 = f48543a;
            StringBuilder sb = new StringBuilder();
            sb.append("slot id:");
            sb.append(str);
            sb.append("   listener is null:");
            sb.append(uBiXRewardVideoAdListener == null);
            sb.append("   context is null:");
            sb.append(context == null);
            u.e(str2, sb.toString());
            if (context != null) {
                u.e(str2, "context is activity:" + (context instanceof Activity));
            }
        }
        com.ubix.ssp.ad.k.b bVar = new com.ubix.ssp.ad.k.b(context, str);
        this.f48545c = bVar;
        bVar.a(uBiXRewardVideoExtra);
        this.f48545c.a((j) new a(uBiXRewardVideoAdListener));
        this.f48544b = UUID.randomUUID().toString();
    }
}
