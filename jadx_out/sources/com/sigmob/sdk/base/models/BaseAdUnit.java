package com.sigmob.sdk.base.models;

import android.content.Context;
import android.net.Uri;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import com.czhj.wire.Wire;
import com.czhj.wire.okio.ByteString;
import com.sigmob.sdk.b;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1260i;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.common.ai;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AdPrivacy;
import com.sigmob.sdk.base.models.rtb.AdSetting;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.models.rtb.ClickAreaSetting;
import com.sigmob.sdk.base.models.rtb.Color;
import com.sigmob.sdk.base.models.rtb.FrequencyControl;
import com.sigmob.sdk.base.models.rtb.InterstitialSetting;
import com.sigmob.sdk.base.models.rtb.LinkAction;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.NativeAdSetting;
import com.sigmob.sdk.base.models.rtb.ResponseAsset;
import com.sigmob.sdk.base.models.rtb.ResponseAssetImage;
import com.sigmob.sdk.base.models.rtb.ResponseAssetVideo;
import com.sigmob.sdk.base.models.rtb.ResponseNativeAd;
import com.sigmob.sdk.base.models.rtb.RvAdSetting;
import com.sigmob.sdk.base.models.rtb.SingleNativeAdSetting;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import com.sigmob.sdk.base.models.rtb.SplashAdSetting;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.sdk.base.models.rtb.Tracking;
import com.sigmob.sdk.base.models.rtb.WXProgramRes;
import com.sigmob.sdk.base.models.rtb.Widget;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.utils.n;
import com.sigmob.sdk.base.utils.s;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.sdk.base.views.C1302n;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.nativead.C1349e;
import com.sigmob.sdk.newInterstitial.d;
import com.sigmob.sdk.splash.C1371a;
import com.sigmob.sdk.videoAd.C1374a;
import com.sigmob.sdk.videoAd.C1377d;
import com.sigmob.windad.natives.AdAppInfo;
import java.io.File;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes4.dex */
public class BaseAdUnit implements Serializable {
    private static final String TAG = "BaseAdUnit";
    private static final long serialVersionUID = 1;
    private Ad ad;
    private transient AdAppInfo adAppInfo;
    private transient C1260i adConfig;
    private int adHeight;
    private LoadAdRequest adRequest;
    private HashMap<String, List<ai>> adTrackersMap;
    private int adWidth;
    private String ad_scene_desc;
    private String ad_scene_id;
    private String ad_source_channel;
    private int ad_type;
    private String adslot_id;
    private String adx_id;
    private String apkName;
    private String apkPackageName;
    private String bid_token;
    public BiddingResponse bidding_response;
    private String camp_id;
    private ClickCommon clickCommon;
    private long create_time;
    private String crid;
    private transient Uri deeplinkUri;
    private Long downloadId;
    private transient f downloadTask;
    private String downloadUrl;
    private List<C1377d> download_trackers;
    private String endcard_md5;
    public int expiration_time;
    private transient List<SigImage> imageUrlList;
    private boolean isHalfInterstitial;
    private String landUrl;
    private String load_id;
    private AndroidMarket mCustomAndroidMarket;
    private String mCustomDeeplink;
    private String mCustomLandPageUrl;
    private transient HashMap<String, Integer> mRedirectCountMap;
    private transient ah mSessionManager;
    private SigMacroCommon macroCommon;
    private int mraidInteractionType;
    private SigVideo nativeVideo;
    private String originVid;
    private int requestSceneType;
    private String request_id;
    private String rv_callback_url;
    private Map<String, String> saasOptions;
    public Template scene;
    public SlotAdSetting slotAdSetting;
    private String traceId;
    public String uid;
    private String uuid;
    private VideoStatusCommon videoCommon;
    private String video_md5;
    private double adPercent = -1.0d;
    private double realAdPercent = -1.0d;
    private boolean useDownloadedApk = false;
    private boolean isDislikeReported = false;
    private boolean record = true;
    private boolean catchVideo = false;
    private final Map<String, Integer> mMaxRedirectCountMap = new HashMap();

    public static BaseAdUnit adUnit(Ad ad, String str, LoadAdRequest loadAdRequest, SlotAdSetting slotAdSetting, Template template, String str2, Integer num, BiddingResponse biddingResponse) {
        List<MaterialMeta> list;
        BaseAdUnit baseAdUnit;
        ResponseNativeAd nativeAd;
        BaseAdUnit baseAdUnit2 = null;
        if (ad != null && (list = ad.materials) != null && !list.isEmpty()) {
            MaterialMeta materialMeta = ad.materials.get(0);
            if (materialMeta == null) {
                return null;
            }
            try {
                baseAdUnit = new BaseAdUnit();
            } catch (Throwable th) {
                th = th;
            }
            try {
                baseAdUnit.create_time = System.currentTimeMillis();
                baseAdUnit.adslot_id = ad.adslot_id;
                baseAdUnit.ad_type = ad.ad_type.intValue();
                baseAdUnit.ad = ad;
                baseAdUnit.crid = ad.crid;
                baseAdUnit.camp_id = ad.camp_id;
                baseAdUnit.request_id = str;
                baseAdUnit.endcard_md5 = materialMeta.endcard_md5;
                baseAdUnit.video_md5 = materialMeta.video_md5;
                baseAdUnit.load_id = loadAdRequest.getLoadId();
                baseAdUnit.ad_source_channel = ad.ad_source_channel;
                if (materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeVideo_Html_Snippet.a() || materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeVideo_transparent_html.a()) {
                    ByteString byteString = materialMeta.html_snippet;
                    if (byteString != null) {
                        byteString.size();
                    }
                }
                baseAdUnit.slotAdSetting = slotAdSetting;
                baseAdUnit.adRequest = loadAdRequest;
                baseAdUnit.scene = template;
                baseAdUnit.uid = str2;
                if (num != null) {
                    baseAdUnit.expiration_time = num.intValue();
                }
                BiddingResponse biddingResponse2 = ad.bidding_response;
                if (biddingResponse2 != null) {
                    biddingResponse = biddingResponse2;
                }
                baseAdUnit.bidding_response = biddingResponse;
                baseAdUnit.useDownloadedApk = ((Boolean) Wire.get(slotAdSetting.use_downloaded_apk, Boolean.FALSE)).booleanValue();
                initAdTrackerMap(baseAdUnit);
                if (ad.ad_track_macro != null) {
                    baseAdUnit.getMacroCommon().setServerMacroMap(ad.ad_track_macro);
                }
                if (baseAdUnit.ad_type == 5 && (nativeAd = baseAdUnit.getNativeAd()) != null) {
                    if (nativeAd.type.intValue() == 1) {
                        baseAdUnit.getNativeVideo();
                        return baseAdUnit;
                    }
                    baseAdUnit.getImageUrlList();
                }
                return baseAdUnit;
            } catch (Throwable th2) {
                th = th2;
                baseAdUnit2 = baseAdUnit;
                SigmobLog.e("adUnit error", th);
                return baseAdUnit2;
            }
        }
        return baseAdUnit2;
    }

