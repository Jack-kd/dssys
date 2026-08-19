package com.byazt.rt;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.hde.j;
import com.byazt.qjq.e;
import com.byazt.qjq.q;
import com.byazt.qjq.s;
import com.byazt.qt.eb;
import com.byazt.qt.jl;
import com.byazt.sdu.a;
import com.byazt.voc.w;
import com.byazt.zg.ec;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.gromore.R;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1531, 30})
/* loaded from: classes3.dex */
public abstract class jx extends j implements Comparable<jx> {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.gpb.hp f25333a;
    public int as;
    public int bu;

    /* renamed from: c, reason: collision with root package name */
    public String f25335c;
    public int cx;

    /* renamed from: d, reason: collision with root package name */
    public String f25336d;
    public String db;
    public String df;
    public int di;
    public String dy;

    /* renamed from: e, reason: collision with root package name */
    public String f25337e;
    public boolean ea;
    public a eb;
    public String ed;
    public volatile boolean gb;
    public int gd;
    public String gh;
    public String gu;

    /* renamed from: h, reason: collision with root package name */
    public String f25339h;
    public String hd;
    public com.byazt.qjq.l hp;
    public String hq;

    /* renamed from: i, reason: collision with root package name */
    public hp f25340i;

    /* renamed from: j, reason: collision with root package name */
    public w f25341j;
    public String jd;
    public int jl;
    public com.byazt.voc.l jx;

    /* renamed from: k, reason: collision with root package name */
    public int f25342k;
    public boolean ku;
    public Map<String, Object> ky;

    /* renamed from: l, reason: collision with root package name */
    public s f25343l;
    public String lp;
    public String lv;

    /* renamed from: ms, reason: collision with root package name */
    public double f25345ms;

    /* renamed from: n, reason: collision with root package name */
    public double f25346n;
    public com.byazt.cg.hp nc;
    public int nd;
    public String ns;
    public long nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f25347o;
    public volatile boolean ov;
    public String pg;
    public Map<String, String> pu;

    /* renamed from: q, reason: collision with root package name */
    public String f25348q;

    /* renamed from: r, reason: collision with root package name */
    public String f25349r;
    public int ru;
    public int rz;

    /* renamed from: s, reason: collision with root package name */
    public String f25350s;
    public int su;
    public String sz;

    /* renamed from: t, reason: collision with root package name */
    public int f25351t;
    public boolean tw;

    /* renamed from: u, reason: collision with root package name */
    public String f25352u;
    public String ud;
    public int ux;

    /* renamed from: v, reason: collision with root package name */
    public int f25353v;
    public String vq;
    public double vv;

    /* renamed from: w, reason: collision with root package name */
    public q f25354w;
    public int wt;
    public boolean wv;

    /* renamed from: x, reason: collision with root package name */
    public int f25355x;
    public double xh;
    public String xs;
    public long xv;

    /* renamed from: y, reason: collision with root package name */
    public String f25356y;
    public String yj;
    public String yr;

    /* renamed from: z, reason: collision with root package name */
    public String f25357z;
    public String zb;
    public String zx;
    public int zy;
    public List<String> ec = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f25334b = -1;
    public int kg = 1;
    public int mp = 1;

    /* renamed from: m, reason: collision with root package name */
    public int f25344m = 1;

    /* renamed from: f, reason: collision with root package name */
    public int f25338f = 1;
    public volatile boolean rv = false;
    public volatile boolean qu = false;
    public volatile boolean an = false;
    public volatile boolean pc = false;
    public final Map<String, Object> fi = new ec();
    public boolean nr = false;
    public boolean rk = false;
    public boolean qh = false;
    public String pi = "1";
    public Map<String, Object> ad = new HashMap();
    public Map<String, Object> qa = new ConcurrentHashMap();

    public interface hp {
        void hp();

        void hp(jx jxVar);
    }

