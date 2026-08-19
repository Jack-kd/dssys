package com.byazt.ewl;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.qjq.e;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1118, 30})
/* loaded from: classes2.dex */
public class jx extends j {
    public jx(com.byazt.xl.hp hpVar) {
        super(hpVar);
    }

    private com.byazt.qre.hp hp() {
        return (com.byazt.qre.hp) this.eb;
    }

    @Override // com.byazt.ewl.j
    public <T> T callMethod(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 1008) {
            if (!(this.eb instanceof com.byazt.qre.hp)) {
                return null;
            }
            hp().l(null);
            return null;
        }
        if (i2 != 1009) {
            if (i2 != 1014) {
                if (i2 != 1016) {
                    if (i2 == 8111) {
                        setCpm(pluginValueSet.doubleValue(8016));
                    } else if (i2 == 8140) {
                        String strStringValue = pluginValueSet.stringValue(8045);
                        String strStringValue2 = pluginValueSet.stringValue(8046);
                        int iIntValue = pluginValueSet.intValue(8047);
                        String strStringValue3 = pluginValueSet.stringValue(8048);
                        String strStringValue4 = pluginValueSet.stringValue(8049);
                        String strStringValue5 = pluginValueSet.stringValue(8050);
                        int iIntValue2 = pluginValueSet.intValue(8051);
                        int iIntValue3 = pluginValueSet.intValue(8052);
                        List<String> list = (List) pluginValueSet.objectValue(8053, List.class);
                        String strStringValue6 = pluginValueSet.stringValue(8054);
                        boolean zBooleanValue = pluginValueSet.booleanValue(8055);
                        String strStringValue7 = pluginValueSet.stringValue(8056);
                        String strStringValue8 = pluginValueSet.stringValue(8057);
                        Object objObjectValue = pluginValueSet.objectValue(8036, Object.class);
                        String strStringValue9 = pluginValueSet.stringValue(8058);
                        double dDoubleValue = pluginValueSet.doubleValue(8016);
                        boolean zBooleanValue2 = pluginValueSet.booleanValue(8033);
                        int iIntValue4 = pluginValueSet.intValue(8060);
                        String strStringValue10 = pluginValueSet.stringValue(8061);
                        String strStringValue11 = pluginValueSet.stringValue(8061);
                        long jLongValue = pluginValueSet.longValue(8078);
                        String strStringValue12 = pluginValueSet.stringValue(8079);
                        Map<String, String> map = (Map) pluginValueSet.objectValue(8427, Map.class);
                        String strStringValue13 = pluginValueSet.stringValue(8080);
                        String strStringValue14 = pluginValueSet.stringValue(8081);
                        double dDoubleValue2 = pluginValueSet.doubleValue(8082);
                        int iIntValue5 = pluginValueSet.intValue(8059);
                        String strStringValue15 = pluginValueSet.stringValue(8551);
                        String strStringValue16 = pluginValueSet.stringValue(8559);
                        setTitle(strStringValue);
                        setAdDescription(strStringValue2);
                        setAppSize(iIntValue);
                        setIconUrl(strStringValue3);
                        setSource(strStringValue4);
                        setImageUrl(strStringValue5);
                        setImageHeight(iIntValue2);
                        setImageWidth(iIntValue3);
                        setImages(list);
                        setPackageName(strStringValue6);
                        setIsAppDownload(zBooleanValue);
                        setAppName(strStringValue7);
                        setAuthorName(strStringValue8);
                        if (TextUtils.equals(getAdNetWorkName(), "baidu")) {
                            putExtraMsg(MediationConstant.BAIDU_DISLIKE_INFO, objObjectValue);
                        }
                        setLevelTag(strStringValue9);
                        setCpm(dDoubleValue);
                        setExpressAd(zBooleanValue2);
                        setImageMode(iIntValue4);
                        setInteractionType(iIntValue5);
                        setActionText(strStringValue10);
                        setStore(strStringValue11);
                        setPackageSizeBytes(jLongValue);
                        setPermissionsUrl(strStringValue12);
                        setPermissionsMap(map);
                        setPrivacyAgreement(strStringValue13);
                        setVersionName(strStringValue14);
                        setRating(dDoubleValue2);
                        setFunctionDescUrl(strStringValue15);
                        setRegUrl(strStringValue16);
                    } else if (i2 == 8207) {
                        setLevelTag(pluginValueSet.stringValue(8058));
                    }
                }
            } else if (this.eb instanceof com.byazt.qre.hp) {
                com.byazt.xl.hp hpVar = ((j) this).f19527q;
                if (hpVar != null) {
                    com.byazt.xoi.hp.hp(hpVar.l());
                }
                hp().hp();
            }
        } else if (this.eb instanceof com.byazt.qre.hp) {
            hp().hp((View) null);
            return null;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public View getAdView() {
        if (((j) this).f19528s == null) {
            return super.getAdView();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6081).hp(View.class).l());
        if (objApply instanceof View) {
            return (View) objApply;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public String getReqId() {
        if (((j) this).f19528s == null) {
            return super.getReqId();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8147).hp(String.class).l());
        if (objApply instanceof String) {
            return (String) objApply;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public boolean hasDislike() {
        try {
            if (((j) this).f19528s != null) {
                Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8135).hp(Boolean.class).l());
                if (objApply instanceof Boolean) {
                    return ((Boolean) objApply).booleanValue();
                }
                return false;
            }
        } catch (Exception unused) {
        }
        return super.hasDislike();
    }

    @Override // com.byazt.rt.jx
    public Integer isReadyStatus() {
        return j.isReadyStatus(((j) this).f19528s);
    }

    @Override // com.byazt.rt.jx
    public void registerViewForInteraction(Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, e eVar, List<View> list4) {
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8159).hp(Void.class).hp(20033, activity).hp(8067, viewGroup).hp(8068, list).hp(8069, list2).hp(8070, list3).hp(8071, e.hp(eVar)).l());
        }
    }
}
