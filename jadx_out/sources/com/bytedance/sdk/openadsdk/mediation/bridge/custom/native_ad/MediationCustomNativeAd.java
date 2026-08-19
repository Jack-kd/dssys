package com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.byazt.ik.a;
import com.byazt.kj.hp;
import com.byazt.lu.l;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationViewBinder;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationValueUtil;
import com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomNativeDislikeDialog;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1559, 2438})
/* loaded from: classes3.dex */
public class MediationCustomNativeAd extends com.byazt.lu.hp implements IMediationCustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private String f29020a;

    /* renamed from: e, reason: collision with root package name */
    private String f29021e;
    private int eb;
    private MediationNativeAdAppInfo ec;
    private int gu;
    private double hp;

    /* renamed from: j, reason: collision with root package name */
    private String f29022j;
    private int jl;
    private String jx;

    /* renamed from: k, reason: collision with root package name */
    private List<String> f29023k;

    /* renamed from: l, reason: collision with root package name */
    private Map<String, Object> f29024l;

    /* renamed from: n, reason: collision with root package name */
    private MediationCustomNativeDislikeDialog f29025n;

    /* renamed from: q, reason: collision with root package name */
    private String f29026q;

    /* renamed from: s, reason: collision with root package name */
    private int f29027s;
    private Function sz;

    /* renamed from: u, reason: collision with root package name */
    private boolean f29028u;

    /* renamed from: v, reason: collision with root package name */
    private String f29029v;
    private int vv;

    /* renamed from: w, reason: collision with root package name */
    private String f29030w;
    private int xs;
    private double zy;

    private Integer hp() {
        MediationConstant.AdIsReadyStatus adIsReadyStatusIsReadyCondition = isReadyCondition();
        if (adIsReadyStatusIsReadyCondition == MediationConstant.AdIsReadyStatus.ADN_NO_READY_API) {
            return 1;
        }
        if (adIsReadyStatusIsReadyCondition == MediationConstant.AdIsReadyStatus.AD_IS_READY) {
            return 2;
        }
        if (adIsReadyStatusIsReadyCondition == MediationConstant.AdIsReadyStatus.AD_IS_EXPIRED) {
            return 3;
        }
        return adIsReadyStatusIsReadyCondition == MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY ? 4 : 1;
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        MediationAdDislike dislikeDialog;
        if (i2 == 8127) {
            this.sz = l.covertToFunction(valueSet.objectValue(8034, Object.class));
        } else if (i2 == 6083) {
            render();
        } else {
            if (i2 == 6081) {
                return (T) getExpressView();
            }
            if (i2 == 8159) {
                registerView((Activity) valueSet.objectValue(20033, Activity.class), (ViewGroup) valueSet.objectValue(8067, ViewGroup.class), (List) valueSet.objectValue(8068, List.class), (List) valueSet.objectValue(8069, List.class), (List) valueSet.objectValue(8070, List.class), BridgeUtil.buildViewBinder(l.covertToFunction(valueSet.objectValue(8071, Object.class))));
            } else {
                if (i2 == 8135) {
                    return (T) Boolean.valueOf(hasDislike());
                }
                if (i2 == 8149) {
                    onPause();
                } else if (i2 == 8148) {
                    onResume();
                } else if (i2 == 8109) {
                    onDestroy();
                } else {
                    if (i2 == 8121) {
                        return (T) hp();
                    }
                    if (i2 == 8194) {
                        String strStringValue = valueSet.stringValue(8036, null);
                        Map<String, Object> map = (Map) valueSet.objectValue(8075, Map.class);
                        MediationCustomNativeDislikeDialog mediationCustomNativeDislikeDialog = this.f29025n;
                        if (mediationCustomNativeDislikeDialog != null) {
                            mediationCustomNativeDislikeDialog.dislikeClick(strStringValue, map);
                        }
                    } else if (i2 == 6072) {
                        Activity activity = (Activity) valueSet.objectValue(20033, Activity.class);
                        Map<String, Object> map2 = (Map) valueSet.objectValue(8075, Map.class);
                        MediationCustomNativeDislikeDialog mediationCustomNativeDislikeDialog2 = this.f29025n;
                        if (mediationCustomNativeDislikeDialog2 != null && (dislikeDialog = mediationCustomNativeDislikeDialog2.getDislikeDialog(activity, map2)) != null) {
                            return (T) new com.byazt.gh.l(dislikeDialog);
                        }
                    } else {
                        if (i2 == 8320) {
                            return (T) new MediationCustomizeVideoImpl(getNativeCustomVideoReporter());
                        }
                        if (i2 == 8228) {
                            return (T) getVideoUrl();
                        }
                        if (i2 == 8225) {
                            a.jx(MediationConstant.TAG, "MediationCustomNativeAd receiveBidResult");
                            receiveBidResult(valueSet.booleanValue(8406), valueSet.doubleValue(8407), valueSet.intValue(8408), (Map) valueSet.objectValue(8075, Map.class));
                        } else if (i2 == 6164) {
                            return (T) getVideoView();
                        }
                    }
                }
            }
        }
        return (T) MediationValueUtil.checkClassType(cls);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callAdClick() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8130);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callAdShow() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8113);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callDislikeCancel() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8184);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callDislikeSelected(int i2, String str) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8132);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8038, Integer.valueOf(i2));
            sparseArray.put(8039, str);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callDislikeShow() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8185);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callOnDownloadActive(long j2, long j3) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8187);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8062, Long.valueOf(j2));
            sparseArray.put(8063, Long.valueOf(j3));
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callOnDownloadFailed(long j2, long j3, String str, String str2) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8157);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8062, Long.valueOf(j2));
            sparseArray.put(8063, Long.valueOf(j3));
            sparseArray.put(8066, str);
            sparseArray.put(8056, str2);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callOnDownloadFinished(long j2, String str, String str2) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8155);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8062, Long.valueOf(j2));
            sparseArray.put(8066, str);
            sparseArray.put(8056, str2);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callOnDownloadPaused(long j2, long j3, String str, String str2) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8158);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8062, Long.valueOf(j2));
            sparseArray.put(8063, Long.valueOf(j3));
            sparseArray.put(8066, str);
            sparseArray.put(8056, str2);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callOnIdle() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8152);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callOnInstalled(String str, String str2) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8156);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8066, str);
            sparseArray.put(8056, str2);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callRenderFail(View view, int i2, String str) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8134);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8042, view);
            sparseArray.put(8014, Integer.valueOf(i2));
            sparseArray.put(8015, str);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callRenderSuccess(float f2, float f3) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8133);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8040, Float.valueOf(f2));
            sparseArray.put(8041, Float.valueOf(f3));
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callVideoCompleted() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8118);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callVideoError(int i2, String str) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8117);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8014, Integer.valueOf(i2));
            sparseArray.put(8015, str);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callVideoPause() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8146);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callVideoProgressUpdate(long j2, long j3) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8154);
            sparseArray.put(-99999985, Void.class);
            sparseArray.put(8072, Long.valueOf(j2));
            sparseArray.put(8073, Long.valueOf(j3));
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callVideoResume() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8150);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void callVideoStart() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8145);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        return getValues();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public int getBiddingType() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8226);
            sparseArray.put(-99999985, Integer.class);
            Integer num = (Integer) this.sz.apply(sparseArray);
            if (num != null) {
                return num.intValue();
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public View getExpressView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public TTFeedAd.CustomizeVideo getNativeCustomVideoReporter() {
        return null;
    }

    public SparseArray<Object> getValues() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(8016, Double.valueOf(this.hp));
        sparseArray.put(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, this.f29024l);
        sparseArray.put(8045, this.jx);
        sparseArray.put(8046, this.f29022j);
        sparseArray.put(8048, this.f29030w);
        sparseArray.put(8050, this.f29020a);
        sparseArray.put(8051, Integer.valueOf(this.f29027s));
        sparseArray.put(8052, Integer.valueOf(this.eb));
        sparseArray.put(8061, this.f29026q);
        sparseArray.put(8054, this.f29021e);
        sparseArray.put(8420, Integer.valueOf(this.gu));
        sparseArray.put(8421, Integer.valueOf(this.jl));
        sparseArray.put(8082, Double.valueOf(this.zy));
        sparseArray.put(8053, this.f29023k);
        sparseArray.put(8049, this.f29029v);
        sparseArray.put(8033, Boolean.valueOf(this.f29028u));
        sparseArray.put(8060, Integer.valueOf(this.xs));
        sparseArray.put(8059, Integer.valueOf(this.vv));
        MediationNativeAdAppInfo mediationNativeAdAppInfo = this.ec;
        if (mediationNativeAdAppInfo != null) {
            sparseArray.put(8315, new MediationNativeAppInfoImpl(mediationNativeAdAppInfo));
        }
        return sparseArray;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public String getVideoUrl() {
        return null;
    }

    public View getVideoView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public boolean hasDislike() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public boolean isClientBidding() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8110);
            sparseArray.put(-99999985, Boolean.class);
            Boolean bool = (Boolean) this.sz.apply(sparseArray);
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public MediationConstant.AdIsReadyStatus isReadyCondition() {
        return MediationConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public boolean isServerBidding() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8136);
            sparseArray.put(-99999985, Boolean.class);
            Boolean bool = (Boolean) this.sz.apply(sparseArray);
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public boolean isUseCustomVideo() {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 8160);
            sparseArray.put(-99999985, Boolean.class);
            Boolean bool = (Boolean) this.sz.apply(sparseArray);
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void onDestroy() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void onPause() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void onResume() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void receiveBidResult(boolean z2, double d2, int i2, Map<String, Object> map) {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void registerView(@Nullable Activity activity, @Nullable ViewGroup viewGroup, @Nullable List<View> list, @Nullable List<View> list2, @Nullable List<View> list3, @Nullable MediationViewBinder mediationViewBinder) {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void render() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setActionText(String str) {
        this.f29026q = str;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setAdImageMode(int i2) {
        this.xs = i2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setBiddingPrice(double d2) {
        this.hp = d2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setDescription(String str) {
        this.f29022j = str;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setDislikeDialogCallBack(MediationCustomNativeDislikeDialog mediationCustomNativeDislikeDialog) {
        if (this.sz != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, 6085);
            sparseArray.put(-99999985, Void.class);
            this.sz.apply(sparseArray);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setExpressAd(boolean z2) {
        this.f29028u = z2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setIconUrl(String str) {
        this.f29030w = str;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setImageHeight(int i2) {
        this.f29027s = i2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setImageList(List<String> list) {
        this.f29023k = list;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setImageUrl(String str) {
        this.f29020a = str;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setImageWidth(int i2) {
        this.eb = i2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setInteractionType(int i2) {
        this.vv = i2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setMediaExtraInfo(Map<String, Object> map) {
        this.f29024l = map;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setNativeAdAppInfo(MediationNativeAdAppInfo mediationNativeAdAppInfo) {
        this.ec = mediationNativeAdAppInfo;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setPackageName(String str) {
        this.f29021e = str;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setSource(String str) {
        this.f29029v = str;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setStarRating(double d2) {
        this.zy = d2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setTitle(String str) {
        this.jx = str;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setVideoHeight(int i2) {
        this.jl = i2;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.custom.IMediationCustomNativeAd
    public void setVideoWidth(int i2) {
        this.gu = i2;
    }
}
