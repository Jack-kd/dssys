package com.byazt.bc;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.byazt.dw.j;
import com.byazt.fl.v;
import com.byazt.ik.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.android.live.base.api.ILiveHostContextParam;
import com.bytedance.android.live.base.api.ILiveInitCallback;
import com.bytedance.android.live.base.api.IOuterLiveService;
import com.bytedance.android.live.base.api.MethodChannelService;
import com.bytedance.android.openliveplugin.LivePluginHelper;
import com.bytedance.sdk.openadsdk.ILiveAdCustomConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 30})
/* loaded from: classes2.dex */
public final class jx implements Function<SparseArray<Object>, Object> {
    public static final String TAG = "TTLiveSDkBridge";
    public static final jx hp = new jx();

    /* renamed from: j, reason: collision with root package name */
    public volatile C0194jx f18475j;
    public Map<String, String> jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile Function<SparseArray<Object>, Object> f18476l;

    /* renamed from: w, reason: collision with root package name */
    public volatile ILiveInitCallback f18477w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 219})
    public static final class hp implements Function<SparseArray<Object>, Object> {
        public ILiveAdCustomConfig hp;

        public hp(ILiveAdCustomConfig iLiveAdCustomConfig) {
            this.hp = iLiveAdCustomConfig;
        }

        @Override // java.util.function.Function
        public Object apply(SparseArray<Object> sparseArray) {
            int iIntValue = ((Integer) sparseArray.get(-99999987)).intValue();
            if (iIntValue == -99999986) {
                return com.byazt.xi.jx.hp().hp(10000, 1).l().sparseArray();
            }
            if (iIntValue == 0) {
                return Integer.valueOf(this.hp.openLR((String) sparseArray.get(0)));
            }
            if (iIntValue == 1) {
                return this.hp.convertToEnterFromMerge(((Integer) sparseArray.get(0)).intValue());
            }
            if (iIntValue == 2) {
                return this.hp.convertToEnterMethod(((Integer) sparseArray.get(0)).intValue(), ((Boolean) sparseArray.get(1)).booleanValue());
            }
            if (iIntValue == 3) {
                return this.hp.invoke(((Integer) sparseArray.get(0)).intValue(), (Bundle) sparseArray.get(1));
            }
            if (iIntValue == 4) {
                this.hp.onEventV3((String) sparseArray.get(0), (JSONObject) sparseArray.get(1));
                return null;
            }
            if (iIntValue != 5) {
                return null;
            }
            return this.hp;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 1055})
    /* renamed from: com.byazt.bc.jx$jx, reason: collision with other inner class name */
    public final class C0194jx implements TTPluginListener {
        public int hp;

        /* renamed from: l, reason: collision with root package name */
        public String f18478l;

        private C0194jx() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTPluginListener
        public Bundle config() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTPluginListener
        public void onPluginListener(int i2, ClassLoader classLoader, Resources resources, Bundle bundle) {
            hp(i2, classLoader, resources, bundle, false);
        }

        @Override // com.bytedance.sdk.openadsdk.TTPluginListener
        public String packageName() {
            return "com.byted.live.lite";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(int i2, ClassLoader classLoader, Resources resources, Bundle bundle, boolean z2) {
            this.hp = i2;
            if (jx.this.f18476l != null) {
                jx.this.f18476l.apply(com.byazt.xi.jx.hp().hp(0, i2).hp(1, classLoader).hp(2, resources).hp(3, bundle).hp(4, jx.this.hp(z2)).hp(-99999987, 3).l().sparseArray());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(int i2, String str, boolean z2) {
            this.hp = i2;
            this.f18478l = str;
            if (jx.this.f18476l != null) {
                com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp().hp(0, i2);
                if (str != null) {
                    jxVarHp.hp(1, str);
                }
                jxVarHp.hp(2, jx.this.hp(z2)).hp(-99999987, 2);
                jx.this.f18476l.apply(jxVarHp.l().sparseArray());
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 224})
    public final class l implements ILiveInitCallback {
        private l() {
        }

        @Override // com.bytedance.android.live.base.api.ILiveInitCallback
        public void onLiveInitFailed(String str) {
            a.hp(jx.TAG, "onLiveInitFailed! ", str);
            if (jx.this.f18475j != null) {
                jx.this.f18475j.hp(-3, str, false);
            }
        }

        @Override // com.bytedance.android.live.base.api.ILiveInitCallback
        public void onLiveInitFinish() {
            a.l(jx.TAG, "onLiveInitFinish!");
            com.byazt.bc.l.hp();
            if (jx.this.f18475j != null) {
                jx.this.f18475j.hp(2, null, false);
            }
            jx.this.jx = null;
        }
    }

    private jx() {
    }

    private Context getContext(Object obj) {
        if (obj instanceof Context) {
            return (Context) obj;
        }
        return null;
    }

    public static jx instance() {
        return hp;
    }

    private Object j(Map<String, Object> map) throws JSONException {
        String str;
        try {
            str = (String) map.get("expand_method_name");
            try {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                IOuterLiveService liveRoomService = LivePluginHelper.getLiveRoomService();
                Object[] objArr = (Object[]) map.get("expand_method_param");
                if (objArr == null) {
                    return liveRoomService.callExpandMethod(str, new Object[0]);
                }
                for (int i2 = 0; i2 < objArr.length; i2++) {
                    Object obj = objArr[i2];
                    if (obj instanceof Function) {
                        objArr[i2] = new com.byazt.bc.hp((Function) obj);
                    }
                }
                return liveRoomService.callExpandMethod(str, objArr);
            } catch (Throwable th) {
                th = th;
                reportException("invokeLiveExpandMethod-".concat(String.valueOf(str)), th);
                a.l(TAG, th);
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
    }

    private Function<SparseArray<Object>, Object> jx(Map map) {
        return v.hp(map.get("c_control"));
    }

    public static void reportException(String str, Throwable th) throws JSONException {
        try {
            TTAdManager adManager = TTAdSdk.getAdManager();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.ccg.a.f49756j, str);
            if (th != null) {
                jSONObject.put("msg", Log.getStackTraceString(th));
            }
            Bundle bundle = new Bundle();
            bundle.putInt(com.umeng.ccg.a.f49772z, 1);
            bundle.putString("event_name", "exception");
            bundle.putString("event_extra", jSONObject.toString());
            adManager.getExtra(Bundle.class, bundle);
        } catch (Exception e2) {
            a.l(TAG, e2);
        }
    }

    public static Function<SparseArray<Object>, Object> toBridge(ILiveAdCustomConfig iLiveAdCustomConfig) {
        return new hp(iLiveAdCustomConfig);
    }

    private Boolean w(Map<String, Object> map) throws JSONException {
        try {
            String str = (String) map.get("scheme_uri");
            if (TextUtils.isEmpty(str)) {
                return Boolean.FALSE;
            }
            Context context = getContext(map.get(g.f49337X));
            Uri uri = Uri.parse(str);
            if (uri != null && context != null) {
                return Boolean.valueOf(com.byazt.bc.l.hp(context, uri));
            }
            return Boolean.FALSE;
        } catch (Throwable th) {
            reportException("handleLiveScheme", th);
            a.l(TAG, th);
            return Boolean.FALSE;
        }
    }

    public <T> T callMethod(int i2, Map<String, Object> map) {
        if (i2 == 0) {
            return !com.byazt.bc.l.hp(getContext(map.get(g.f49337X)), hp(map.get("bundle"))) ? (T) 2 : (T) 0;
        }
        if (i2 == 7) {
            return (T) j(map);
        }
        if (i2 != 8) {
            return null;
        }
        return (T) w(map);
    }

    public void setLiveInitExtra(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        this.jx = map;
    }

    private void l(Map map) {
        ILiveHostContextParam.Builder builderAddHostInitExtra = new ILiveHostContextParam.Builder().setAppName(String.valueOf(map.get("app_name"))).setChannel(String.valueOf(map.get("channel"))).setECHostAppId(String.valueOf(map.get("ec_host_appid"))).setPartner(String.valueOf(map.get("partner"))).provideMethodChannel(new MethodChannelService() { // from class: com.byazt.bc.jx.1
            @Override // com.bytedance.android.live.base.api.MethodChannelService
            public String identity() {
                return MediationConstant.ADN_PANGLE;
            }

            @Override // com.bytedance.android.live.base.api.MethodChannelService
            public Object invokeMethod(String str, Map<String, String> map2) {
                if (jx.this.f18476l == null) {
                    return null;
                }
                return jx.this.f18476l.apply(com.byazt.xi.jx.hp().hp(0, str).hp(1, map2).hp(-99999987, 0).l().sparseArray());
            }
        }).setPartnerSecret("p_secret").setHostPermission(new com.byazt.vr.hp(jx(map))).setHostActionParam(new com.byazt.vr.l(this.f18476l)).addHostInitExtra(hp(map));
        Map<String, String> map2 = this.jx;
        if (map2 != null) {
            builderAddHostInitExtra.addHostInitExtra(map2);
        }
        if (this.f18477w == null) {
            this.f18477w = new l();
        }
        if (TTAppContextHolder.getContext() instanceof Application) {
            builderAddHostInitExtra.setContext((Application) TTAppContextHolder.getContext());
        }
        Boolean boolValueOf = Boolean.valueOf(String.valueOf(map.get("sub_process")));
        a.hp(TAG, "execute live sdk initLive method end, (方法顺利执行结果)result: ", Boolean.valueOf(com.byazt.bc.l.hp(TTAppContextHolder.getContext(), String.valueOf(map.get("g_appid")), builderAddHostInitExtra, this.f18477w, boolValueOf.booleanValue())), " subProcess=", boolValueOf);
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        int iIntValue = valueSetL.intValue(-99999987);
        if (iIntValue == -99999986) {
            SparseArray sparseArray2 = new SparseArray();
            sparseArray2.put(10000, 2);
            return sparseArray2;
        }
        if (iIntValue == 5) {
            l((Map) valueSetL.objectValue(0, Map.class));
            return null;
        }
        if (iIntValue != 9) {
            return callMethod(iIntValue, (Map) valueSetL.objectValue(0, Map.class));
        }
        this.f18476l = v.hp(valueSetL.objectValue(0, Object.class));
        if (this.f18475j == null) {
            this.f18475j = new C0194jx();
            Function<SparseArray<Object>, Object> functionHp = v.hp(j.instance().apply(com.byazt.xi.jx.hp(2).hp(0, 4).hp(-99999987, 10).l().sparseArray()));
            ValueSet valueSetL2 = com.byazt.xi.jx.hp(2).hp(-99999987, 106).hp(0, this.f18475j).l();
            if (functionHp != null) {
                functionHp.apply(valueSetL2.sparseArray());
            }
        } else if (this.f18475j.hp == 2 || this.f18475j.hp == -3) {
            this.f18475j.hp(this.f18475j.hp, this.f18475j.f18478l, true);
        } else if (this.f18475j.hp != 0) {
            this.f18475j.hp(this.f18475j.hp, null, null, null, true);
        }
        return null;
    }

    private Map<String, String> hp(Map map) {
        Object obj = map.get("live_tob_init_extra");
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return new HashMap();
    }

    private Bundle hp(Object obj) {
        if (obj instanceof Bundle) {
            return (Bundle) obj;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map hp(boolean z2) {
        HashMap map = new HashMap();
        map.put("onlyUpdateState", Boolean.valueOf(z2));
        return map;
    }
}
