package com.bytedance.sdk.openadsdk.mediation.bridge.valueset;

import android.util.SparseArray;
import com.byazt.ik.a;
import com.byazt.kj.hp;
import com.byazt.lu.l;
import com.byazt.xi.jx;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.bridge.IMediationLocation;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomInitConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;
import okhttp3.internal.ws.WebSocketProtocol;
import org.json.JSONObject;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 1583, 1962})
/* loaded from: classes3.dex */
public class MediationInitConfig {
    private static String hp = "MEDIATION_LOG";

    /* renamed from: j, reason: collision with root package name */
    private ValueSet f29036j;
    private ValueSet jx;

    /* renamed from: l, reason: collision with root package name */
    private ValueSet f29037l;

    private MediationInitConfig(ValueSet valueSet) {
        this.f29037l = valueSet;
        if (valueSet != null) {
            this.f29036j = jx.hp((SparseArray<Object>) valueSet.objectValue(8457, SparseArray.class)).l();
            this.jx = jx.hp((SparseArray<Object>) this.f29037l.objectValue(8475, SparseArray.class)).l();
        }
        hp();
    }

    public static MediationInitConfig create(ValueSet valueSet) {
        return new MediationInitConfig(valueSet);
    }

    private void hp() {
        jx();
        j();
        l();
    }

    private void j() {
        a.jx(hp, "---------  sdk 隐私设置 start ----");
        a.jx(hp, "isCanUseLocation：" + isCanUseLocation());
        IMediationLocation location = getLocation();
        if (location != null) {
            a.jx(hp, "getLocation getLatitude：" + location.getLatitude());
            a.jx(hp, "getLocation getLongitude：" + location.getLongitude());
        } else {
            a.jx(hp, "getLocation is null");
        }
        a.jx(hp, "appList：" + appList());
        a.jx(hp, "isCanUsePhoneState：" + isCanUsePhoneState());
        a.jx(hp, "isLimitPersonalAds：" + isLimitPersonalAds());
        a.jx(hp, "getDevImei：" + getDevImei());
        a.jx(hp, "isCanUseWifiState：" + isCanUseWifiState());
        a.jx(hp, "getMacAddress：" + getMacAddress());
        a.jx(hp, "isCanUseWriteExternal：" + isCanUseWriteExternal());
        a.jx(hp, "isCanUseAndroidId：" + isCanUseAndroidId());
        a.jx(hp, "getAndroidId：" + getAndroidId());
        a.jx(hp, "isCanUseMessage：" + isCanUseMessage());
        List<String> appList = getAppList();
        a.jx(hp, "getAppList：".concat(String.valueOf(appList)));
        if (appList != null) {
            Iterator<String> it = appList.iterator();
            while (it.hasNext()) {
                a.jx(hp, "getAppList item: ".concat(String.valueOf(it.next())));
            }
        }
        List<String> devImeis = getDevImeis();
        a.jx(hp, "getDevImeis：".concat(String.valueOf(devImeis)));
        if (devImeis != null) {
            Iterator<String> it2 = devImeis.iterator();
            while (it2.hasNext()) {
                a.jx(hp, "getDevImeis item: ".concat(String.valueOf(it2.next())));
            }
        }
        a.jx(hp, "getDevOaid：" + getDevOaid());
        a.jx(hp, "isCanUseOaid：" + isCanUseOaid());
        a.jx(hp, "isCanUseMacAddress：" + isCanUseMacAddress());
        a.jx(hp, "isProgrammaticRecommend：" + isProgrammaticRecommend());
        a.jx(hp, "isCanUsePermissionRecordAudio：" + isCanUsePermissionRecordAudio());
        a.jx(hp, "---------  sdk 隐私设置 end ----");
    }