    private void hp(ViewGroup viewGroup, e eVar) {
        hp(viewGroup);
        View viewFindViewById = viewGroup.findViewById(R.id.tt_mediation_mtg_ad_choice);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        if (eVar != null) {
            clearLogoView(viewGroup.findViewById(eVar.jl));
        }
    }

    public boolean adnHasAdVideoCachedApi() {
        return false;
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        return null;
    }

    public void bidLoseNotify(Map<String, Object> map) {
    }

    public void bidWinNotify(Map<String, Object> map) {
    }

    public boolean canAdReuse() {
        int i2 = this.bu;
        return i2 == 0 || i2 == 100;
    }

    public void cancelDownload() {
    }

    public void clearLogoView(View view) {
        if (view != null) {
            view.setVisibility(0);
            if (view instanceof ViewGroup) {
                ((ViewGroup) view).removeAllViews();
            } else if (view instanceof ImageView) {
                ((ImageView) view).setImageDrawable(null);
            }
        }
    }

    public void dislikeClick(String str, Map<String, Object> map) {
    }

    public String getActionText() {
        return this.f25352u;
    }

    public String getAdDescription() {
        return this.f25348q;
    }

    public String getAdExtra() {
        return this.zx;
    }

    public long getAdId() {
        return 0L;
    }

    public String getAdLifecycleId() {
        return null;
    }

    public Bitmap getAdLogo() {
        return null;
    }

    public String getAdNetWorkName() {
        return this.lp;
    }

    public int getAdNetworkPlatformId() {
        return this.ux;
    }

    public String getAdNetworkSlotId() {
        return this.df;
    }

    public int getAdNetworkSlotType() {
        return this.bu;
    }

    public String getAdTitle() {
        return this.f25350s;
    }

    public int getAdType() {
        return this.di;
    }

    public View getAdView() {
        return null;
    }

    public String getAdnName() {
        return TextUtils.isEmpty(this.lp) ? this.f25335c : this.lp;
    }

    public String getAid() {
        return this.hd;
    }

    public int getAppCommentNum() {
        return 0;
    }

    public Map<String, Object> getAppInfoExtra() {
        return this.ky;
    }

    public String getAppName() {
        return this.hq;
    }

    public int getAppSize() {
        return this.as;
    }

    public String getAuthorName() {
        return this.ud;
    }

    public double getBiddingCpmWithOutExchangeRate() {
        if (!isServerBiddingAd()) {
            return this.f25346n;
        }
        if (getServerBiddingShowCpm() < 0.0d) {
            return 0.0d;
        }
        return getServerBiddingShowCpm();
    }

    public hp getCallBack() {
        return this.f25340i;
    }

    public double getCpm() {
        if (isServerBiddingAd()) {
            if (getServerBiddingShowCpm() < 0.0d) {
                return 0.0d;
            }
            return getServerBiddingShowCpm();
        }
        if (isClientBiddingAd() || isMultiBiddingAd()) {
            return this.f25346n * Double.valueOf(this.pi).doubleValue();
        }
        return this.f25346n;
    }

    public long getCreativeId() {
        return 0L;
    }

    public String getCustomAdNetWorkName() {
        return this.f25335c;
    }

    public String getDiscount() {
        return this.ns;
    }

    public com.byazt.cg.hp getDislikeCallback() {
        return this.nc;
    }

    public eb getDislikeDialog(Activity activity) {
        return null;
    }

    public com.byazt.qt.j getDislikeInfo() {
        return null;
    }

    public int getDownloadStatus() {
        return -1;
    }

    public com.byazt.qt.w getDownloadStatusController() {
        return null;
    }

    public String getErrorMsg() {
        return this.f25339h;
    }

    public Map<String, Object> getEventMap() {
        return this.qa;
    }

    public String getExchangeRate() {
        return this.pi;
    }

    public final Map<String, Object> getExtraMsg() {
        return this.ad;
    }

    public String getFailCallback() {
        return this.vq;
    }

