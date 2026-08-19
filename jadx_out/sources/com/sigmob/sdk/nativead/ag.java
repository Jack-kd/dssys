package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigImage;
import com.sigmob.sdk.base.models.SigVideo;
import com.sigmob.sdk.base.models.WindAdMetaData;
import com.sigmob.sdk.base.models.rtb.ResponseNativeAd;
import com.sigmob.windad.natives.AdAppInfo;
import com.sigmob.windad.natives.NativeADEventListener;
import com.sigmob.windad.natives.WindNativeAdData;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class ag implements WindNativeAdData {

    /* renamed from: a, reason: collision with root package name */
    private final String f38370a;

    /* renamed from: b, reason: collision with root package name */
    private final String f38371b;

    /* renamed from: c, reason: collision with root package name */
    private final String f38372c;

    /* renamed from: d, reason: collision with root package name */
    private final List<SigImage> f38373d;

    /* renamed from: e, reason: collision with root package name */
    private final SigVideo f38374e;

    /* renamed from: f, reason: collision with root package name */
    private int f38375f;

    /* renamed from: g, reason: collision with root package name */
    private final ab f38376g;

    /* renamed from: h, reason: collision with root package name */
    private final AdAppInfo f38377h;

    public ag(BaseAdUnit baseAdUnit) {
        this.f38370a = baseAdUnit.getTitle();
        this.f38371b = baseAdUnit.getDesc();
        this.f38372c = baseAdUnit.getIconUrl();
        this.f38373d = baseAdUnit.getImageUrlList();
        ResponseNativeAd nativeAd = baseAdUnit.getNativeAd();
        if (com.sigmob.sdk.base.utils.v.b(nativeAd)) {
            this.f38375f = nativeAd.type.intValue();
        }
        this.f38377h = baseAdUnit.getAdAppInfo();
        this.f38374e = baseAdUnit.getNativeVideo();
        ab abVar = new ab();
        this.f38376g = abVar;
        abVar.a(baseAdUnit, this);
    }

    public String a() {
        return "sigmob";
    }

    public int b() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return 0;
        }
        return abVar.p();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindImageViews(List<ImageView> list, int i2) {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.a(list, i2);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindMediaView(ViewGroup viewGroup, WindNativeAdData.NativeADMediaListener nativeADMediaListener) {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.b(viewGroup, nativeADMediaListener);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindMediaViewWithoutAppInfo(ViewGroup viewGroup, WindNativeAdData.NativeADMediaListener nativeADMediaListener) {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.a(viewGroup, nativeADMediaListener);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindViewForInteraction(View view, List<View> list, List<View> list2, View view2, NativeADEventListener nativeADEventListener) {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.a(view, list, list2, view2, nativeADEventListener);
    }

    public int c() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return 0;
        }
        return abVar.v();
    }

    public int d() {
        return this.f38375f;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void destroy() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.x();
    }

    public void e() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.w();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public AdAppInfo getAdAppInfo() {
        return this.f38377h;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public Bitmap getAdLogo() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return null;
        }
        return abVar.C();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getAdPatternType() {
        return this.f38375f;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public View getAdView() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return null;
        }
        return abVar.q();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getCTAText() {
        ab abVar = this.f38376g;
        return abVar == null ? "" : abVar.B();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getCurrency() {
        ab abVar = this.f38376g;
        return abVar == null ? "" : abVar.J();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getDesc() {
        return this.f38371b;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getEcpm() {
        ab abVar = this.f38376g;
        return abVar == null ? "" : abVar.I();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getIconUrl() {
        return this.f38372c;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public List<SigImage> getImageList() {
        return this.f38373d;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getInteractionType() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return 0;
        }
        return abVar.A();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public Map<String, String> getSaasOptions() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return null;
        }
        return abVar.M();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getTitle() {
        return this.f38370a;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getVideoCoverImageUrl() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return null;
        }
        return abVar.K();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoCurrentPosition() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return 0;
        }
        return abVar.t();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoDuration() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return 0;
        }
        return abVar.s();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoHeight() {
        SigVideo sigVideo = this.f38374e;
        if (sigVideo == null) {
            return 0;
        }
        return sigVideo.getHeight();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoProgress() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return 0;
        }
        return abVar.u();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoWidth() {
        SigVideo sigVideo = this.f38374e;
        if (sigVideo == null) {
            return 0;
        }
        return sigVideo.getWidth();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public WindAdMetaData getWindAdMetaData() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return null;
        }
        return abVar.L();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void pauseVideo() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.E();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void resumeVideo() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.G();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void setDislikeInteractionCallback(Activity activity, WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.a(dislikeInteractionCallback);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void setVideoMute(boolean z2) {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.b(z2);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void startVideo() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.D();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void stopVideo() {
        ab abVar = this.f38376g;
        if (abVar == null) {
            return;
        }
        abVar.H();
    }
}