    private void jx() {
        a.jx(hp, "---------  sdk 初始化信息 start ----");
        a.jx(hp, "isDebug：" + isDebug());
        a.jx(hp, "getClassName：" + getClassName());
        a.jx(hp, "getAppId：" + getAppId());
        a.jx(hp, "getAppName：" + getAppName());
        a.jx(hp, "getADNName：" + getADNName());
        a.jx(hp, "getAppKey：" + getAppKey());
        a.jx(hp, "getInitCallback：" + getInitCallback());
        a.jx(hp, "getAgeGroup：" + getAgeGroup());
        a.jx(hp, "isCustom：" + isCustom());
        a.jx(hp, "getCustomInitConfig：" + getCustomInitConfig());
        a.jx(hp, "getCustomInitMap：" + getCustomInitMap());
        a.jx(hp, "getCustomGMConfiguration：" + getCustomGMConfiguration());
        a.jx(hp, "getKsAdapterVersion：" + getKsAdapterVersion());
        a.jx(hp, "getGromoreVersion：" + getGromoreVersion());
        a.jx(hp, "getAdmobAdapterVersion：" + getAdmobAdapterVersion());
        a.jx(hp, "getBaiduAdapterVersion：" + getBaiduAdapterVersion());
        a.jx(hp, "getGdtAdapterVersion：" + getGdtAdapterVersion());
        a.jx(hp, "getKlevinAdapterVersion：" + getKlevinAdapterVersion());
        a.jx(hp, "getMintegralAdapterVersion：" + getMintegralAdapterVersion());
        a.jx(hp, "getSigmobAdapterVersion：" + getSigmobAdapterVersion());
        a.jx(hp, "getUnityAdapterVersion：" + getUnityAdapterVersion());
        a.jx(hp, "getMap：" + getInitAdnMap());
        a.jx(hp, "---------  sdk 初始化信息 end ----");
    }

    private void l() {
        a.jx(hp, "---------  sdk 聚合信息 start ----");
        a.jx(hp, "getHttps：" + getHttps());
        a.jx(hp, "getWxAppId：" + getWxAppId());
        a.jx(hp, "getPublisherDid：" + getPublisherDid());
        a.jx(hp, "isOpenAdnTest：" + isOpenAdnTest());
        a.jx(hp, "getMediationConfigUserInfoForSegment：" + getMediationConfigUserInfoForSegment());
        a.jx(hp, "getLocalExtra：" + getLocalExtra());
        a.jx(hp, "getCustomLocalConfig：" + getCustomLocalConfig());
        a.jx(hp, "getOpensdkVer：" + getOpensdkVer());
        a.jx(hp, "isWxInstalled：" + isWxInstalled());
        a.jx(hp, "isSupportH265：" + isSupportH265());
        a.jx(hp, "isSupportSplashZoomout：" + isSupportSplashZoomout());
        a.jx(hp, "---------  sdk 聚合信息 end ----");
    }

    private boolean w() {
        ValueSet valueSet = this.f29037l;
        return (valueSet == null || valueSet.isEmpty()) ? false : true;
    }

