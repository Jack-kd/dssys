package com.byazt.zg;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 308, 150})
/* loaded from: classes3.dex */
public class q {
    public static boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f28429l = false;

    public static List<String> hp() {
        ArrayList arrayList = null;
        if (!com.byazt.jz.s.u().rz()) {
            return null;
        }
        Field[] declaredFields = com.byazt.tgw.l.class.getDeclaredFields();
        if (declaredFields != null && declaredFields.length != 0) {
            arrayList = new ArrayList();
            for (Field field : declaredFields) {
                if (!TextUtils.isEmpty(field.getName()) && !Modifier.isFinal(field.getModifiers())) {
                    arrayList.add(field.getName());
                }
            }
            arrayList.remove("mTotalWaterFallCount");
            arrayList.remove("mWaterFallConfigList");
            arrayList.remove("mWaterFallConfMap");
            arrayList.remove("mTotalLoadLevelCount");
            arrayList.remove("mCurrentCommonAdMaxCpm");
            arrayList.remove("mLoadSortLevelList");
            arrayList.remove("hasServerBidding");
            arrayList.remove("hasClientOrMultiLevel");
            arrayList.remove("mRitInfoJson");
        }
        return arrayList;
    }

    public static void l(List<String> list, String str) {
    }

    public static List<String> l() {
        ArrayList arrayList = null;
        if (!com.byazt.jz.s.u().rz()) {
            return null;
        }
        Field[] declaredFields = com.byazt.tgw.e.class.getDeclaredFields();
        if (declaredFields != null && declaredFields.length != 0) {
            arrayList = new ArrayList();
            for (Field field : declaredFields) {
                if (!TextUtils.isEmpty(field.getName()) && !Modifier.isFinal(field.getModifiers())) {
                    arrayList.add(field.getName());
                }
            }
            arrayList.remove("mServerBiddingWinner");
        }
        return arrayList;
    }

    public static void hp(List<String> list, String str) {
        if (list == null || TextUtils.isEmpty(str)) {
            return;
        }
        list.remove(str);
    }
}
