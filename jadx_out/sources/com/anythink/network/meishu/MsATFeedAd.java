package com.anythink.network.meishu;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class MsATFeedAd extends CustomNativeAd {

    /* renamed from: b, reason: collision with root package name */
    Context f9964b;

    /* renamed from: c, reason: collision with root package name */
    RecyclerAdData f9965c;

    /* renamed from: e, reason: collision with root package name */
    FrameLayout f9967e;

    /* renamed from: a, reason: collision with root package name */
    private final String f9963a = MsATFeedAd.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    long f9966d = 0;

    public class a implements RecylcerAdInteractionListener {
        public a() {
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
            String unused = MsATFeedAd.this.f9963a;
            MsATFeedAd.this.notifyAdClicked();
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
            String unused = MsATFeedAd.this.f9963a;
            MsATFeedAd.this.notifyAdDislikeClick();
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            String unused = MsATFeedAd.this.f9963a;
            MsATFeedAd.this.notifyAdImpression();
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener
        public void onAdRenderFailed() {
            String unused = MsATFeedAd.this.f9963a;
        }
    }

    public class b implements RecyclerAdMediaListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onProgressUpdate(long j2, long j3) {
            try {
                MsATFeedAd.this.notifyAdVideoPlayProgress((int) (j2 / j3));
            } catch (Exception unused) {
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoCompleted() {
            MsATFeedAd.this.notifyAdVideoEnd();
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoError() {
            String unused = MsATFeedAd.this.f9963a;
            MsATFeedAd.this.notifyAdVideoVideoPlayFail("", "ms onVideoError");
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoLoaded() {
            String unused = MsATFeedAd.this.f9963a;
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoPause() {
            String unused = MsATFeedAd.this.f9963a;
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoResume() {
            String unused = MsATFeedAd.this.f9963a;
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoStart() {
            String unused = MsATFeedAd.this.f9963a;
            MsATFeedAd.this.notifyAdVideoStart();
        }
    }

    public MsATFeedAd(Context context, RecyclerAdData recyclerAdData) {
        this.f9964b = context.getApplicationContext();
        this.f9965c = recyclerAdData;
        b();
    }

    private void b() {
        try {
            setTitle(this.f9965c.getTitle());
            setIconImageUrl(this.f9965c.getIconUrl());
            setAdChoiceIconUrl(this.f9965c.getFromLogo());
            setNativeInteractionType(this.f9965c.getInteractionType() == 1 ? 1 : this.f9965c.getInteractionType() == 0 ? 2 : 0);
            this.f9965c.getAdPatternType();
            int adPatternType = this.f9965c.getAdPatternType();
            if (adPatternType == 2) {
                this.mAdSourceType = "1";
            } else if (adPatternType == 1 || adPatternType == 12 || adPatternType == 11 || adPatternType == 13) {
                this.mAdSourceType = "2";
                ArrayList arrayList = new ArrayList();
                String[] imgUrls = this.f9965c.getImgUrls();
                if (imgUrls != null && imgUrls.length > 0) {
                    for (int i2 = 0; i2 < imgUrls.length; i2++) {
                        String str = imgUrls[i2];
                        if (!TextUtils.isEmpty(str)) {
                            arrayList.add(str);
                            if (i2 == 0) {
                                setMainImageUrl(str);
                            }
                        }
                    }
                }
                setImageUrlList(arrayList);
            }
            setCallToActionText(this.f9965c.getActionText());
            setVideoDuration(this.f9965c.getDuration());
            setVideoUrl(this.f9965c.getVideoUrl());
            setVideoWidth(this.f9965c.getWidth());
            setVideoHeight(this.f9965c.getHeight());
            try {
                this.f9966d = Long.parseLong(this.f9965c.getAppSize());
            } catch (Exception unused) {
            }
            if (this.f9965c.getInteractionType() == 1) {
                setAdAppInfo(new MsATDownloadAppInfo(this.f9965c));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        a(view);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        RecyclerAdData recyclerAdData = this.f9965c;
        if (recyclerAdData != null) {
            recyclerAdData.destroy();
            this.f9965c = null;
        }
        this.f9964b = null;
        this.f9967e = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (this.f9965c == null || !a()) {
            return null;
        }
        if (this.f9967e == null) {
            this.f9967e = new FrameLayout(this.f9964b);
        }
        return this.f9967e;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
        if (clickViewList == null) {
            clickViewList = new ArrayList<>();
            clickViewList.add(view);
        }
        RecyclerAdData recyclerAdData = this.f9965c;
        if (recyclerAdData != null) {
            recyclerAdData.bindAdToView(this.f9964b, (ViewGroup) view, clickViewList, new a());
            if (a()) {
                if (this.f9967e == null) {
                    this.f9967e = new FrameLayout(this.f9964b);
                }
                this.f9965c.bindMediaView(this.f9967e, new b());
            }
        }
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        if (!(view instanceof ViewGroup)) {
            view.setOnClickListener(null);
            view.setClickable(false);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(viewGroup.getChildAt(i2));
            }
        }
    }

    private boolean a() {
        RecyclerAdData recyclerAdData = this.f9965c;
        return recyclerAdData != null && recyclerAdData.getAdPatternType() == 2;
    }
}
