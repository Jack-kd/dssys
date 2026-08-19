package com.byazt.tu;

import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import com.byazt.dz.j;
import com.byazt.dz.w;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.IMediationDrawAdTokenCallback;
import com.bytedance.sdk.openadsdk.mediation.IMediationManager;
import com.bytedance.sdk.openadsdk.mediation.IMediationNativeAdTokenCallback;
import com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo;
import com.bytedance.sdk.openadsdk.mediation.MediationAppDialogClickListener;
import com.bytedance.sdk.openadsdk.mediation.bridge.MediationAdClassLoader;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 671, 34})
/* loaded from: classes3.dex */
public class l implements IMediationManager {
    private Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        l(function);
    }

    private void l(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            function = com.byazt.xi.jx.jx;
        }
        this.hp = function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public Map<String, Object> getMediationExtraInfo() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 270024);
        sparseArray.put(-99999985, Map.class);
        return (Map) this.hp.apply(sparseArray);
    }

    public void hp(Function<SparseArray<Object>, Object> function) {
        l(function);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void loadDrawToken(Context context, AdSlot adSlot, IMediationDrawAdTokenCallback iMediationDrawAdTokenCallback) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(0, context);
        sparseArray.put(1, hp(adSlot));
        sparseArray.put(2, new com.byazt.dz.hp(iMediationDrawAdTokenCallback));
        sparseArray.put(3, MediationAdClassLoader.getInstance());
        sparseArray.put(-99999987, 270022);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void loadNativeToken(Context context, AdSlot adSlot, IMediationNativeAdTokenCallback iMediationNativeAdTokenCallback) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(0, context);
        sparseArray.put(1, hp(adSlot));
        sparseArray.put(2, new com.byazt.dz.jx(iMediationNativeAdTokenCallback));
        sparseArray.put(3, MediationAdClassLoader.getInstance());
        sparseArray.put(-99999987, 270021);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public Object mtool(int i2, SparseArray<Object> sparseArray) {
        SparseArray<Object> sparseArray2 = new SparseArray<>(3);
        sparseArray2.put(-99999987, 271043);
        sparseArray2.put(-99999985, Object.class);
        sparseArray2.put(0, Integer.valueOf(i2));
        if (sparseArray != null) {
            sparseArray2.put(1, sparseArray);
        } else {
            sparseArray2.put(1, new SparseArray());
        }
        return this.hp.apply(sparseArray2);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void preload(Activity activity, List<IMediationPreloadRequestInfo> list, int i2, int i3) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(0, activity);
        if (list != null) {
            LinkedList linkedList = new LinkedList();
            Iterator<IMediationPreloadRequestInfo> it = list.iterator();
            while (it.hasNext()) {
                linkedList.add(new j(it.next()));
            }
            sparseArray.put(1, linkedList);
        }
        sparseArray.put(2, Integer.valueOf(i2));
        sparseArray.put(3, Integer.valueOf(i3));
        sparseArray.put(4, MediationAdClassLoader.getInstance());
        sparseArray.put(-99999987, 270013);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void requestPermissionIfNecessary(Context context) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 270017);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, context);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void setPulisherDid(String str) {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 270015);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void setThemeStatus(int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 270019);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void setUserInfoForSegment(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 270014);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, com.byazt.hd.jx.hp(mediationConfigUserInfoForSegment));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public int showOpenOrInstallAppDialog(MediationAppDialogClickListener mediationAppDialogClickListener) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 270020);
        sparseArray.put(-99999985, Integer.TYPE);
        sparseArray.put(0, new w(mediationAppDialogClickListener));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void updateLocalExtra(Map<String, Object> map) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 271050);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, map);
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void updatePrivacyConfig(TTCustomController tTCustomController) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 270016);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, com.byazt.ta.j.hp(tTCustomController));
        this.hp.apply(sparseArray);
    }

    private SparseArray<Object> hp(AdSlot adSlot) {
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp(com.byazt.ta.l.hp(adSlot));
        jxVarHp.hp(8302, MediationAdClassLoader.getInstance());
        return jxVarHp.l().sparseArray();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void requestPermissionIfNecessary(Context context, int[] iArr) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 270018);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, context);
        sparseArray.put(1, iArr);
        this.hp.apply(sparseArray);
    }
}