    public final long getFillTime() {
        return this.xv;
    }

    public String getFunctionDescUrl() {
        return this.f25357z;
    }

    public com.byazt.voc.l getGMAdAppDownloadListener() {
        return this.jx;
    }

    public com.byazt.gpb.hp getGMDrawAdListener() {
        return this.f25333a;
    }

    public com.byazt.qjq.l getGMNativeAdListener() {
        return this.hp;
    }

    public com.byazt.qjq.w getGMNativeCustomVideoReporter() {
        return null;
    }

    public s getGMVideoListener() {
        return this.f25343l;
    }

    public String getIconUrl() {
        return this.f25337e;
    }

    public int getIfReuseAds() {
        return this.wt;
    }

    public int getImageHeight() {
        return this.zy;
    }

    public int getImageMode() {
        return this.cx;
    }

    public String getImageUrl() {
        return this.gu;
    }

    public int getImageWidth() {
        return this.jl;
    }

    public List<String> getImages() {
        return this.ec;
    }

    public int getInteractionType() {
        return this.f25334b;
    }

    public boolean getIsAppDownload() {
        return this.wv;
    }

    public int getIsRefresh() {
        return this.gd;
    }

    public String getLevelTag() {
        return this.pg;
    }

    public int getLoadSort() {
        return this.f25355x;
    }

    public Map<String, Object> getMediaExtraInfo() {
        return this.fi;
    }

    public int getMediationRitReqType(String str) {
        return TextUtils.equals(str, this.yr) ? this.f25344m : this.kg;
    }

    public int getMediationRitReqTypeSrc(String str) {
        return TextUtils.equals(str, this.yr) ? this.f25338f : this.mp;
    }

    public int[] getMinWindowSize() {
        return null;
    }

    public String getMultiCpm() {
        return isServerBiddingAd() ? getServerBiddingLoadCpm() < 0.0d ? "-1" : String.valueOf(getServerBiddingLoadCpm()) : String.valueOf(getCpm());
    }

    public String getNetWorkPlatFormCpm() {
        return isServerBiddingAd() ? getServerBiddingShowCpm() < 0.0d ? "-1" : String.valueOf(getServerBiddingShowCpm()) : String.valueOf(getCpm());
    }

    public String getOriginLinkId() {
        return this.yj;
    }

    public String getOriginPrimeRit() {
        return this.jd;
    }

    public int getOriginType() {
        return this.rz;
    }

    public String getPackageName() {
        return this.xs;
    }

    public long getPackageSizeBytes() {
        return this.nu;
    }

    public Map<String, String> getPermissionsMap() {
        return this.pu;
    }

    public String getPermissionsUrl() {
        return this.dy;
    }

    public int getPricingType() {
        return this.su;
    }

    public String getPrivacyAgreement() {
        return this.lv;
    }

    public String getRegNumber() {
        return this.gh;
    }

    public String getRegUrl() {
        return this.db;
    }

    public String getReqId() {
        return null;
    }

    @Deprecated
    public int getSdkNum() {
        return this.ux;
    }

    public String getSdkVersion() {
        return this.ed;
    }

    public double getServerBiddingLoadCpm() {
        return this.f25345ms;
    }

    public double getServerBiddingShowCpm() {
        return this.xh;
    }

    public int getShowSort() {
        return this.f25351t;
    }

    public String getSource() {
        return this.sz;
    }

    public Bitmap getSplashBitMap() {
        return null;
    }

    public View getSplashCardView() {
        return null;
    }

    public double getStarRating() {
        return this.vv;
    }

    public String getStore() {
        return this.f25336d;
    }

    public double getStrategyCpm() throws NumberFormatException {
        if (TextUtils.isEmpty(this.ns)) {
            return getCpm();
        }
        try {
            double d2 = Double.parseDouble(this.ns);
            if (d2 > 0.0d && d2 <= 100.0d) {
                return (getCpm() * d2) / 100.0d;
            }
            return getCpm();
        } catch (Exception unused) {
            return getCpm();
        }
    }