    public boolean appList() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8026);
        }
        return true;
    }

    public String getADNName() {
        return w() ? this.f29037l.stringValue(8003) : "";
    }

    public String getAdapterManagerClassName() {
        ValueSet valueSet = this.f29037l;
        if (valueSet != null) {
            return valueSet.stringValue(8560);
        }
        return null;
    }

    public String getAdmobAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8412) : "";
    }

    public int getAgeGroup() {
        if (w()) {
            return this.f29037l.intValue(7);
        }
        return 0;
    }

    public String getAndroidId() {
        ValueSet valueSet = this.jx;
        return valueSet != null ? valueSet.stringValue(8485) : "";
    }

    public String getAppId() {
        if (w()) {
            return this.f29037l.stringValue(3);
        }
        return null;
    }

    public String getAppKey() {
        return w() ? this.f29037l.stringValue(AVMDLDataLoader.KeyIsLiveWatchDurationThreshold) : "";
    }

    public List<String> getAppList() {
        Function<SparseArray<Object>, Object> functionCovertToFunction;
        ValueSet valueSet = this.jx;
        if (valueSet != null && (functionCovertToFunction = l.covertToFunction(valueSet.objectValue(8311, Object.class))) != null) {
            Object obj = functionCovertToFunction instanceof Supplier ? ((Supplier) functionCovertToFunction).get() : null;
            if (obj instanceof SparseArray) {
                return (List) MediationValueUtil.objectValue(((SparseArray) obj).get(8476), List.class, null);
            }
        }
        return new LinkedList();
    }

    public String getAppName() {
        return w() ? this.f29037l.stringValue(8) : "";
    }

    public String getBaiduAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8413) : "";
    }

    public String getClassName() {
        return w() ? this.f29037l.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow) : "";
    }

    public Function getCustomGMConfiguration() {
        if (w()) {
            return l.covertToFunction(this.f29037l.objectValue(8401, Object.class));
        }
        return null;
    }

    public MediationCustomInitConfig getCustomInitConfig() {
        if (w()) {
            return (MediationCustomInitConfig) this.f29037l.objectValue(8099, MediationCustomInitConfig.class);
        }
        return null;
    }

    public ValueSet getCustomInitConfigValueSet() {
        if (w()) {
            return jx.hp((SparseArray<Object>) this.f29037l.objectValue(8545, SparseArray.class)).l();
        }
        return null;
    }

    public Map getCustomInitMap() {
        if (w()) {
            return (Map) this.f29037l.objectValue(8400, Map.class);
        }
        return null;
    }

    public JSONObject getCustomLocalConfig() {
        ValueSet valueSet = this.f29036j;
        if (valueSet != null) {
            return (JSONObject) valueSet.objectValue(8463, JSONObject.class);
        }
        return null;
    }

    public String getDevImei() {
        ValueSet valueSet = this.jx;
        return valueSet != null ? valueSet.stringValue(8484) : "";
    }

    public List<String> getDevImeis() {
        Function<SparseArray<Object>, Object> functionCovertToFunction;
        ValueSet valueSet = this.jx;
        if (valueSet != null && (functionCovertToFunction = l.covertToFunction(valueSet.objectValue(8311, Object.class))) != null) {
            Object obj = functionCovertToFunction instanceof Supplier ? ((Supplier) functionCovertToFunction).get() : null;
            if (obj instanceof SparseArray) {
                return (List) MediationValueUtil.objectValue(((SparseArray) obj).get(8477), List.class, null);
            }
        }
        return new LinkedList();
    }

    public String getDevOaid() {
        ValueSet valueSet = this.jx;
        return valueSet != null ? valueSet.stringValue(8486) : "";
    }

    public String getGdtAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8414) : "";
    }

    public String getGromoreVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8411) : "";
    }

    public boolean getHttps() {
        ValueSet valueSet = this.f29036j;
        if (valueSet != null) {
            return valueSet.booleanValue(8458);
        }
        return false;
    }

    public Map getInitAdnMap() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? (Map) valueSet.objectValue(8425, Map.class) : new HashMap();
    }

    public Function getInitCallback() {
        if (w()) {
            return l.covertToFunction(this.f29037l.objectValue(8300, Object.class));
        }
        return null;
    }

    public String getKlevinAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8415) : "";
    }

    public String getKsAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8410) : "";
    }

    public Map getLocalExtra() {
        ValueSet valueSet = this.f29036j;
        return valueSet != null ? (Map) valueSet.objectValue(8462, Map.class) : new HashMap();
    }

    public IMediationLocation getLocation() {
        Function<SparseArray<Object>, Object> functionCovertToFunction;
        Double dValueOf = Double.valueOf(0.0d);
        ValueSet valueSet = this.jx;
        if (valueSet != null && (functionCovertToFunction = l.covertToFunction(valueSet.objectValue(8312, Object.class))) != null) {
            Object obj = functionCovertToFunction instanceof Supplier ? ((Supplier) functionCovertToFunction).get() : null;
            if (obj instanceof SparseArray) {
                SparseArray sparseArray = (SparseArray) obj;
                final double dDoubleValue = ((Double) MediationValueUtil.objectValue(sparseArray.get(8481), Double.class, dValueOf)).doubleValue();
                final double dDoubleValue2 = ((Double) MediationValueUtil.objectValue(sparseArray.get(8482), Double.class, dValueOf)).doubleValue();
                return new IMediationLocation() { // from class: com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationInitConfig.1
                    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationLocation
                    public double getLatitude() {
                        return dDoubleValue;
                    }

                    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationLocation
                    public double getLongitude() {
                        return dDoubleValue2;
                    }
                };
            }
        }
        return null;
    }

    public String getMacAddress() {
        ValueSet valueSet = this.jx;
        return valueSet != null ? valueSet.stringValue(8487) : "";
    }

    public Function getMediationConfigUserInfoForSegment() {
        ValueSet valueSet = this.f29036j;
        if (valueSet != null) {
            return l.covertToFunction(valueSet.objectValue(8310, Object.class));
        }
        return null;
    }

    public String getMintegralAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8416) : "";
    }

    public String getOpensdkVer() {
        ValueSet valueSet = this.f29036j;
        return valueSet != null ? valueSet.stringValue(8464) : "";
    }

    public String getPublisherDid() {
        ValueSet valueSet = this.f29036j;
        return valueSet != null ? valueSet.stringValue(8460) : "";
    }

    public String getSigmobAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8417) : "";
    }

    public String getUnityAdapterVersion() {
        ValueSet valueSet = this.f29037l;
        return valueSet != null ? valueSet.stringValue(8418) : "";
    }

    public ValueSet getValueSet() {
        return this.f29037l;
    }

    public String getWxAppId() {
        ValueSet valueSet = this.f29036j;
        return valueSet != null ? valueSet.stringValue(8459) : "";
    }

    public boolean isCanUseAndroidId() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8479);
        }
        return true;
    }

    public boolean isCanUseLocation() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8024);
        }
        return true;
    }

    public boolean isCanUseMacAddress() {
        return isCanUseWifiState();
    }

    public boolean isCanUseMessage() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8562);
        }
        return true;
    }

    public boolean isCanUseOaid() {
        Function<SparseArray<Object>, Object> functionCovertToFunction;
        ValueSet valueSet = this.jx;
        if (valueSet == null || (functionCovertToFunction = l.covertToFunction(valueSet.objectValue(8311, Object.class))) == null) {
            return true;
        }
        Object obj = functionCovertToFunction instanceof Supplier ? ((Supplier) functionCovertToFunction).get() : null;
        if (obj instanceof SparseArray) {
            return ((Boolean) MediationValueUtil.objectValue(((SparseArray) obj).get(8478), Boolean.class, Boolean.FALSE)).booleanValue();
        }
        return true;
    }

    public boolean isCanUsePermissionRecordAudio() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8549);
        }
        return true;
    }

    public boolean isCanUsePhoneState() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8023);
        }
        return true;
    }

    public boolean isCanUseWifiState() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8480);
        }
        return true;
    }

    public boolean isCanUseWriteExternal() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return valueSet.booleanValue(8025);
        }
        return true;
    }

    public boolean isCustom() {
        if (w()) {
            return this.f29037l.booleanValue(8098);
        }
        return false;
    }

    public boolean isDebug() {
        ValueSet valueSet = this.f29037l;
        if (valueSet != null) {
            return valueSet.booleanValue(1);
        }
        return false;
    }

    public boolean isLimitPersonalAds() {
        Function<SparseArray<Object>, Object> functionCovertToFunction;
        ValueSet valueSet = this.jx;
        if (valueSet == null || (functionCovertToFunction = l.covertToFunction(valueSet.objectValue(8311, Object.class))) == null) {
            return false;
        }
        Object obj = functionCovertToFunction instanceof Supplier ? ((Supplier) functionCovertToFunction).get() : null;
        if (obj instanceof SparseArray) {
            return ((Boolean) MediationValueUtil.objectValue(((SparseArray) obj).get(8027), Boolean.class, Boolean.FALSE)).booleanValue();
        }
        return false;
    }

    public boolean isOpenAdnTest() {
        ValueSet valueSet = this.f29036j;
        if (valueSet != null) {
            return valueSet.booleanValue(8461);
        }
        return false;
    }

    public boolean isProgrammaticRecommend() {
        Function<SparseArray<Object>, Object> functionCovertToFunction;
        ValueSet valueSet = this.jx;
        if (valueSet == null || (functionCovertToFunction = l.covertToFunction(valueSet.objectValue(8311, Object.class))) == null) {
            return true;
        }
        Object obj = functionCovertToFunction instanceof Supplier ? ((Supplier) functionCovertToFunction).get() : null;
        if (obj instanceof SparseArray) {
            return ((Boolean) MediationValueUtil.objectValue(((SparseArray) obj).get(8028), Boolean.class, Boolean.FALSE)).booleanValue();
        }
        return true;
    }

    public boolean isSupportH265() {
        ValueSet valueSet = this.f29036j;
        if (valueSet != null) {
            return valueSet.booleanValue(8466);
        }
        return false;
    }

    public boolean isSupportSplashZoomout() {
        ValueSet valueSet = this.f29036j;
        if (valueSet != null) {
            return valueSet.booleanValue(8467);
        }
        return false;
    }

    public boolean isWxInstalled() {
        ValueSet valueSet = this.f29036j;
        if (valueSet != null) {
            return valueSet.booleanValue(8465);
        }
        return false;
    }

    public void setMediationCustomControllerValueSet(ValueSet valueSet) {
        this.jx = valueSet;
        j();
    }

    public Map<String, Object> userPrivacyConfig() {
        ValueSet valueSet = this.jx;
        if (valueSet != null) {
            return (Map) valueSet.objectValue(8554, Map.class);
        }
        return null;
    }
}
