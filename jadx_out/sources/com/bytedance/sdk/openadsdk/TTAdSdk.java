package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.byazt.bc.jx;
import com.byazt.ik.a;
import com.byazt.ik.hp;
import com.byazt.ik.w;
import com.byazt.jz.sz;
import com.byazt.rz.e;
import com.bytedance.sdk.openadsdk.mediation.IMediationManager;
import com.bytedance.sdk.openadsdk.mediation.MediationManagerVisitor;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@com.byazt.kj.hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, TTAdConstant.STYLE_SIZE_RADIO_2_3})
/* loaded from: classes3.dex */
public final class TTAdSdk {
    public static final String BRANCH = "";
    public static final String BUILT_IN_PLUGIN_NAME = "com.byted.pangle";
    public static final String C_H = "d9c97feb3c";
    public static final int EXT_API_VERSION_CODE = 1000;
    public static final boolean INCLUDE_LIVE = true;
    public static final boolean IS_BOOST = true;
    public static final boolean IS_P = false;
    public static final String LIVE_PLUGIN_PACKAGE_NAME = "com.byted.live.lite";
    public static final boolean ONLY_API = false;
    public static final boolean PC_BOOST_ABI = true;
    public static final String PLUGIN_ADAPTER_PACKAGE_NAME = "com.byted.mixed";
    public static final int SDK_VERSION_CODE = 7643;
    public static final String SDK_VERSION_NAME = "7.6.4.3";
    public static final String S_C = "main";
    private static volatile TTAdConfig hp;

    public interface Callback extends InitCallback {
    }

    @Deprecated
    public interface InitCallback {
        void fail(int i2, String str);

        void success();
    }

    @com.byazt.kj.hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 2077})
    public static final class hp {
        private static final com.byazt.ik.hp hp = new e();
    }

    public static TTAdManager getAdManager() {
        return hp.hp.jx();
    }

    public static View getEcMallBackUpView() {
        hp.jx jxVarJx = hp.hp.jx();
        if (jxVarJx == null) {
            return null;
        }
        return (View) jxVarJx.getExtra(View.class, null);
    }

    public static IMediationManager getMediationManager() {
        return MediationManagerVisitor.getInstance().getMediationManager();
    }

    private static void hp(Context context, TTAdConfig tTAdConfig) {
        if (tTAdConfig != null && tTAdConfig.isDebug()) {
            a.hp();
        }
        hp(context, "Context is null, please check.");
        hp(tTAdConfig, "TTAdConfig is null, please check.");
        TTAppContextHolder.setContext(context);
        updateConfigAuth(tTAdConfig);
    }

    public static boolean init(Context context, TTAdConfig tTAdConfig) {
        Map<String, Object> initExtra;
        sz.hp(context);
        if (tTAdConfig != null && (initExtra = tTAdConfig.getInitExtra()) != null) {
            initExtra.put("csj_c_i_ts", Long.valueOf(SystemClock.elapsedRealtime()));
        }
        hp = tTAdConfig;
        hp(context, hp);
        return true;
    }

    @Deprecated
    public static boolean isInitSuccess() {
        return hp.hp.l();
    }

    public static boolean isOpenMediationMap() {
        TTAdManager adManager = getAdManager();
        if (adManager == null) {
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString("extra_name", "use_mediation_map");
        Map map = (Map) adManager.getExtra(Map.class, bundle);
        if (map == null || !(map.get("use_mediation_map") instanceof Boolean)) {
            return false;
        }
        return ((Boolean) map.get("use_mediation_map")).booleanValue();
    }

    public static boolean isSdkReady() {
        return hp.hp.l();
    }

    public static void start(Callback callback) {
        hp(hp, "TTAdConfig is null, please exec TTAdSdk.init before TTAdSdk.start.");
        hp.hp.hp(TTAppContextHolder.getContext(), hp, callback);
    }

    public static void updateAdConfig(TTAdConfig tTAdConfig) {
        hp.jx jxVarJx;
        if (w.hp() || tTAdConfig == null || (jxVarJx = hp.hp.jx()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(tTAdConfig.getData())) {
            bundle.putString("extra_data", tTAdConfig.getData());
        }
        if (!TextUtils.isEmpty(tTAdConfig.getKeywords())) {
            bundle.putString("keywords", tTAdConfig.getKeywords());
        }
        if (!bundle.keySet().isEmpty()) {
            jxVarJx.getExtra(SparseArray.class, bundle);
        }
        IMediationManager mediationManager = getMediationManager();
        if (mediationManager != null) {
            if (tTAdConfig.getCustomController() != null) {
                mediationManager.updatePrivacyConfig(tTAdConfig.getCustomController());
            }
            Map<String, Object> initExtra = tTAdConfig.getInitExtra();
            if (initExtra == null || initExtra.isEmpty()) {
                return;
            }
            mediationManager.updateLocalExtra(tTAdConfig.getInitExtra());
        }
    }

    public static void updateConfigAuth(TTAdConfig tTAdConfig) {
        Map<String, Object> initExtra;
        if (w.hp() || tTAdConfig == null || (initExtra = tTAdConfig.getInitExtra()) == null) {
            return;
        }
        Object obj = initExtra.get(TTAdConstant.KEY_INIT_FOR_LIVE);
        if (obj instanceof Map) {
            jx.instance().setLiveInitExtra((Map) obj);
        }
    }

    public static void updatePaid(boolean z2) {
        hp.jx jxVarJx = hp.hp.jx();
        if (jxVarJx == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_paid", z2);
        if (bundle.keySet().isEmpty()) {
            return;
        }
        jxVarJx.getExtra(SparseArray.class, bundle);
    }

    private static void hp(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }
}