    public int getSubAdType() {
        return this.nd;
    }

    public int getSupportRender() {
        return this.ru;
    }

    public a getTTAdatperCallback() {
        return this.eb;
    }

    public String getVersionName() {
        return this.f25349r;
    }

    public jl getVideoCoverImage() {
        return null;
    }

    public double getVideoDuration() {
        return 0.0d;
    }

    public int getVideoHeight() {
        return this.f25353v;
    }

    public String getVideoUrl() {
        return null;
    }

    public View getVideoView() {
        return null;
    }

    public int getVideoWidth() {
        return this.f25342k;
    }

    public String getWinCallback() {
        return this.f25356y;
    }

    public boolean hasAppInfo() {
        if (!TextUtils.isEmpty(this.hq) || !TextUtils.isEmpty(this.ud) || this.nu > 0 || !TextUtils.isEmpty(this.dy)) {
            return true;
        }
        Map<String, String> map = this.pu;
        return ((map == null || map.size() <= 0) && TextUtils.isEmpty(this.lv) && TextUtils.isEmpty(this.f25349r) && TextUtils.isEmpty(this.f25357z)) ? false : true;
    }

    public abstract boolean hasDestroyed();

    public boolean hasDislike() {
        return false;
    }

    public void hideSkipBtn() {
    }

    public void hideSkipButton() {
    }

    public boolean isAdnPreload() {
        return false;
    }

    public boolean isCacheSuccess() {
        return this.ku;
    }

    public boolean isClickListenRepeatOnce() {
        if (this.an) {
            return true;
        }
        this.an = true;
        return false;
    }

    public boolean isClickListenRepeatPlayAgainOnce() {
        if (this.pc) {
            return true;
        }
        this.pc = true;
        return false;
    }

    public boolean isClientBiddingAd() {
        return this.bu == 1;
    }

    public boolean isCustomAd() {
        return (this instanceof com.byazt.hb.l) || (this instanceof com.byazt.bzj.jx);
    }

    public boolean isExpressAd() {
        return this.f25347o;
    }

    public boolean isHasShowCallback() {
        return this.gb;
    }

    public boolean isHasShown() {
        return this.ov;
    }

    public boolean isIsCallback() {
        return this.rk;
    }

    public boolean isLoadByDexPl() {
        return this.qh;
    }

    public boolean isMultiBiddingAd() {
        return this.bu == 3;
    }

    public boolean isNormalAd() {
        return this.bu == 0;
    }

    public boolean isPAd() {
        return this.bu == 100;
    }

    public final boolean isReady(String str) {
        Integer numIsReadyStatus = isReadyStatus();
        return numIsReadyStatus.intValue() == 1 ? !com.byazt.xob.hp.hp().hp(str, this) : numIsReadyStatus.intValue() == 2;
    }

    public Integer isReadyStatus() {
        return 1;
    }

    public boolean isServerBiddingAd() {
        return this.bu == 2;
    }

    public boolean isShowListenRepeatOnce() {
        if (this.qu) {
            return true;
        }
        this.qu = true;
        return false;
    }

    public boolean isShowRepeatOnce() {
        if (this.rv) {
            return true;
        }
        this.rv = true;
        return false;
    }

    public boolean isTimeoutFill() {
        return this.nr;
    }

    public boolean isUseCustomVideo() {
        return this.ea;
    }

    public boolean isUseFromCache() {
        return this.tw;
    }

    public void onDestroy() {
        this.hp = null;
        this.f25343l = null;
        this.jx = null;
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void pauseAppDownload() {
    }

    public void putEventParam(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.qa.put(str, obj);
    }

    public void putEventParams(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.qa.putAll(map);
    }

    public void putExtraMsg(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.ad.put(str, obj);
    }

    public void registerView(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
        hp(viewGroup, null);
    }

    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, e eVar, List<View> list4) {
        if (list3 != null) {
            if (list2 == null) {
                list2 = new ArrayList<>();
            }
            list2.addAll(list3);
        }
        hp(viewGroup, eVar);
    }

