package com.octopus.ad;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.e.g;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.video.VideoStateListener;
import com.octopus.ad.listener.OnCpaListener;
import com.octopus.ad.model.ShakeValue;
import com.octopus.ad.utils.ThreadUtils;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes4.dex */
public final class SplashAd implements AdLifeControl, IBidding {

    /* renamed from: a, reason: collision with root package name */
    private final g f33223a;

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public SplashAd(Context context, String str, SplashAdListener splashAdListener) {
        this(context, str, null, splashAdListener, "");
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        onDestroyLifeCycle();
        g gVar = this.f33223a;
        if (gVar != null) {
            gVar.cancel();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        cancel();
    }

    public String getAdSlotId() {
        return this.f33223a.getAdSlotId();
    }

    public Map<String, Object> getMediaExtraInfo() {
        g gVar = this.f33223a;
        return gVar != null ? gVar.getMediaExtraInfo() : Collections.EMPTY_MAP;
    }

    public int getPrice() {
        g gVar = this.f33223a;
        if (gVar == null) {
            return 0;
        }
        return gVar.getPrice();
    }

    public String getRequestId() {
        return this.f33223a.getRequestId();
    }

    public ShakeValue getShakeValue() {
        g gVar = this.f33223a;
        if (gVar != null) {
            return gVar.getShakeValue();
        }
        return null;
    }

    public String getTagId() {
        g gVar = this.f33223a;
        if (gVar == null) {
            return null;
        }
        return gVar.getTagId();
    }

    public boolean isLoaded() {
        return this.f33223a.f();
    }

    public boolean isLoading() {
        return this.f33223a.j();
    }

    public boolean isValid() {
        return isLoaded() && this.f33223a.g();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
        this.f33223a.onCreateLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        g gVar = this.f33223a;
        if (gVar != null) {
            gVar.onDestroyLifeCycle();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
        this.f33223a.onPauseLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
        this.f33223a.onRestartLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
        this.f33223a.onResumeLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
        this.f33223a.onStartLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
        this.f33223a.onStopLifeCycle();
    }

    public void openAdInNativeBrowser(boolean z2) {
        this.f33223a.c(z2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i2, String str, String str2) {
        g gVar = this.f33223a;
        if (gVar == null) {
            return;
        }
        gVar.sendLossNotice(i2, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i2) {
        g gVar = this.f33223a;
        if (gVar == null) {
            return;
        }
        gVar.sendWinNotice(i2);
    }

    public void setAdSlotId(String str) {
        this.f33223a.setAdSlotId(str);
    }

    public void setChannel(String str) {
        this.f33223a.setChannel(str);
    }

    public void setCountDownTime(int i2) {
        this.f33223a.setCountDownTime(i2);
    }

    public void setOnCpaListener(OnCpaListener onCpaListener) {
        g gVar = this.f33223a;
        if (gVar == null) {
            return;
        }
        gVar.setOnCpaListener(onCpaListener);
    }

    public void setOnSensorListener(OnSensorListener onSensorListener) {
        g gVar = this.f33223a;
        if (gVar == null) {
            return;
        }
        gVar.setOnSensorListener(onSensorListener);
    }

    public void setRequestId(String str) {
        this.f33223a.setRequestId(str);
    }

    public void setVideoStateListener(VideoStateListener videoStateListener) {
        g gVar = this.f33223a;
        if (gVar == null) {
            return;
        }
        gVar.setVideoStateListener(videoStateListener);
    }

    public void showAd() {
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.SplashAd.1
            @Override // java.lang.Runnable
            public void run() {
                if (SplashAd.this.f33223a != null) {
                    SplashAd.this.f33223a.a((ViewGroup) null);
                }
            }
        });
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public SplashAd(Context context, String str, SplashAdListener splashAdListener, String str2) {
        this(context, str, null, splashAdListener, str2);
    }

    public void showAd(final ViewGroup viewGroup) {
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.SplashAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (SplashAd.this.f33223a == null || viewGroup == null) {
                    return;
                }
                SplashAd.this.f33223a.a(viewGroup);
            }
        });
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public SplashAd(Context context, String str, ViewGroup viewGroup, SplashAdListener splashAdListener) {
        this(context, str, viewGroup, splashAdListener, "");
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public SplashAd(Context context, String str, ViewGroup viewGroup, SplashAdListener splashAdListener, String str2) {
        g gVar = new g(context == null ? q.a().l() : context, viewGroup, str2);
        this.f33223a = gVar;
        gVar.setSplashAdListener(splashAdListener);
        gVar.setAdSlotId(str);
        gVar.a(new AdRequest.Builder().build().a());
    }
}
