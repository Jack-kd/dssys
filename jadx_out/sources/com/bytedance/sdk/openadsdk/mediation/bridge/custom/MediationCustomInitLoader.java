package com.bytedance.sdk.openadsdk.mediation.bridge.custom;

import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.byazt.ik.a;
import com.byazt.kj.hp;
import com.byazt.xi.jx;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.LocationProvider;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.bridge.IMediationLocation;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationInitConfig;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationValueUtil;
import com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1857})
/* loaded from: classes3.dex */
public abstract class MediationCustomInitLoader extends com.byazt.lu.hp {
    private Function<SparseArray<Object>, Object> hp;

    private void hp() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, Integer.valueOf(AVMDLDataLoader.KeyIsLoaderFactoryP2PLevel));
            sparseArray.put(-99999985, String.class);
            sparseArray.put(8402, this);
            this.hp.apply(sparseArray);
        }
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        if (i2 == 8240) {
            initAdn((Context) valueSet.objectValue(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, Context.class), jx.hp((SparseArray<Object>) valueSet.objectValue(8424, SparseArray.class)).l());
        } else {
            if (i2 == 8139) {
                return (T) getBiddingToken((Context) valueSet.objectValue(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, Context.class), (Map) valueSet.objectValue(8075, Map.class));
            }
            if (i2 == 8217) {
                return (T) getSdkInfo((Context) valueSet.objectValue(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, Context.class), (Map) valueSet.objectValue(8075, Map.class));
            }
            if (i2 == 8218) {
                return (T) getNetworkSdkVersion();
            }
        }
        return (T) MediationValueUtil.checkClassType(cls);
    }

    public final void callInitSuccess() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, Integer.valueOf(AVMDLDataLoader.KeyIsEnableEarlyData));
            sparseArray.put(-99999985, String.class);
            this.hp.apply(sparseArray);
        }
    }

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        return null;
    }

    public String getBiddingToken(Context context, Map<String, Object> map) {
        return null;
    }

    public abstract String getNetworkSdkVersion();

    public String getSdkInfo(Context context, Map<String, Object> map) {
        return null;
    }

    public final void initAdn(Context context, ValueSet valueSet) {
        MediationInitConfig mediationInitConfigCreate = MediationInitConfig.create(valueSet);
        TTCustomController tTCustomControllerHp = hp(mediationInitConfigCreate);
        Map customInitMap = mediationInitConfigCreate.getCustomInitMap();
        if (customInitMap == null) {
            customInitMap = new HashMap();
        }
        customInitMap.put("custom_controller", tTCustomControllerHp);
        initInnerADN(context, new com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomInitConfig(mediationInitConfigCreate.getCustomInitConfigValueSet()), customInitMap, mediationInitConfigCreate.getCustomGMConfiguration());
    }

    public final void initInnerADN(Context context, com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomInitConfig mediationCustomInitConfig, Map<String, Object> map, Function<SparseArray<Object>, Object> function) {
        this.hp = function;
        hp();
        try {
            initializeADN(context, mediationCustomInitConfig, map);
        } catch (Exception e2) {
            a.hp(e2);
        }
    }

    public abstract void initializeADN(Context context, com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomInitConfig mediationCustomInitConfig, Map<String, Object> map);

    public final boolean isInit() {
        if (this.hp == null) {
            return false;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 8220);
        sparseArray.put(-99999985, Boolean.class);
        return ((Boolean) MediationValueUtil.objectValue(this.hp.apply(sparseArray), Boolean.class, Boolean.FALSE)).booleanValue();
    }

    public void notifyInitDuration(boolean z2, long j2) {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 8270);
            sparseArray.put(-99999985, String.class);
            sparseArray.put(8073, Long.valueOf(j2));
            sparseArray.put(8557, Integer.valueOf(z2 ? 1 : 0));
            this.hp.apply(sparseArray);
        }
    }

    private TTCustomController hp(final MediationInitConfig mediationInitConfig) {
        return new TTCustomController() { // from class: com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomInitLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean alist() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.appList() : super.alist();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public String getAndroidId() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.getAndroidId() : super.getAndroidId();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            @Nullable
            public String getDevImei() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.getDevImei() : super.getDevImei();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public String getDevOaid() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.getDevOaid() : super.getDevOaid();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public String getMacAddress() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.getMacAddress() : super.getMacAddress();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            @Nullable
            public LocationProvider getTTLocation() {
                IMediationLocation location;
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                if (mediationInitConfig2 == null || (location = mediationInitConfig2.getLocation()) == null) {
                    return super.getTTLocation();
                }
                final double latitude = location.getLatitude();
                final double longitude = location.getLongitude();
                return new LocationProvider() { // from class: com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomInitLoader.1.1
                    @Override // com.bytedance.sdk.openadsdk.LocationProvider
                    public double getLatitude() {
                        return latitude;
                    }

                    @Override // com.bytedance.sdk.openadsdk.LocationProvider
                    public double getLongitude() {
                        return longitude;
                    }
                };
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseAndroidId() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.isCanUseAndroidId() : super.isCanUseAndroidId();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseLocation() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.isCanUseLocation() : super.isCanUseLocation();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUsePermissionRecordAudio() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.isCanUsePermissionRecordAudio() : super.isCanUsePermissionRecordAudio();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUsePhoneState() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.isCanUsePhoneState() : super.isCanUsePhoneState();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseWifiState() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.isCanUseWifiState() : super.isCanUseWifiState();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseWriteExternal() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.isCanUseWriteExternal() : super.isCanUseWriteExternal();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public Map<String, Object> userPrivacyConfig() {
                MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                return mediationInitConfig2 != null ? mediationInitConfig2.userPrivacyConfig() : super.userPrivacyConfig();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public MediationPrivacyConfig getMediationPrivacyConfig() {
                return new MediationPrivacyConfig() { // from class: com.bytedance.sdk.openadsdk.mediation.bridge.custom.MediationCustomInitLoader.1.2
                    @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                    @Nullable
                    public List<String> getCustomAppList() {
                        MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                        return mediationInitConfig2 != null ? mediationInitConfig2.getAppList() : super.getCustomAppList();
                    }

                    @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                    @Nullable
                    public List<String> getCustomDevImeis() {
                        MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                        return mediationInitConfig2 != null ? mediationInitConfig2.getDevImeis() : super.getCustomDevImeis();
                    }

                    @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                    public boolean isCanUseOaid() {
                        MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                        return mediationInitConfig2 != null ? mediationInitConfig2.isCanUseOaid() : super.isCanUseOaid();
                    }

                    @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                    public boolean isLimitPersonalAds() {
                        MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                        return mediationInitConfig2 != null ? mediationInitConfig2.isLimitPersonalAds() : super.isLimitPersonalAds();
                    }

                    @Override // com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig, com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
                    public boolean isProgrammaticRecommend() {
                        MediationInitConfig mediationInitConfig2 = mediationInitConfig;
                        return mediationInitConfig2 != null ? mediationInitConfig2.isProgrammaticRecommend() : super.isProgrammaticRecommend();
                    }
                };
            }
        };
    }
}