    public void removeSelfFromParent(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent == null || !(parent instanceof ViewGroup)) {
                    return;
                }
                ((ViewGroup) parent).removeView(view);
            } catch (Exception unused) {
            }
        }
    }

    public void render() {
    }

    public void resumeAppDownload() {
    }

    public void setActionText(String str) {
        this.f25352u = str;
    }

    public void setActivityForDownloadApp(Activity activity) {
    }

    public void setAdDescription(String str) {
        this.f25348q = str;
    }

    public void setAdExtra(String str) {
        this.zx = str;
    }

    public void setAdInteractionListener(com.byazt.gu.l lVar) {
    }

    public void setAdNetWorkName(String str) {
        this.lp = str;
    }

    public void setAdNetworkSlotId(String str) {
        this.df = str;
    }

    public void setAdNetworkSlotType(int i2) {
        this.bu = i2;
    }

    public void setAdType(int i2) {
        this.di = i2;
    }

    public void setAid(String str) {
        this.hd = str;
    }

    public void setAppInfoExtra(Map<String, Object> map) {
        this.ky = map;
    }

    public void setAppName(String str) {
        this.hq = str;
    }

    public void setAppSize(int i2) {
        this.as = i2;
    }

    public void setAuthorName(String str) {
        this.ud = str;
    }

    public void setCacheSuccess(boolean z2) {
        this.ku = z2;
    }

    public void setCallBack(hp hpVar) {
        this.f25340i = hpVar;
    }

    public void setCanInterruptVideoPlay(boolean z2) {
    }

    public void setCpm(double d2) {
        this.f25346n = d2;
    }

    public void setCustomAdNetWorkName(String str) {
        this.f25335c = str;
    }

    public void setDiscount(String str) {
        this.ns = str;
    }

    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        this.nc = hpVar;
    }

    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
    }

    public void setDownloadListener(com.byazt.gu.jx jxVar) {
    }

    public void setDrawVideoListener(com.byazt.dc.hp hpVar) {
    }

    public void setErrorMsg(String str) {
        this.f25339h = str;
    }

    public void setExchangeRate(String str) {
        this.pi = str;
    }

    public void setExpressAd(boolean z2) {
        this.f25347o = z2;
    }

    public void setFailCallback(String str) {
        this.vq = str;
    }

    public final void setFillTime(long j2) {
        if (this.xv == 0) {
            this.xv = j2;
        }
    }

    public void setFunctionDescUrl(String str) {
        this.f25357z = str;
    }

    public void setGMDrawAdListener(com.byazt.gpb.hp hpVar) {
        this.f25333a = hpVar;
    }

    public void setGMVideoRewardListener(q qVar) {
        this.f25354w = qVar;
    }

    public void setGmShakeViewListener(w wVar) {
        this.f25341j = wVar;
    }

    public void setHasShowCallback(boolean z2) {
        this.gb = z2;
    }

    public void setHasShown(boolean z2) {
        this.ov = z2;
    }

    public void setIconUrl(String str) {
        this.f25337e = str;
    }

    public void setIfReuseAds(int i2) {
        this.wt = i2;
    }

    public void setImageHeight(int i2) {
        this.zy = i2;
    }

    public void setImageMode(int i2) {
        this.cx = i2;
    }

    public void setImageUrl(String str) {
        this.gu = str;
    }

    public void setImageWidth(int i2) {
        this.jl = i2;
    }

    public void setImages(List<String> list) {
        if (list != null) {
            this.ec.addAll(list);
        }
    }

    public void setInteractionType(int i2) {
        this.f25334b = i2;
    }

    public void setIsAppDownload(boolean z2) {
        this.wv = z2;
    }

    public void setIsCallback(boolean z2) {
        this.rk = z2;
    }

    public void setIsRefresh(int i2) {
        this.gd = i2;
    }

    public void setLevelTag(String str) {
        this.pg = str;
    }

    public void setLinkIdFromRealReq(String str) {
        this.yr = str;
    }

    public void setLoadByDexPl(boolean z2) {
        this.qh = z2;
    }

    public void setLoadSort(int i2) {
        this.f25355x = i2;
    }

    public void setMediaExtraInfo(Map<String, Object> map) {
        if (map != null) {
            this.fi.putAll(map);
        }
    }

    public void setMediationRitReqType(int i2) {
        this.kg = i2;
    }

    public void setMediationRitReqTypeFromRealReq(int i2) {
        this.f25344m = i2;
    }

    public void setMediationRitReqTypeSrc(int i2) {
        this.mp = i2;
    }

    public void setMediationRitReqTypeSrcFromRealReq(int i2) {
        this.f25338f = i2;
    }

    public void setOriginLinkId(String str) {
        this.yj = str;
    }

    public void setOriginPrimeRit(String str) {
        this.jd = str;
    }

    public void setOriginType(int i2) {
        this.rz = i2;
    }

    public void setPackageName(String str) {
        this.xs = str;
    }

    public void setPackageSizeBytes(long j2) {
        this.nu = j2;
    }

    public void setPauseIcon(Bitmap bitmap, int i2) {
    }

    public void setPermissionsMap(Map<String, String> map) {
        this.pu = map;
    }

    public void setPermissionsUrl(String str) {
        this.dy = str;
    }

    public void setPricingType(int i2) {
        this.su = i2;
    }

    public void setPrivacyAgreement(String str) {
        this.lv = str;
    }

    public void setRating(double d2) {
        this.vv = d2;
    }

    public void setRegNumber(String str) {
        this.gh = str;
    }

    public void setRegUrl(String str) {
        this.db = str;
    }

    public void setRewardAdPlayAgainController(Object obj) {
    }

    public void setRit(String str) {
        this.zb = str;
    }

    public void setSdkNum(int i2) {
        this.ux = i2;
    }

    public void setSdkVersion(String str) {
        this.ed = str;
    }

    public void setServerBiddingLoadCpm(double d2) {
        this.f25345ms = d2;
    }

    public void setServerBiddingShowCpm(double d2) {
        this.xh = d2;
    }

    public void setShowSort(int i2) {
        this.f25351t = i2;
    }

    public void setSlideIntervalTime(int i2) {
    }

    public void setSource(String str) {
        this.sz = str;
    }

    public void setStore(String str) {
        this.f25336d = str;
    }

    public void setSubAdType(int i2) {
        this.nd = i2;
    }

    public void setSupportRender(int i2) {
        this.ru = i2;
    }

    public void setTTAdAppDownloadListener(final com.byazt.voc.l lVar) {
        if (lVar != null) {
            this.jx = new com.byazt.voc.l() { // from class: com.byazt.rt.jx.1
                @Override // com.byazt.voc.l
                public void hp() {
                    com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.rt.jx.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            lVar.hp();
                        }
                    });
                }

                @Override // com.byazt.voc.l
                public void l() {
                    com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.rt.jx.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            lVar.l();
                        }
                    });
                }

                @Override // com.byazt.voc.l
                public void hp(final long j2, final long j3, final int i2, final int i3, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.rt.jx.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            lVar.hp(j2, j3, i2, i3, str, str2);
                        }
                    });
                }

                @Override // com.byazt.voc.l
                public void l(final long j2, final long j3, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.rt.jx.1.5
                        @Override // java.lang.Runnable
                        public void run() {
                            lVar.l(j2, j3, str, str2);
                        }
                    });
                }

                @Override // com.byazt.voc.l
                public void hp(final long j2, final long j3, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.rt.jx.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            lVar.hp(j2, j3, str, str2);
                        }
                    });
                }

                @Override // com.byazt.voc.l
                public void hp(final long j2, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.rt.jx.1.6
                        @Override // java.lang.Runnable
                        public void run() {
                            lVar.hp(j2, str, str2);
                        }
                    });
                }

                @Override // com.byazt.voc.l
                public void hp(@Nullable final String str, @Nullable final String str2) {
                    com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.rt.jx.1.7
                        @Override // java.lang.Runnable
                        public void run() {
                            lVar.hp(str, str2);
                        }
                    });
                }
            };
        }
    }

    public void setTTAdatperCallback(a aVar) {
        this.eb = aVar;
    }

    public void setTTNativeAdListener(com.byazt.qjq.l lVar) {
        this.hp = lVar;
    }

    public void setTTVideoListener(s sVar) {
        this.f25343l = sVar;
    }

    public void setTimeoutFill(boolean z2) {
        this.nr = z2;
    }

    public void setTitle(String str) {
        this.f25350s = str;
    }

    public void setUseCustomVideo(boolean z2) {
        this.ea = z2;
    }

    public void setUseFromCache(boolean z2) {
        this.tw = z2;
    }

    public void setVersionName(String str) {
        this.f25349r = str;
    }

    public void setVideoAdListener(com.byazt.qrd.jx jxVar) {
    }

    public void setVideoHeight(int i2) {
        this.f25353v = i2;
    }

    public void setVideoWidth(int i2) {
        this.f25342k = i2;
    }

    public void setWinCallback(String str) {
        this.f25356y = str;
    }

    public void showAd(Activity activity, Object obj, String str) {
    }

    public void showMinWindow(Rect rect, a aVar) {
    }

    public void showSplashAd(ViewGroup viewGroup) {
    }

    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
    }

    public void splashMinWindowAnimationFinish() {
    }

    public void unregisterView() {
    }

    public void uploadDislikeEvent(String str) {
    }

    @Override // java.lang.Comparable
    public int compareTo(jx jxVar) {
        if (jxVar == null || this.f25355x > jxVar.getLoadSort()) {
            return 1;
        }
        if (this.f25355x < jxVar.getLoadSort()) {
            return -1;
        }
        if (this.f25351t > jxVar.getShowSort()) {
            return 1;
        }
        return this.f25351t < jxVar.getShowSort() ? -1 : 0;
    }

    public eb getDislikeDialog(Dialog dialog, Integer[] numArr) {
        return null;
    }

    public void putExtraMsg(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.ad.putAll(map);
    }

    private void hp(@NonNull ViewGroup viewGroup) {
        try {
            if (viewGroup.getChildCount() == 0 || getAdNetworkPlatformId() == 3) {
                return;
            }
            int i2 = 0;
            if (viewGroup.getChildAt(0) instanceof ViewGroup) {
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
                if (MediationConstant.TT_GDT_NATIVE_ROOT_VIEW_TAG.equals(viewGroup2.getTag(R.id.tt_mediation_gdt_developer_view_root_tag_key)) || MediationConstant.TT_GDT_NATIVE_ROOT_VIEW_TAG.equals(viewGroup2.getTag(2114387452))) {
                    viewGroup.removeView(viewGroup2);
                    while (i2 < viewGroup2.getChildCount()) {
                        View childAt = viewGroup2.getChildAt(i2);
                        if (childAt == null || (!MediationConstant.TT_GDT_NATIVE_VIEW_TAG.equals(childAt.getTag(R.id.tt_mediation_gdt_developer_view_tag_key)) && !MediationConstant.TT_GDT_NATIVE_VIEW_TAG.equals(childAt.getTag(2114387451)))) {
                            i2++;
                        }
                        viewGroup2.removeView(childAt);
                        viewGroup.addView(childAt, childAt.getLayoutParams());
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