    private static boolean checkFileMD5(String str, String str2) {
        String strFileMd5 = Md5Util.fileMd5(str);
        SigmobLog.d("path: [ " + str + " ] calc [ " + strFileMd5 + " ] origin " + str2);
        return strFileMd5 != null && strFileMd5.equalsIgnoreCase(str2);
    }

    public static List<ai> createTrackersForUrls(List<String> list, String str, String str2, Integer num) {
        Preconditions.NoThrow.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            ai aiVar = new ai(it.next(), str, str2);
            aiVar.setRetryNum(num);
            arrayList.add(aiVar);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getAppSize() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy != null && (map = adPrivacy.privacy_template_info) != null) {
            String str = map.get("app_size");
            if (s.a((CharSequence) str)) {
                return 0;
            }
            try {
                return Integer.parseInt(str);
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static long getSerialVersionUID() {
        return 1L;
    }

    public static String getTAG() {
        return TAG;
    }

    private static void initAdTrackerMap(BaseAdUnit baseAdUnit) {
        List<Tracking> ad_tracking = baseAdUnit.getAd_tracking();
        baseAdUnit.adTrackersMap = new HashMap<>();
        for (Tracking tracking : ad_tracking) {
            String str = tracking.tracking_event_type;
            baseAdUnit.adTrackersMap.put(str, createTrackersForUrls(tracking.tracking_url, str, baseAdUnit.request_id, Integer.valueOf(baseAdUnit.getTrackingRetryNum())));
        }
    }

    public void addRedirectCount(Uri uri) {
        if (uri == null || uri.getScheme() == null) {
            return;
        }
        String str = uri.getScheme() + ":" + uri.getHost();
        int redirectCount = getRedirectCount(uri) + 1;
        synchronized (this) {
            try {
                if (this.mRedirectCountMap == null) {
                    this.mRedirectCountMap = new HashMap<>();
                }
                this.mRedirectCountMap.put(str, Integer.valueOf(redirectCount));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Boolean allowClickToAutoClose() {
        InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
        if (newInterstitialSetting == null) {
            return null;
        }
        return newInterstitialSetting.click_close_ad;
    }

    public Integer allowCountdownEndsClose() {
        InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
        if (newInterstitialSetting == null) {
            return null;
        }
        return newInterstitialSetting.seconds_close_ad;
    }

    public boolean canInstall(String str) {
        boolean z2 = (!s.b(getApkMd5()) && getDownloadTask() == null && getDownloadId() == null) ? false : true;
        if (canUseDownloadApk() && !s.a((CharSequence) str) && z2) {
            Context contextE = b.e();
            File file = new File(n.a(contextE), str);
            if (file.exists() && ClientMetadata.getPackageInfoWithUri(contextE, file.getAbsolutePath()) != null) {
                return true;
            }
        }
        return false;
    }

    public boolean canOpen() {
        return o.a().b(s.a((CharSequence) this.apkPackageName) ? getProductId() : this.apkPackageName).booleanValue();
    }

    public boolean canUseDownloadApk() {
        return this.useDownloadedApk;
    }

    public boolean checkEndCardZipValid() {
        if (s.a((CharSequence) getEndcard_url()) || s.a((CharSequence) this.endcard_md5)) {
            return true;
        }
        return checkFileMD5(getEndCardZipPath(), getEndcard_md5());
    }

    public boolean checkVideoValid() {
        if (s.a((CharSequence) getVideo_url()) || s.a((CharSequence) this.video_md5)) {
            return true;
        }
        return checkFileMD5(getVideoPath(), getVideo_OriginMD5());
    }

    public void destroy() {
        C1260i c1260i = this.adConfig;
        if (c1260i != null) {
            c1260i.k();
            this.adConfig = null;
        }
        ah ahVar = this.mSessionManager;
        if (ahVar != null) {
            ahVar.a();
        }
    }

    public void dislikeReport() {
        this.isDislikeReported = true;
    }

    public boolean enableDetectPkg() {
        return o.a().L().booleanValue();
    }

    public boolean enableDevToRender(int i2) {
        Widget widget = getWidget(i2);
        if (widget == null) {
            return false;
        }
        return widget.enable_developer_render.booleanValue();
    }

    public Boolean enableSmallWindow() {
        Ad ad = getAd();
        if (ad == null) {
            return null;
        }
        return ad.enable_small_window;
    }

    public void enableUseDownloadApk(boolean z2) {
        this.useDownloadedApk = z2;
    }

    public boolean enableWidgetInteraction() {
        NativeAdSetting nativeAdSetting = getNativeAdSetting();
        if (nativeAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(nativeAdSetting.enable_advanced_interaction, Boolean.FALSE)).booleanValue();
    }

    public boolean enable_full_click() {
        SplashAdSetting splashAdSetting = getSplashAdSetting();
        if (splashAdSetting == null) {
            return false;
        }
        return splashAdSetting.enable_full_click.booleanValue();
    }

    public boolean expiredAdCanReload() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(adSetting.can_expire_reload, Boolean.FALSE)).booleanValue();
    }

    public int expiredAdReloadNum() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.expire_reload_count.intValue();
    }

    public Ad getAd() {
        return this.ad;
    }

    public AdAppInfo getAdAppInfo() {
        AdPrivacy adPrivacy = getadPrivacy();
        if (this.adAppInfo == null && adPrivacy != null) {
            try {
                this.adAppInfo = new AdAppInfo() { // from class: com.sigmob.sdk.base.models.BaseAdUnit.1
                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getAppName() {
                        return BaseAdUnit.this.getPrivacyAppName();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public int getAppSize() {
                        return BaseAdUnit.this.getAppSize();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getAuthorName() {
                        return BaseAdUnit.this.getCompanyName();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getDescription() {
                        return BaseAdUnit.this.getDescription();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getDescriptionUrl() {
                        return BaseAdUnit.this.getDescriptionUrl();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPermissions() {
                        return BaseAdUnit.this.getPermissions();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPermissionsUrl() {
                        return BaseAdUnit.this.getPermissionsUrl();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPrivacyAgreement() {
                        return BaseAdUnit.this.getPrivacyAgreement();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPrivacyAgreementUrl() {
                        return BaseAdUnit.this.getPrivacyAgreementUrl();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getVersionName() {
                        return BaseAdUnit.this.getAppVersion();
                    }

                    public String toString() {
                        return String.format(Locale.getDefault(), "appName %s \n AuthorName %s \n  versionName %s \n permissionsUrl %s \n permissions %s \nprivacyAgreementUrl %s \n privacyAgreement %s \n descriptionUrl %s \n description %s \n  appsize %d", getAppName(), getAuthorName(), getVersionName(), getPermissionsUrl(), getPermissions(), getPrivacyAgreementUrl(), getPrivacyAgreement(), getDescriptionUrl(), getDescription(), Integer.valueOf(getAppSize()));
                    }
                };
            } catch (Throwable unused) {
            }
        }
        return this.adAppInfo;
    }

    public C1260i getAdConfig() {
        C1260i c1260iD;
        if (this.adConfig == null) {
            switch (getAd_type()) {
                case 1:
                case 4:
                    c1260iD = C1374a.d(this);
                    break;
                case 2:
                    c1260iD = C1371a.d(this);
                    break;
                case 3:
                case 6:
                    c1260iD = d.d(this);
                    break;
                case 5:
                    c1260iD = C1349e.d(this);
                    break;
            }
            this.adConfig = c1260iD;
            return c1260iD;
        }
        return this.adConfig;
    }

    public Integer getAdExpiredTime() {
        Integer num;
        Ad ad = this.ad;
        return Integer.valueOf((ad == null || (num = ad.expired_time) == null) ? 0 : num.intValue() * 1000);
    }

    public List<LinkAction> getAdLinkActions() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return null;
        }
        return adSetting.link_actions;
    }

    public String getAdLogo() {
        return getAd_source_logo();
    }

    public double getAdPercent() {
        double d2 = this.adPercent;
        if (d2 > 0.0d) {
            return d2;
        }
        double d3 = this.realAdPercent;
        if (d3 > 0.0d) {
            return d3;
        }
        return 1.7777777910232544d;
    }

    public File getAdPrivacyTemplateFile() {
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null) {
            return null;
        }
        String str = adPrivacy.privacy_template_url;
        if (s.a((CharSequence) str)) {
            return null;
        }
        String strMd5 = Md5Util.md5(str);
        return n.a(n.d(n.f36610b), strMd5 + ".html");
    }

    public LoadAdRequest getAdRequest() {
        return this.adRequest;
    }

    public AdSetting getAdSetting() {
        Ad ad = this.ad;
        if (ad == null) {
            return null;
        }
        return ad.ad_setting;
    }

    public List<ai> getAdTracker(String str) {
        HashMap<String, List<ai>> map = this.adTrackersMap;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public String getAd_scene_desc() {
        return this.ad_scene_desc;
    }

    public String getAd_scene_id() {
        return this.ad_scene_id;
    }

    public String getAd_source_channel() {
        return this.ad_source_channel;
    }

    public String getAd_source_logo() {
        Ad ad = this.ad;
        if (ad == null) {
            return null;
        }
        return ad.ad_source_logo;
    }

    public List<Tracking> getAd_tracking() {
        Ad ad = this.ad;
        if (ad == null) {
            return null;
        }
        return ad.ad_tracking;
    }

    public int getAd_type() {
        return this.ad_type;
    }

    public String getAdslot_id() {
        return this.adslot_id;
    }

    public String getAdxEncPrice() {
        BiddingResponse biddingResponse = this.bidding_response;
        return biddingResponse == null ? "" : biddingResponse.price_for_ssp_enc;
    }

    public int getAdxPrice() {
        BiddingResponse biddingResponse = this.bidding_response;
        if (biddingResponse == null) {
            return 0;
        }
        return biddingResponse.price_for_ssp.intValue();
    }

    public String getAdx_id() {
        return this.adx_id;
    }

    public AndroidMarket getAndroidMarket() {
        MaterialMeta material = getMaterial();
        AndroidMarket androidMarket = material == null ? null : material.android_market;
        return (androidMarket == null && v.b(this.mCustomAndroidMarket)) ? this.mCustomAndroidMarket : androidMarket;
    }

    public int getApkDownloadType() {
        SlotAdSetting slotAdSetting = getSlotAdSetting();
        if (slotAdSetting == null) {
            return 0;
        }
        return slotAdSetting.apk_download_type.intValue();
    }

    public String getApkMd5() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.apk_md5;
    }

    public String getApkName() {
        return this.apkName;
    }

    public String getApkPackageName() {
        return this.apkPackageName;
    }

    public String getAppName() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.app_name;
    }

    public String getAppVersion() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_version");
    }

    public int getBP() {
        Ad ad = this.ad;
        if (ad == null) {
            return 0;
        }
        return ad.bid_price.intValue();
    }

    public int getBidEcpm() {
        BiddingResponse biddingResponse = this.bidding_response;
        if (biddingResponse == null) {
            return 0;
        }
        return biddingResponse.ecpm.intValue();
    }

    public String getBid_token() {
        return this.bid_token;
    }

    public int getButtonColor() {
        Color color;
        MaterialMeta material = getMaterial();
        return (material == null || (color = material.button_color) == null) ? android.graphics.Color.parseColor("#FF5A57") : android.graphics.Color.argb((int) (color.alpha.floatValue() * 255.0f), material.button_color.red.intValue(), material.button_color.green.intValue(), material.button_color.blue.intValue());
    }

    public String getCTAText() {
        MaterialMeta material = getMaterial();
        String str = material == null ? null : material.button_text;
        return s.b(str) ? str : getInteractionType() == 2 ? "立即下载" : "查看详情";
    }

    public String getCamp_id() {
        return this.camp_id;
    }

    public int getChargePercent() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.charge_percent.intValue();
    }

    public int getChargeSeconds() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.charge_seconds.intValue();
    }

    public ClickAreaSetting getClickAreaSetting() {
        Float fValueOf = Float.valueOf(0.1f);
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return null;
        }
        ClickAreaSetting clickAreaSetting = rvAdSetting.click_setting;
        if (clickAreaSetting != null) {
            return clickAreaSetting;
        }
        ClickAreaSetting.Builder builder = new ClickAreaSetting.Builder();
        builder.bottom = fValueOf;
        builder.right = fValueOf;
        builder.top = fValueOf;
        builder.left = fValueOf;
        return builder.build();
    }

    public ClickCommon getClickCommon() {
        if (this.clickCommon == null) {
            this.clickCommon = new ClickCommon();
        }
        return this.clickCommon;
    }

    public int getClickType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.click_type.intValue();
    }

    public String getCloseCardHtmlData() {
        ByteString byteString;
        MaterialMeta material = getMaterial();
        if (material == null || (byteString = material.closecard_html_snippet) == null || byteString.size() < 10) {
            return null;
        }
        return material.closecard_html_snippet.utf8();
    }

    public String getCompanyName() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_company");
    }

    public int getConfirmDialog() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.confirm_dialog.intValue();
    }

