package com.anythink.network.baidu;

import android.content.Context;
import android.view.View;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.FeedPortraitVideoView;
import com.baidu.mobads.sdk.api.IFeedPortraitListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class BaiduATNativePortraitVideoAd extends BaiduATNativeAd {

    /* renamed from: j, reason: collision with root package name */
    private FeedPortraitVideoView f9377j;

    /* renamed from: k, reason: collision with root package name */
    private Context f9378k;

    /* renamed from: l, reason: collision with root package name */
    BaiduNativeManager f9379l;

    /* renamed from: m, reason: collision with root package name */
    RequestParameters f9380m;

    /* renamed from: n, reason: collision with root package name */
    boolean f9381n;

    /* renamed from: o, reason: collision with root package name */
    private final Map<String, Object> f9382o;

    public interface LoadCallbackListener {
        void onFail(String str, String str2);

        void onSuccess(NativeResponse nativeResponse, CustomNativeAd customNativeAd);
    }

    public class a implements BaiduNativeManager.FeedAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ LoadCallbackListener f9383a;

        public a(LoadCallbackListener loadCallbackListener) {
            this.f9383a = loadCallbackListener;
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onLpClosed() {
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onNativeFail(int i2, String str, NativeResponse nativeResponse) {
            this.f9383a.onFail(i2 + "", str);
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onNativeLoad(List<NativeResponse> list) {
            if (list == null || list.size() <= 0) {
                this.f9383a.onFail("", "callback onNativeLoad but no ad");
                return;
            }
            NativeResponse nativeResponse = list.get(0);
            BaiduATNativePortraitVideoAd baiduATNativePortraitVideoAd = BaiduATNativePortraitVideoAd.this;
            baiduATNativePortraitVideoAd.a(baiduATNativePortraitVideoAd.f9378k, nativeResponse, BaiduATNativePortraitVideoAd.this.f9382o);
            this.f9383a.onSuccess(nativeResponse, BaiduATNativePortraitVideoAd.this);
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onNoAd(int i2, String str, NativeResponse nativeResponse) {
            this.f9383a.onFail(i2 + "", str);
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onVideoDownloadFailed() {
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onVideoDownloadSuccess() {
        }
    }

    public class b implements IFeedPortraitListener {
        public b() {
        }

        @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
        public void pauseBtnClick() {
        }

        @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
        public void playCompletion() {
            BaiduATNativePortraitVideoAd.this.notifyAdVideoEnd();
        }

        @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
        public void playError() {
            BaiduATNativePortraitVideoAd.this.notifyAdVideoVideoPlayFail("", "BaiduATNativePortraitVideoAd video play error");
        }

        @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
        public void playPause() {
        }

        @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
        public void playRenderingStart() {
            BaiduATNativePortraitVideoAd.this.notifyAdVideoStart();
        }

        @Override // com.baidu.mobads.sdk.api.IFeedPortraitListener
        public void playResume() {
        }
    }

    public BaiduATNativePortraitVideoAd(Context context, BaiduNativeManager baiduNativeManager, RequestParameters requestParameters, boolean z2, Map<String, Object> map) {
        this.f9378k = context;
        this.f9379l = baiduNativeManager;
        this.f9380m = requestParameters;
        this.f9381n = z2;
        this.f9382o = map;
    }

    @Override // com.anythink.network.baidu.BaiduATNativeAd, com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        super.destroy();
        FeedPortraitVideoView feedPortraitVideoView = this.f9377j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.stop();
            this.f9377j = null;
        }
    }

    @Override // com.anythink.network.baidu.BaiduATNativeAd, com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (this.f9353a == null) {
            return null;
        }
        if (this.f9377j == null) {
            FeedPortraitVideoView feedPortraitVideoView = new FeedPortraitVideoView(this.f9354b);
            this.f9377j = feedPortraitVideoView;
            feedPortraitVideoView.setAdData(this.f9353a);
            Boolean bool = this.f9360h;
            if (bool != null) {
                this.f9377j.setVideoMute(bool.booleanValue());
            } else {
                Boolean bool2 = ATSDKGlobalSetting.isGlobalMute;
                if (bool2 != null) {
                    this.f9377j.setVideoMute(bool2.booleanValue());
                }
            }
            this.f9377j.setFeedPortraitListener(new b());
        }
        return this.f9377j;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public double getVideoProgress() {
        if (this.f9377j != null) {
            return r0.getCurrentPosition() / 1000.0d;
        }
        return 0.0d;
    }

    public void load(LoadCallbackListener loadCallbackListener) {
        this.f9379l.loadPortraitVideoAd(this.f9380m, new a(loadCallbackListener));
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void pauseVideo() {
        super.pauseVideo();
        FeedPortraitVideoView feedPortraitVideoView = this.f9377j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.pause();
        }
    }

    @Override // com.anythink.network.baidu.BaiduATNativeAd, com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        FeedPortraitVideoView feedPortraitVideoView;
        if (this.f9377j != null) {
            List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
            if (clickViewList == null) {
                clickViewList = new ArrayList<>();
            }
            if (!clickViewList.contains(this.f9377j)) {
                clickViewList.add(this.f9377j);
            }
            aTNativePrepareInfo.setClickViewList(clickViewList);
            super.prepare(this.f9377j, aTNativePrepareInfo);
        } else {
            super.prepare(view, aTNativePrepareInfo);
        }
        if (!this.f9381n || (feedPortraitVideoView = this.f9377j) == null) {
            return;
        }
        feedPortraitVideoView.play();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void resumeVideo() {
        super.resumeVideo();
        FeedPortraitVideoView feedPortraitVideoView = this.f9377j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.resume();
        }
    }

    @Override // com.anythink.network.baidu.BaiduATNativeAd, com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void setVideoMute(boolean z2) {
        super.setVideoMute(z2);
        FeedPortraitVideoView feedPortraitVideoView = this.f9377j;
        if (feedPortraitVideoView != null) {
            feedPortraitVideoView.setVideoMute(z2);
        }
    }
}
