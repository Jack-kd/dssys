package com.meishu.sdk.core.loader.serverbidding;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.SdkConfig;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.loader.serverbidding.S2sbCacheEntity;
import com.qq.e.comm.managers.GDTAdSdk;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class S2SBUtil {
    private static Gson gson = new Gson();

    private static GDTS2sbBean generateGdt(Context context, S2sbCacheEntity.S2SBDataBean s2SBDataBean) throws IllegalAccessException, NoSuchFieldException, InstantiationException, ClassNotFoundException, SecurityException {
        if (TextUtils.isEmpty(AdSdk.getGDTVersionName())) {
            return null;
        }
        GDTAdSdk.init(context, s2SBDataBean.getAppId());
        String buyerId = GDTAdSdk.getGDTAdManger().getBuyerId(null);
        String sDKInfo = GDTAdSdk.getGDTAdManger().getSDKInfo(s2SBDataBean.getPid());
        GDTS2sbBean gDTS2sbBean = new GDTS2sbBean();
        gDTS2sbBean.setApp_id(s2SBDataBean.getAppId());
        gDTS2sbBean.setBuyer_id(buyerId);
        gDTS2sbBean.setPid(s2SBDataBean.getPid());
        gDTS2sbBean.setSdk_info(sDKInfo);
        gDTS2sbBean.setSdk(s2SBDataBean.getPlatform());
        if (!TextUtils.isEmpty(AdSdk.adConfig().getWxAppid())) {
            try {
                Class<?> cls = Class.forName("com.tencent.mm.opensdk.constants.Build");
                Object objNewInstance = cls.newInstance();
                Field field = cls.getField("SDK_VERSION_NAME");
                field.setAccessible(true);
                gDTS2sbBean.setOpensdk_ver((String) field.get(objNewInstance));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        gDTS2sbBean.setSupport_h265(false);
        gDTS2sbBean.setSupport_splash_zoomout(false);
        return gDTS2sbBean;
    }

    private static KSS2sbBean generateKs(Context context, S2sbCacheEntity.S2SBDataBean s2SBDataBean) {
        try {
            if (TextUtils.isEmpty(AdSdk.getKSVersionName())) {
                return null;
            }
            SdkConfig.Builder builder = new SdkConfig.Builder();
            builder.appId(s2SBDataBean.getAppId()).debug(true);
            KsAdSDK.init(context, builder.build());
            String bidRequestToken = KsAdSDK.getLoadManager().getBidRequestToken(new KsScene.Builder(Long.parseLong(s2SBDataBean.getPid())).build());
            KSS2sbBean kSS2sbBean = new KSS2sbBean();
            kSS2sbBean.setApp_id(s2SBDataBean.getAppId());
            kSS2sbBean.setPid(s2SBDataBean.getPid());
            kSS2sbBean.setSdk(s2SBDataBean.getPlatform());
            kSS2sbBean.setToken(bidRequestToken);
            return kSS2sbBean;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String getS2SBJson(Context context, S2sbCacheEntity s2sbCacheEntity) {
        List<S2sbCacheEntity.S2SBDataBean> s2sbList;
        KSS2sbBean kSS2sbBeanGenerateKs;
        try {
            ArrayList arrayList = new ArrayList();
            if (s2sbCacheEntity == null || (s2sbList = s2sbCacheEntity.getS2sbList()) == null) {
                return null;
            }
            for (int i2 = 0; i2 < s2sbList.size(); i2++) {
                S2sbCacheEntity.S2SBDataBean s2SBDataBean = s2sbList.get(i2);
                if (s2SBDataBean != null && s2SBDataBean.isValid()) {
                    if ("GDT".equals(s2SBDataBean.getPlatform())) {
                        GDTS2sbBean gDTS2sbBeanGenerateGdt = generateGdt(context, s2SBDataBean);
                        if (gDTS2sbBeanGenerateGdt != null) {
                            arrayList.add(gDTS2sbBeanGenerateGdt);
                        }
                    } else if ("KS".equals(s2SBDataBean.getPlatform()) && (kSS2sbBeanGenerateKs = generateKs(context, s2SBDataBean)) != null) {
                        arrayList.add(kSS2sbBeanGenerateKs);
                    }
                }
            }
            return gson.toJson(arrayList);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
