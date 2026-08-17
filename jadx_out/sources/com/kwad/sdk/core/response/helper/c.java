package com.kwad.sdk.core.response.helper;

import android.text.TextUtils;
import com.kwad.sdk.core.response.model.AdGlobalConfigInfo;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes4.dex */
public final class c {
    public static <R extends AdResultData, T extends AdTemplate> T a(R r2, String str) {
        if (r2 == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            Iterator<AdTemplate> it = r2.getAdTemplateList().iterator();
            while (it.hasNext()) {
                T t2 = (T) it.next();
                if (String.valueOf(e.eO(t2).adBaseInfo.creativeId).equals(str)) {
                    return t2;
                }
            }
        }
        return (T) r2.getFirstAdTemplate();
    }

    public static AdResultData ez(AdTemplate adTemplate) {
        if (adTemplate == null) {
            return null;
        }
        return adTemplate.createAdResultData();
    }

    public static <R extends AdResultData, T extends AdTemplate> T r(R r2) {
        if (r2 == null) {
            return null;
        }
        return (T) r2.getFirstAdTemplate();
    }

    public static AdInfo s(AdResultData adResultData) {
        AdTemplate firstAdTemplate = adResultData.getFirstAdTemplate();
        if (firstAdTemplate == null) {
            return null;
        }
        return e.eO(firstAdTemplate);
    }

    public static AdGlobalConfigInfo.CycleAggregationInfo t(AdResultData adResultData) {
        AdGlobalConfigInfo adGlobalConfigInfo;
        if (adResultData == null || (adGlobalConfigInfo = adResultData.adGlobalConfigInfo) == null) {
            return null;
        }
        return adGlobalConfigInfo.cycleAggregationInfo;
    }

    public static boolean u(AdResultData adResultData) {
        AdGlobalConfigInfo.CycleAggregationInfo cycleAggregationInfoT;
        if (adResultData == null || adResultData.getAdTemplateList() == null || adResultData.getAdTemplateList().size() <= 1 || (cycleAggregationInfoT = t(adResultData)) == null) {
            return false;
        }
        return cycleAggregationInfoT.cycleAggregationSwitch;
    }

    public static <T extends AdResultData> AdResultData a(AdResultData adResultData, AdTemplate adTemplate) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(adTemplate);
        AdResultData adResultDataM60clone = adResultData.m60clone();
        adResultDataM60clone.setAdTemplateList(arrayList);
        return adResultDataM60clone;
    }
}
