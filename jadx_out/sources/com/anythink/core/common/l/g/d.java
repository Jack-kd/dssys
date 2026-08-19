package com.anythink.core.common.l.g;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.core.api.ATAdAppInfo;
import com.anythink.core.api.ATCompViewListener;
import com.anythink.core.api.ATCustomVideo;
import com.anythink.core.api.ATNativeAdInfo;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.IATAdvertiserInfoOperate;
import com.anythink.core.common.h.n;
import com.anythink.core.common.inner.ui.thirdparty.ThirdPartyMediaView;
import com.anythink.core.common.k;
import com.anythink.core.common.v.p;
import com.anythink.core.e.m;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class d extends BaseAd implements a, Serializable {

    /* renamed from: a, reason: collision with root package name */
    private int f5479a;

    /* renamed from: b, reason: collision with root package name */
    private int f5480b;

    /* renamed from: c, reason: collision with root package name */
    private int f5481c;

    /* renamed from: d, reason: collision with root package name */
    private int f5482d;

    /* renamed from: e, reason: collision with root package name */
    private int f5483e;

    /* renamed from: f, reason: collision with root package name */
    private BaseAd f5484f;

    /* renamed from: g, reason: collision with root package name */
    private Map<String, Object> f5485g;

    /* renamed from: h, reason: collision with root package name */
    private View f5486h;

    /* renamed from: i, reason: collision with root package name */
    private int f5487i;

    /* renamed from: j, reason: collision with root package name */
    private int f5488j;

    /* renamed from: k, reason: collision with root package name */
    private int f5489k;

    /* renamed from: l, reason: collision with root package name */
    private volatile ThirdPartyMediaView f5490l;

    /* renamed from: m, reason: collision with root package name */
    private final Object f5491m = new Object();

    /* renamed from: n, reason: collision with root package name */
    private int f5492n;

    public d(BaseAd baseAd, Map<String, Object> map) {
        this.f5479a = 1;
        this.f5480b = 5;
        this.f5481c = 1;
        this.f5483e = 5;
        this.f5492n = 1;
        this.f5484f = baseAd;
        this.f5485g = map;
        this.f5479a = p.a(map, "orientation", 1);
        this.f5480b = p.a(map, "countdown", 5);
        this.f5481c = p.a(map, "allows_skip", 1);
        this.f5492n = p.a(map, k.aI, 1);
        this.f5482d = ((Integer) p.a(this.f5485g, k.aK, 3)).intValue();
        int iA = p.a(map, "s_c_t", 0);
        if (iA >= 0) {
            this.f5483e = iA;
        }
        this.f5489k = p.a(map, "c_b_i_r", 0);
        this.f5487i = 1;
        try {
            Object obj = map.get("render_type");
            if (obj != null) {
                this.f5487i = Integer.parseInt(obj.toString());
            }
            Object obj2 = map.get("template_type");
            if (obj != null) {
                this.f5488j = Integer.parseInt(obj2.toString());
            }
        } catch (Throwable unused) {
        }
    }

    private void a(Map<String, Object> map) {
        this.f5479a = p.a(map, "orientation", 1);
        this.f5480b = p.a(map, "countdown", 5);
        this.f5481c = p.a(map, "allows_skip", 1);
        this.f5492n = p.a(map, k.aI, 1);
        this.f5482d = ((Integer) p.a(this.f5485g, k.aK, 3)).intValue();
        int iA = p.a(map, "s_c_t", 0);
        if (iA >= 0) {
            this.f5483e = iA;
        }
        this.f5489k = p.a(map, "c_b_i_r", 0);
        this.f5487i = 1;
        try {
            Object obj = map.get("render_type");
            if (obj != null) {
                this.f5487i = Integer.parseInt(obj.toString());
            }
            Object obj2 = map.get("template_type");
            if (obj != null) {
                this.f5488j = Integer.parseInt(obj2.toString());
            }
        } catch (Throwable unused) {
        }
    }

    private static void t() {
    }

    private boolean u() {
        return (d() == 0 || isNativeExpress()) ? false : true;
    }

    @Override // com.anythink.core.common.l.g.a
    public final long b() {
        return this.f5480b;
    }

    @Override // com.anythink.core.common.l.g.a
    public final int c() {
        int i2 = this.f5481c;
        return (i2 != 1 && i2 == 0) ? 1 : 0;
    }

    @Override // com.anythink.core.api.BaseAd
    public final void clear(View view) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.clear(view);
        }
    }

    @Override // com.anythink.core.common.l.g.a
    public final int d() {
        int i2 = this.f5482d;
        if (i2 != 1) {
            return i2 != 2 ? 2 : 1;
        }
        return 0;
    }

    @Override // com.anythink.core.api.BaseAd
    public final void destroy() {
        this.f5484f.destroy();
    }

    @Override // com.anythink.core.common.l.g.a
    public final int e() {
        return this.f5489k;
    }

    @Override // com.anythink.core.common.l.g.a
    public final int f() {
        return this.f5483e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.core.common.l.g.a
    public final int g() {
        Object obj;
        BaseAd baseAd = this.f5484f;
        int iEquals = (baseAd == null || baseAd.getDetail() == null || this.f5484f.getDetail().Z() != 8 || (obj = this.f5485g.get("video_muted")) == null) ? -1 : TextUtils.equals(obj.toString(), "0");
        return iEquals == -1 ? p.a(this.f5485g, "video_muted", 0) : iEquals;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final ATAdAppInfo getAdAppInfo() {
        return this.f5484f.getAdAppInfo();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getAdChoiceIconUrl() {
        return this.f5484f.getAdChoiceIconUrl();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getAdFrom() {
        return this.f5484f.getAdFrom();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final View getAdIconView() {
        BaseAd baseAd;
        if (this.f5486h == null && (baseAd = this.f5484f) != null) {
            this.f5486h = baseAd.getAdIconView();
        }
        return this.f5486h;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final Bitmap getAdLogo() {
        return this.f5484f.getAdLogo();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final View getAdLogoView() {
        return this.f5484f.getAdLogoView();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final View getAdMediaView(Object... objArr) {
        if (d() == 0 || isNativeExpress()) {
            BaseAd baseAd = this.f5484f;
            if (baseAd != null) {
                return baseAd.getAdMediaView(objArr);
            }
            return null;
        }
        if (this.f5490l == null) {
            synchronized (this.f5491m) {
                if (this.f5490l == null) {
                    try {
                        BaseAd baseAd2 = this.f5484f;
                        View adMediaView = baseAd2 != null ? baseAd2.getAdMediaView(objArr) : null;
                        if (adMediaView != null) {
                            if (adMediaView.getParent() instanceof ViewGroup) {
                                ((ViewGroup) adMediaView.getParent()).removeView(adMediaView);
                            }
                            this.f5490l = new ThirdPartyMediaView(adMediaView.getContext());
                            this.f5490l.setInterceptTouchEvent(true);
                            this.f5490l.addView(adMediaView);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return this.f5490l;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getAdType() {
        return this.f5484f.getAdType();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final IATAdvertiserInfoOperate getAdvertiserInfoOperate() {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            return baseAd.getAdvertiserInfoOperate();
        }
        return null;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getAdvertiserName() {
        return this.f5484f.getAdvertiserName();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getAppCommentNum() {
        return this.f5484f.getAppCommentNum();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final double getAppPrice() {
        return this.f5484f.getAppPrice();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final View getCallToActionButton() {
        return this.f5484f.getCallToActionButton();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getCallToActionText() {
        return this.f5484f.getCallToActionText();
    }

    @Override // com.anythink.core.api.BaseAd
    public final ViewGroup getCustomAdContainer() {
        return this.f5484f.getCustomAdContainer();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getDescriptionText() {
        return this.f5484f.getDescriptionText();
    }

    @Override // com.anythink.core.api.BaseAd
    public final n getDetail() {
        return this.f5484f.getDetail();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getDomain() {
        BaseAd baseAd = this.f5484f;
        return baseAd != null ? baseAd.getDomain() : "";
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getDownloadProgress() {
        return this.f5484f.getDownloadProgress();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getDownloadStatus() {
        return this.f5484f.getDownloadStatus();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getIconImageUrl() {
        return this.f5484f.getIconImageUrl();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final List<String> getImageUrlList() {
        return this.f5484f.getImageUrlList();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getMainImageHeight() {
        return this.f5484f.getMainImageHeight();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getMainImageUrl() {
        return this.f5484f.getMainImageUrl();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getMainImageWidth() {
        return this.f5484f.getMainImageWidth();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getNativeAdInteractionType() {
        return this.f5484f.getNativeAdInteractionType();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final ATCustomVideo getNativeCustomVideo() {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            return baseAd.getNativeCustomVideo();
        }
        return null;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getNativeExpressHeight() {
        return this.f5484f.getNativeExpressHeight();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getNativeExpressWidth() {
        return this.f5484f.getNativeExpressWidth();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getNativeType() {
        return this.f5484f.getNativeType();
    }

    @Override // com.anythink.core.api.BaseAd, com.anythink.core.api.IATThirdPartyMaterial
    public final Map<String, Object> getNetworkInfoMap() {
        return this.f5484f.getNetworkInfoMap();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final View getRoateView(Map<String, Object> map, ATCompViewListener aTCompViewListener) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            return baseAd.getRoateView(map, aTCompViewListener);
        }
        return null;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final View getShakeView(int i2, int i3, ATShakeViewListener aTShakeViewListener) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            return baseAd.getShakeView(i2, i3, aTShakeViewListener);
        }
        return null;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final View getSlideView(int i2, int i3, int i4, ATShakeViewListener aTShakeViewListener) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            return baseAd.getSlideView(i2, i3, i4, aTShakeViewListener);
        }
        return null;
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final Double getStarRating() {
        return this.f5484f.getStarRating();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getTitle() {
        return this.f5484f.getTitle();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final double getVideoDuration() {
        return this.f5484f.getVideoDuration();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getVideoHeight() {
        return this.f5484f.getVideoHeight();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final double getVideoProgress() {
        return this.f5484f.getVideoProgress();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getVideoUrl() {
        return this.f5484f.getVideoUrl();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final int getVideoWidth() {
        return this.f5484f.getVideoWidth();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final String getWarning() {
        BaseAd baseAd = this.f5484f;
        return baseAd != null ? baseAd.getWarning() : "";
    }

    @Override // com.anythink.core.common.l.g.a
    public final int h() {
        Map<String, Object> map = this.f5485g;
        if (map == null || !map.containsKey(m.a.aq)) {
            return 1;
        }
        Object obj = this.f5485g.get(m.a.aq);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 1;
    }

    @Override // com.anythink.core.common.l.g.a
    public final int[] i() {
        int[] iArr = {1, 2, 3, 4, 5};
        Map<String, Object> map = this.f5485g;
        if (map != null && map.containsKey(m.a.ar)) {
            Object obj = this.f5485g.get(m.a.ar);
            if (obj instanceof int[]) {
                return (int[]) obj;
            }
        }
        return iArr;
    }

    @Override // com.anythink.core.api.BaseAd
    public final boolean isNativeExpress() {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            return baseAd.isNativeExpress();
        }
        return false;
    }

    @Override // com.anythink.core.common.l.g.a
    public final int j() {
        return ((Integer) p.a(this.f5485g, k.aN, 0)).intValue();
    }

    @Override // com.anythink.core.common.l.g.a
    public final int k() {
        return ((Integer) p.a(this.f5485g, k.aL, 1)).intValue();
    }

    @Override // com.anythink.core.common.l.g.a
    public final int l() {
        return ((Integer) p.a(this.f5485g, k.aO, 1)).intValue();
    }

    @Override // com.anythink.core.common.l.g.a
    public final int m() {
        return ((Integer) p.a(this.f5485g, k.aG, 1)).intValue();
    }

    @Override // com.anythink.core.common.l.g.a
    public final int n() {
        return ((Integer) p.a(this.f5485g, k.aK, 3)).intValue();
    }

    @Override // com.anythink.core.common.l.g.a
    public final int o() {
        return ((Integer) p.a(this.f5485g, k.aH, 2)).intValue();
    }

    @Override // com.anythink.core.common.l.g.a
    public final String p() {
        return (String) p.a(this.f5485g, "size", "");
    }

    @Override // com.anythink.core.api.BaseAd
    public final void pauseVideo() {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.pauseVideo();
        }
    }

    @Override // com.anythink.core.common.l.g.a
    public final int q() {
        if (this.f5487i == 1) {
            return 3;
        }
        return this.f5488j;
    }

    public final boolean r() {
        return j() == 0;
    }

    @Override // com.anythink.core.api.BaseAd
    public final void registerListener(View view, List<View> list, FrameLayout.LayoutParams layoutParams) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.registerListener(view, list, layoutParams);
        }
    }

    @Override // com.anythink.core.api.BaseAd
    public final void resumeVideo() {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.resumeVideo();
        }
    }

    public final boolean s() {
        return this.f5492n == 2;
    }

    @Override // com.anythink.core.api.BaseAd
    public final void setDevParams(Map<String, Object> map) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.setDevParams(map);
        }
    }

    @Override // com.anythink.core.api.BaseAd
    public final void setNativeEventListener(com.anythink.core.common.d.n nVar) {
        this.f5484f.setNativeEventListener(nVar);
    }

    @Override // com.anythink.core.api.BaseAd
    public final void setNetworkInfoMap(Map<String, Object> map) {
        this.f5484f.setNetworkInfoMap(map);
    }

    @Override // com.anythink.core.api.BaseAd
    public final void setTrackingInfo(n nVar) {
        this.f5484f.setTrackingInfo(nVar);
    }

    @Override // com.anythink.core.api.BaseAd
    public final void setVideoMute(boolean z2) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.setVideoMute(z2);
        }
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final boolean supportSetPermissionClickViewList() {
        BaseAd baseAd = this.f5484f;
        return baseAd != null && baseAd.supportSetPermissionClickViewList();
    }

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public final boolean supportSetPrivacyClickViewList() {
        BaseAd baseAd = this.f5484f;
        return baseAd != null && baseAd.supportSetPrivacyClickViewList();
    }

    @Override // com.anythink.core.api.BaseAd
    public final void registerListener(View view, List<View> list, FrameLayout.LayoutParams layoutParams, com.anythink.core.basead.b.b bVar) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.registerListener(view, list, layoutParams, bVar);
        }
    }

    @Override // com.anythink.core.api.BaseAd
    public final void registerListener(View view, ATNativeAdInfo.AdPrepareInfo adPrepareInfo) {
        BaseAd baseAd = this.f5484f;
        if (baseAd != null) {
            baseAd.registerListener(view, adPrepareInfo);
        }
    }

    @Override // com.anythink.core.common.l.g.a
    public final int a() {
        return this.f5479a;
    }

    private boolean a(Object... objArr) {
        return getAdMediaView(objArr) == null && TextUtils.isEmpty(getMainImageUrl());
    }
}