    public long getCreate_time() {
        return this.create_time;
    }

    public C1302n.b getCreativeResourceType() {
        int creativeType = getCreativeType();
        return (s.b(getEndcard_url()) && (creativeType == EnumC1270n.CreativeTypeVideo_Tar.a() || creativeType == EnumC1270n.CreativeTypeVideo_Tar_Companion.a())) ? C1302n.b.NATIVE_RESOURCE : s.b(getHtmlData()) ? C1302n.b.HTML_RESOURCE : s.b(getHtmlUrl()) ? C1302n.b.URL_RESOURCE : C1302n.b.NATIVE_RESOURCE;
    }

    public String getCreativeTitle() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.creative_title;
    }

    public int getCreativeType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.creative_type.intValue();
    }

    public String getCrid() {
        return this.crid;
    }

    public Uri getDeeplinkUri() {
        return this.deeplinkUri;
    }

    public String getDeeplinkUrl() {
        MaterialMeta material = getMaterial();
        String str = material == null ? null : material.deeplink_url;
        return (s.a((CharSequence) str) && s.b(this.mCustomDeeplink)) ? this.mCustomDeeplink : str;
    }

    public String getDesc() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.desc;
    }

    public String getDescription() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_func");
    }

    public String getDescriptionUrl() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_func_url");
    }

    public boolean getDisableAutoLoad() {
        Boolean bool;
        if (this.ad_type == 6) {
            InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
            if (newInterstitialSetting == null) {
                return false;
            }
            bool = newInterstitialSetting.disable_auto_load;
        } else {
            RvAdSetting rvAdSetting = getRvAdSetting();
            if (rvAdSetting == null) {
                return false;
            }
            bool = rvAdSetting.disable_auto_load;
        }
        return bool.booleanValue();
    }

    public int getDisplay_orientation() {
        Ad ad = getAd();
        if (ad == null) {
            return 0;
        }
        return ad.display_orientation.intValue();
    }

    public Long getDownloadId() {
        return this.downloadId;
    }

    public List<C1377d> getDownloadQuarterTrack() {
        return this.download_trackers;
    }

    public f getDownloadTask() {
        return this.downloadTask;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public int getDuration() {
        int endTime = getEndTime();
        if (endTime > 0) {
            return endTime * 1000;
        }
        return 33333;
    }

    public boolean getEnableDeeplinkAndLandingPage() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(slotAdSetting.enable_deeplink_and_landing_page, Boolean.FALSE)).booleanValue();
    }

    public String getEndCardDirPath() {
        return n.b() + String.format("/%s/", getEndcard_md5());
    }

    public String getEndCardImageUrl() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.endcard_image_src;
    }

    public String getEndCardIndexPath() {
        return getEndCardDirPath() + "endcard.html";
    }

    public String getEndCardZipPath() {
        return n.b() + String.format("/%s.tgz", this.endcard_md5);
    }

    public String getEndCard_OriginMD5() {
        return this.endcard_md5;
    }

    public int getEndTime() {
        RvAdSetting rvAdSetting;
        if (this.ad_type == 6 || (rvAdSetting = getRvAdSetting()) == null) {
            return 0;
        }
        return rvAdSetting.end_time.intValue();
    }

    public int getEndcardCloseImage() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.endcard_close_image.intValue();
    }

    public String getEndcard_md5() {
        return s.b(this.endcard_md5) ? this.endcard_md5 : Md5Util.md5(getCrid());
    }

    public String getEndcard_url() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.endcard_url;
    }

    public float getFinishedTime() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 1.0f;
        }
        return rvAdSetting.finished.floatValue();
    }

    public int getFloor() {
        NativeAdSetting nativeAdSetting = getNativeAdSetting();
        if (nativeAdSetting == null) {
            return 0;
        }
        return ((Integer) Wire.get(nativeAdSetting.media_expected_floor, 0)).intValue();
    }

    public List<FrequencyControl> getFrequencyControl() {
        Ad ad;
        if (s.b(this.bid_token) || (ad = getAd()) == null) {
            return null;
        }
        return ad.frequency_control;
    }

    public boolean getFullClickOnVideo() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return false;
        }
        return rvAdSetting.full_click_on_video.booleanValue();
    }

    public String getHtmlData() {
        ByteString byteString;
        MaterialMeta material = getMaterial();
        if (material == null || (byteString = material.html_snippet) == null || byteString.size() < 10) {
            return null;
        }
        return material.html_snippet.utf8();
    }

    public String getHtmlUrl() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.html_url;
    }

    public String getIconUrl() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.icon_url;
    }

    public List<SigImage> getImageUrlList() {
        ResponseNativeAd nativeAd = getNativeAd();
        if (this.imageUrlList == null) {
            this.imageUrlList = new ArrayList();
            if (nativeAd == null || nativeAd.type.intValue() == 1) {
                return this.imageUrlList;
            }
            Iterator<ResponseAsset> it = nativeAd.assets.iterator();
            while (it.hasNext()) {
                ResponseAssetImage responseAssetImage = it.next().image;
                if (responseAssetImage != null) {
                    SigImage sigImage = new SigImage(responseAssetImage.url, responseAssetImage.f36321w.intValue(), responseAssetImage.f36320h.intValue());
                    if (this.adPercent < 0.0d && responseAssetImage.f36321w.intValue() > 0 && responseAssetImage.f36320h.intValue() > 0) {
                        this.adPercent = (responseAssetImage.f36321w.intValue() * 1.0f) / responseAssetImage.f36320h.intValue();
                    }
                    this.imageUrlList.add(sigImage);
                }
            }
        }
        return this.imageUrlList;
    }

    public int getInteractionType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 1;
        }
        return material.interaction_type.intValue();
    }

    public boolean getInvisibleAdLabel() {
        RvAdSetting rvAdSetting;
        Boolean bool;
        int ad_type = getAd_type();
        if (ad_type == 2) {
            SplashAdSetting splashAdSetting = getSplashAdSetting();
            if (splashAdSetting == null) {
                return false;
            }
            bool = splashAdSetting.invisible_ad_label;
        } else {
            if ((ad_type != 1 && ad_type != 4) || (rvAdSetting = getRvAdSetting()) == null) {
                return false;
            }
            bool = rvAdSetting.invisible_ad_label;
        }
        return bool.booleanValue();
    }

    public int getIsMute() {
        Integer num;
        if (this.ad_type == 6) {
            InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
            if (newInterstitialSetting == null) {
                return 0;
            }
            num = newInterstitialSetting.if_mute;
        } else {
            RvAdSetting rvAdSetting = getRvAdSetting();
            if (rvAdSetting == null) {
                return 0;
            }
            num = rvAdSetting.if_mute;
        }
        return num.intValue();
    }

    public String getLandUrl() {
        return this.landUrl;
    }

    public String getLanding_page() {
        MaterialMeta material = getMaterial();
        String str = material == null ? null : material.landing_page;
        return (s.a((CharSequence) str) && s.b(this.mCustomLandPageUrl)) ? this.mCustomLandPageUrl : str;
    }

    public String getLoad_id() {
        return this.load_id;
    }

    public SigMacroCommon getMacroCommon() throws UnsupportedEncodingException {
        if (this.macroCommon == null) {
            this.macroCommon = new SigMacroCommon();
            String video_url = getVideo_url();
            if (s.b(video_url)) {
                try {
                    String strEncode = URLEncoder.encode(video_url, "UTF-8");
                    if (s.b(strEncode)) {
                        this.macroCommon.addMarcoKey(SigMacroCommon._VURL_, strEncode);
                    }
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this.macroCommon;
    }

    public String getMainImage() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.image_src;
    }

    public List<String> getMarketPackageNameList() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.market_package_name;
    }

    public MaterialMeta getMaterial() {
        List<MaterialMeta> list;
        Ad ad = this.ad;
        if (ad == null || (list = ad.materials) == null || list.isEmpty()) {
            return null;
        }
        return this.ad.materials.get(0);
    }

    public int getMraidInteractionType() {
        return this.mraidInteractionType;
    }

    public ResponseNativeAd getNativeAd() {
        List<MaterialMeta> list;
        Ad ad = this.ad;
        if (ad == null || (list = ad.materials) == null || list.isEmpty()) {
            return null;
        }
        return this.ad.materials.get(0).native_ad;
    }

    public NativeAdSetting getNativeAdSetting() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.native_setting;
    }

    public SigVideo getNativeVideo() {
        ResponseNativeAd nativeAd = getNativeAd();
        if (this.nativeVideo == null) {
            if (nativeAd == null) {
                return null;
            }
            if (nativeAd.type.intValue() == 1) {
                for (ResponseAsset responseAsset : nativeAd.assets) {
                    ResponseAssetVideo responseAssetVideo = responseAsset.video;
                    if (responseAssetVideo != null) {
                        if (this.nativeVideo == null) {
                            this.nativeVideo = new SigVideo();
                        }
                        SigVideo sigVideo = this.nativeVideo;
                        sigVideo.url = responseAssetVideo.url;
                        sigVideo.height = responseAssetVideo.f36324h.intValue();
                        this.nativeVideo.width = responseAssetVideo.f36325w.intValue();
                        if (this.adPercent < 0.0d && responseAssetVideo.f36324h.intValue() > 0 && responseAssetVideo.f36325w.intValue() > 0) {
                            this.adPercent = (responseAssetVideo.f36325w.intValue() * 1.0f) / responseAssetVideo.f36324h.intValue();
                        }
                    }
                    ResponseAssetImage responseAssetImage = responseAsset.image;
                    if (responseAssetImage != null) {
                        if (this.nativeVideo == null) {
                            this.nativeVideo = new SigVideo();
                        }
                        this.nativeVideo.thumbUrl = responseAssetImage.url;
                    }
                }
            }
        }
        return this.nativeVideo;
    }

    public InterstitialSetting getNewInterstitialSetting() {
        SlotAdSetting slotAdSetting = getSlotAdSetting();
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.interstitial_setting;
    }

    public String getOriginVid() {
        return this.originVid;
    }

    public String getPermissions() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_permission");
    }

    public String getPermissionsUrl() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_permission_url");
    }

    public int getPlayMode() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.play_mode.intValue();
    }

    public String getPrivacyAgreement() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_privacy_text");
    }

    public String getPrivacyAgreementUrl() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_privacy_url");
    }

    public String getPrivacyAppName() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_name");
    }

    public String getProductId() {
        Ad ad = getAd();
        if (ad == null) {
            return null;
        }
        return ad.product_id;
    }

    public String getProxyVideoUrl() {
        String video_url = getVideo_url();
        return s.a((CharSequence) video_url) ? video_url : C1258h.d().getProxyUrl(video_url);
    }

    public int getQuickAppMaxRedirectCount() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.max_redirect_count.intValue();
    }

    public synchronized int getRedirectCount(Uri uri) {
        if (uri != null) {
            if (uri.getScheme() != null) {
                String str = uri.getScheme() + ":" + uri.getHost();
                HashMap<String, Integer> map = this.mRedirectCountMap;
                if (map == null) {
                    return 0;
                }
                Integer orDefault = map.getOrDefault(str, 0);
                if (orDefault == null) {
                    return 0;
                }
                return orDefault.intValue();
            }
        }
        return 0;
    }

    public String getRequestId() {
        return this.request_id;
    }

    public int getRequestSceneType() {
        return this.requestSceneType;
    }

    public int getRewardPercent() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.reward_percent.intValue();
    }

    public int getRewardSeconds() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.reward_seconds.intValue();
    }

    public int getRewardStyle() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.reward_style.intValue();
    }

    public RvAdSetting getRvAdSetting() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.rv_setting;
    }

    public String getRvCallBackUrl() {
        return this.rv_callback_url;
    }

    public Map<String, String> getSaasOptions() {
        return this.saasOptions;
    }

    public Template getScene() {
        return this.scene;
    }

    public int getSensitivity() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.sensitivity.intValue();
    }

    public ah getSessionManager() {
        return this.mSessionManager;
    }

    public int getShakeCount() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.shake_count.intValue();
    }

    public int getShakeTimeThreshold() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.shake_time_threshold.intValue();
    }

    public int getShakeTriggerType() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.shake_trigger_type.intValue();
    }

    public SingleNativeAdSetting getSingleNativeSetting() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return null;
        }
        return adSetting.single_native_setting;
    }

    public int getSkipPercent() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return -1;
        }
        return ((Integer) Wire.get(rvAdSetting.skip_percent, 0)).intValue();
    }

    public int getSkipSeconds() {
        Integer num;
        if (this.ad_type == 6) {
            InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
            if (newInterstitialSetting == null) {
                return -1;
            }
            num = newInterstitialSetting.show_skip_seconds;
        } else {
            RvAdSetting rvAdSetting = getRvAdSetting();
            if (rvAdSetting == null) {
                return -1;
            }
            num = (Integer) Wire.get(rvAdSetting.skip_seconds, 0);
        }
        return num.intValue();
    }

    public List<LinkAction> getSlotAdLinkActions() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.link_actions;
    }

    public SlotAdSetting getSlotAdSetting() {
        return this.slotAdSetting;
    }

    public SplashAdSetting getSplashAdSetting() {
        SlotAdSetting slotAdSetting = getSlotAdSetting();
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.splash_setting;
    }

    public String getSplashFilePath() {
        String splashURL = getSplashURL();
        return n.e() + File.separator + Md5Util.md5(splashURL);
    }

    public String getSplashURL() {
        MaterialMeta material = getMaterial();
        return material == null ? "" : EnumC1270n.CreativeTypeSplashVideo.a() == material.creative_type.intValue() ? material.video_url : material.image_src;
    }

    public int getTemplateId() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.template_id.intValue();
    }

    public int getTemplateType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.template_type.intValue();
    }

    public String getTitle() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.title;
    }

    public String getTraceId() {
        return this.traceId;
    }

    public int getTrackingRetryNum() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return 0;
        }
        return slotAdSetting.retry_count.intValue();
    }

    public String getUuid() {
        if (this.uuid == null) {
            this.uuid = UUID.randomUUID().toString();
        }
        return this.uuid;
    }

    public String getVid() {
        Ad ad = getAd();
        if (ad == null) {
            return null;
        }
        return ad.vid;
    }

    public VideoStatusCommon getVideoCommon() {
        if (this.videoCommon == null) {
            this.videoCommon = new VideoStatusCommon();
        }
        return this.videoCommon;
    }

    public String getVideoCoverImageUrl() {
        SigVideo sigVideo = this.nativeVideo;
        if (sigVideo == null) {
            return null;
        }
        return sigVideo.thumbUrl;
    }

    public boolean getVideoErrorReward() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(rvAdSetting.video_error_reward, Boolean.FALSE)).booleanValue();
    }

    public String getVideoPath() {
        File videoProxyFile = getVideoProxyFile();
        if (videoProxyFile == null) {
            return null;
        }
        return videoProxyFile.getAbsolutePath();
    }

    public File getVideoProxyFile() {
        String video_url = getVideo_url();
        if (s.a((CharSequence) video_url)) {
            return null;
        }
        return C1258h.d().getCacheFile(video_url);
    }

    public String getVideoTmpPath() {
        return n.a() + String.format("/%s.mp4.tmp", getVideo_md5());
    }

    public String getVideo_OriginMD5() {
        return this.video_md5;
    }

    public String getVideo_md5() {
        return s.b(this.video_md5) ? this.video_md5 : Md5Util.md5(getVideo_url());
    }

    public String getVideo_url() {
        List<MaterialMeta> list;
        String str;
        Ad ad = this.ad;
        if (ad == null || (list = ad.materials) == null || list.isEmpty()) {
            return null;
        }
        if (this.ad_type == 5) {
            SigVideo nativeVideo = getNativeVideo();
            if (nativeVideo == null) {
                return null;
            }
            str = nativeVideo.url;
        } else {
            MaterialMeta materialMeta = this.ad.materials.get(0);
            if (materialMeta == null) {
                return null;
            }
            str = materialMeta.video_url;
        }
        return StringUtil.getUrl(str);
    }

    public WXProgramRes getWXProgramRes() {
        WXProgramRes wXProgramRes;
        Ad ad = getAd();
        if (ad == null || (wXProgramRes = ad.wx_program_res) == null) {
            return null;
        }
        return wXProgramRes;
    }

    public Widget getWidget(int i2) {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        List<Widget> list = material.Widget_list;
        if (!com.sigmob.sdk.base.utils.f.a(list) && com.sigmob.sdk.base.utils.f.a(i2, list.size())) {
            return list.get(i2);
        }
        return null;
    }

    public long getWidgetId(int i2) {
        Widget widget = getWidget(i2);
        if (widget == null) {
            return 0L;
        }
        return widget.widget_id.longValue();
    }

    public int getWidgetIntervalTime() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.widget_interval_time.intValue();
    }

    public AdPrivacy getadPrivacy() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.ad_privacy;
    }

    public int getsubInteractionType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.sub_interaction_type.intValue();
    }

    public boolean hasEndCard() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return false;
        }
        return material.has_endcard.booleanValue();
    }

    public boolean hasReachedMaxRedirectCount() {
        String vid = getVid();
        int quickAppMaxRedirectCount = getQuickAppMaxRedirectCount();
        if (s.a((CharSequence) vid) || quickAppMaxRedirectCount <= 0) {
            return true;
        }
        Integer num = this.mMaxRedirectCountMap.get(vid);
        return (num == null || num.intValue() == 0 || num.intValue() < quickAppMaxRedirectCount) ? false : true;
    }

    public void incrementRedirectCount() {
        String vid = getVid();
        Integer num = this.mMaxRedirectCountMap.get(vid);
        int iIntValue = 1;
        if (num != null && num.intValue() != 0) {
            iIntValue = 1 + num.intValue();
        }
        this.mMaxRedirectCountMap.put(vid, Integer.valueOf(iIntValue));
    }

    public boolean isCatchVideo() {
        return this.catchVideo;
    }

    public boolean isClickAutoCloseSplash() {
        return false;
    }

    public boolean isDisable_download_listener() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(adSetting.disable_download_listener, Boolean.FALSE)).booleanValue();
    }

    public boolean isDisablexRequestWith() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(slotAdSetting.disable_x_requested_with, Boolean.FALSE)).booleanValue();
    }

    public boolean isDislikeReported() {
        return this.isDislikeReported;
    }

    public boolean isDownloadDialog() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return false;
        }
        return material.download_dialog.booleanValue();
    }

    public boolean isEndCardIndexExist() {
        if (!s.b(getEndcard_url())) {
            return true;
        }
        if (getCreativeType() == EnumC1270n.CreativeTypeVideo_Tar.a() || getCreativeType() == EnumC1270n.CreativeTypeVideo_Tar_Companion.a()) {
            return new File(getEndCardIndexPath()).exists();
        }
        return true;
    }

    public boolean isExpiredAd() {
        long jIntValue = getAdExpiredTime().intValue();
        return (jIntValue == 0 || this.create_time == 0 || System.currentTimeMillis() - this.create_time < jIntValue) ? false : true;
    }

    public boolean isHalfInterstitial() {
        return this.isHalfInterstitial;
    }

    public boolean isNativeAdH5() {
        return true;
    }

    public boolean isRecord() {
        return this.record;
    }

    public boolean isResumableDownload() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(slotAdSetting.resumable_download, Boolean.FALSE)).booleanValue();
    }

    public boolean isSkipSigmobBrowser() {
        AdSetting adSetting = getAdSetting();
        return (adSetting == null || ((Boolean) Wire.get(adSetting.in_app, Boolean.FALSE)).booleanValue()) ? false : true;
    }

    public boolean isUse_floating_btn() {
        SplashAdSetting splashAdSetting = getSplashAdSetting();
        if (splashAdSetting == null) {
            return false;
        }
        return splashAdSetting.use_floating_btn.booleanValue();
    }

    public boolean isValid(int i2) {
        return (i2 == 1 && s.b(getDeeplinkUrl())) || i2 == 9;
    }

    public boolean isVideoExist() {
        if (s.a((CharSequence) getVideo_url())) {
            return true;
        }
        String videoPath = getVideoPath();
        boolean zExists = new File(videoPath).exists();
        SigmobLog.d("isVideoExist: path = " + videoPath + ", exist = " + zExists);
        return zExists;
    }

    public boolean noHasDownloadDialog() {
        int interactionType = getInteractionType();
        return ((interactionType == 2 || interactionType == 3) && getadPrivacy() != null && isDownloadDialog()) ? false : true;
    }

    public String resourcePath() {
        int creativeType = getCreativeType();
        return (s.b(getEndcard_url()) && (creativeType == EnumC1270n.CreativeTypeVideo_Tar.a() || creativeType == EnumC1270n.CreativeTypeVideo_Tar_Companion.a())) ? getEndCardIndexPath() : s.b(getHtmlData()) ? getHtmlData() : getHtmlUrl();
    }

    public void setAd(Ad ad) {
        this.ad = ad;
    }

    public void setAdSize(int i2, int i3) {
        this.adWidth = i2;
        this.adHeight = i3;
        getMacroCommon().addMarcoKey(SigMacroCommon._WIDTH_, String.valueOf(i2));
        getMacroCommon().addMarcoKey(SigMacroCommon._HEIGHT_, String.valueOf(i3));
    }

    public void setAd_scene_desc(String str) {
        this.ad_scene_desc = str;
    }

    public void setAd_scene_id(String str) {
        this.ad_scene_id = str;
    }

    public void setAd_source_channel(String str) {
        this.ad_source_channel = str;
    }

    public void setAd_type(int i2) {
        this.ad_type = i2;
    }

    public void setAdslot_id(String str) {
        this.adslot_id = str;
    }

    public void setAdx_id(String str) {
        this.adx_id = str;
    }

    public void setApkName(String str) {
        this.apkName = str;
    }

    public void setApkPackageName(String str) {
        this.apkPackageName = str;
    }

    public void setBid_token(String str) {
        this.bid_token = str;
    }

    public void setCamp_id(String str) {
        this.camp_id = str;
    }

    public void setCatchVideo(boolean z2) {
        this.catchVideo = z2;
    }

    public void setCreate_time(long j2) {
        this.create_time = j2;
    }

    public void setCrid(String str) {
        this.crid = str;
    }

    public void setCustomAndroidMarket(AndroidMarket androidMarket) {
        this.mCustomAndroidMarket = androidMarket;
    }

    public void setCustomDeeplink(String str) {
        this.mCustomDeeplink = str;
    }

    public void setCustomLandPageUrl(String str) {
        this.mCustomLandPageUrl = str;
    }

    public void setDeeplinkUri(Uri uri) {
        this.deeplinkUri = uri;
    }

    public void setDownloadId(Long l2) {
        this.downloadId = l2;
    }

    public void setDownloadQuarterTrack(List<C1377d> list) {
        this.download_trackers = list;
    }

    public void setDownloadTask(f fVar) {
        this.downloadTask = fVar;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setEndcard_md5(String str) {
        this.endcard_md5 = str;
    }

    public void setHalfInterstitial(boolean z2) {
        this.isHalfInterstitial = z2;
    }

    public void setLoad_id(String str) {
        this.load_id = str;
    }

    public void setMacroCommon(SigMacroCommon sigMacroCommon) {
        this.macroCommon = sigMacroCommon;
    }

    public void setMraidInteractionType(int i2) {
        this.mraidInteractionType = i2;
    }

    public void setOriginVid(String str) {
        this.originVid = str;
    }

    public void setRecord(boolean z2) {
        this.record = z2;
    }

    public void setRequestSceneType(int i2) {
        this.requestSceneType = i2;
    }

    public void setRequest_id(String str) {
        this.request_id = str;
    }

    public void setRvCallBackUrl(String str) {
        this.rv_callback_url = str;
    }

    public void setSaasOptions(Map<String, String> map) {
        this.saasOptions = map;
    }

    public void setSessionManager(ah ahVar) {
        this.mSessionManager = ahVar;
    }

    public void setTraceId(String str) {
        this.traceId = str;
    }

    public void setUrl(String str) {
        this.landUrl = str;
    }

    public void setVideo_md5(String str) {
        this.video_md5 = str;
    }

    public void updateRealAdPercent(double d2) {
        this.realAdPercent = d2;
    }

    public boolean enableSmallWindow(Integer num) {
        int interactionType = num == null ? getInteractionType() : num.intValue();
        Boolean boolEnableSmallWindow = enableSmallWindow();
        return boolEnableSmallWindow != null && isValid(interactionType) && boolEnableSmallWindow.booleanValue();
    }
}
