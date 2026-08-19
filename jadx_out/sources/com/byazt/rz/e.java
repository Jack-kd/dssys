package com.byazt.rz;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.SparseArray;
import com.byazt.ik.hp;
import com.byazt.pg.ns;
import com.byazt.rx.BaseConstants;
import com.byazt.rz.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Initializer;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.android.openliveplugin.process.LiveProcessUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.ILiveAdCustomConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 45})
/* loaded from: classes3.dex */
public class e extends com.byazt.ik.hp {
    public static final hp hp = new hp();

    /* renamed from: a, reason: collision with root package name */
    public SharedPreferences f25398a;

    /* renamed from: w, reason: collision with root package name */
    public eb f25404w;

    /* renamed from: l, reason: collision with root package name */
    public volatile Initializer f25401l = w();
    public volatile Initializer jx = null;

    /* renamed from: j, reason: collision with root package name */
    public volatile Initializer f25400j = null;
    public boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    public int f25403s = Integer.MIN_VALUE;

    /* renamed from: q, reason: collision with root package name */
    public long f25402q = -1;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.dw.jx f25399e = new com.byazt.dw.jx() { // from class: com.byazt.rz.e.1
        @Override // com.byazt.dw.jx
        public Function<SparseArray<Object>, Object> hp(int i2) {
            return e.this.hp(i2);
        }
    };
    public final Object gu = new Object();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 773})
    public static final class hp extends hp.jx {
        private hp() {
        }

        @Override // com.byazt.ik.hp.jx
        public void hp(Throwable th) {
            q.hp(th);
        }

        @Override // com.byazt.ik.hp.jx
        public Object hp(Object obj) {
            boolean z2 = obj instanceof TTPluginListener;
            if (z2) {
                q.hp(TTAppContextHolder.getContext()).hp((TTPluginListener) obj);
            }
            if (!z2) {
                return obj instanceof ILiveAdCustomConfig ? com.byazt.bc.jx.toBridge((ILiveAdCustomConfig) obj) : com.byazt.vd.l.checkType(obj) ? new com.byazt.vd.l(obj) : obj instanceof TTAdInteractionListener ? new com.byazt.hg.l((TTAdInteractionListener) obj) : obj;
            }
            TTPluginListener tTPluginListener = (TTPluginListener) obj;
            return q.hp(TTAppContextHolder.getContext()).hp(tTPluginListener.packageName(), tTPluginListener.config());
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 2144})
    public static final class jx {
        public static final jx hp = new jx();

        /* renamed from: l, reason: collision with root package name */
        public volatile Initializer f25407l;

        private jx() {
        }

        private static Initializer l(eb ebVar) throws j {
            try {
                Plugin plugin = Zeus.getPlugin("com.byted.pangle");
                ebVar.l("call_create_initializer");
                plugin.setApiBridge(com.byazt.dw.j.instance());
                if (q.hp(TTAppContextHolder.getContext()).hp(ebVar, BaseConstants.Time.MINUTE) == null) {
                    throw new j(4205, "Get ClassLoader failed");
                }
                Function pluginBridge = plugin.getPluginBridge();
                if (pluginBridge == null) {
                    throw new j(4206, "Get Bridge failed");
                }
                ebVar.l("get_bridge_cost");
                SparseArray sparseArray = new SparseArray();
                Bundle bundle = new Bundle();
                bundle.putSerializable(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER, new q.jx());
                bundle.putInt("api_sdk_version", 7643);
                sparseArray.put(0, bundle);
                sparseArray.put(-99999987, 1);
                ebVar.l("create_bundle_cost");
                Object objApply = pluginBridge.apply(sparseArray);
                if (objApply == null) {
                    throw new j(4206, "Get Initializer null");
                }
                ebVar.l("get_init_method_cost");
                try {
                    com.byazt.ik.j jVar = new com.byazt.ik.j((Function) objApply);
                    ebVar.l("get_init_instance_cost");
                    com.byazt.ik.a.l("TTPluginManager", "Create initializer success");
                    return jVar;
                } catch (Throwable th) {
                    Zeus.unInstallPlugin("com.byted.pangle");
                    throw th;
                }
            } catch (Throwable th2) {
                if (th2 instanceof j) {
                    throw th2;
                }
                throw new j(4206, "Create initializer failed", th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Initializer hp(eb ebVar) throws j {
            if (this.f25407l == null) {
                synchronized (this) {
                    try {
                        if (this.f25407l == null) {
                            this.f25407l = l(ebVar);
                        }
                    } finally {
                    }
                }
            }
            return this.f25407l;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 2043})
    public class l implements Function<SparseArray<Object>, Object> {
        private l() {
        }

        public ValueSet onEvent(int i2, Result result) {
            com.byazt.ik.a.jx("bstsdk", "Load p_init: " + result.code() + ", message: " + result.message());
            if (!result.isSuccess()) {
                com.byazt.ik.a.w("_tt_ad_sdk_", "pl init failed, code: " + result.code() + ", msg: " + result.message());
                a.hp(result.code(), result.message(), e.this.eb ^ true, null, null);
            } else if (e.this.f25400j != null) {
                e eVar = e.this;
                eVar.jx = eVar.f25401l;
                e eVar2 = e.this;
                eVar2.f25401l = eVar2.f25400j;
                e eVar3 = e.this;
                eVar3.hp(eVar3.f25401l.getManager(), true);
                e.this.hp(2, result);
            }
            if (!e.this.eb) {
                com.byazt.ik.a.jx("_tt_ad_sdk_", "pl init callback, !isNonPlInit, finishInit");
                e.this.l(result);
            } else if (result.isSuccess() && e.this.hp(true) > 0) {
                com.byazt.ik.a.jx("_tt_ad_sdk_", "pl init callback, bst delayed, pl finished first, finishInit");
                e.this.l(result);
            }
            if (result.isSuccess()) {
                w.hp();
            }
            return null;
        }

        @Override // java.util.function.Function
        public Object apply(SparseArray<Object> sparseArray) {
            if (sparseArray == null) {
                return null;
            }
            ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
            int iIntValue = valueSetL.intValue(-99999987);
            SparseArray sparseArray2 = (SparseArray) valueSetL.objectValue(-99999979, SparseArray.class);
            if (sparseArray2 != null) {
                ValueSet valueSetL2 = com.byazt.xi.jx.hp((SparseArray<Object>) sparseArray2).l();
                onEvent(iIntValue, com.byazt.xi.l.hp().hp(valueSetL2.intValue(-999900)).hp(valueSetL2.stringValue(-999901)).hp(valueSetL2.booleanValue(-999903)).hp(com.byazt.xi.jx.hp((SparseArray<Object>) valueSetL2.objectValue(-999902, SparseArray.class)).l()).l());
            }
            return null;
        }
    }

    private boolean a() {
        s();
        return this.f25403s == 1;
    }

    private boolean eb() {
        s();
        return this.f25403s == 2;
    }

    private void s() {
        if (this.f25403s == Integer.MIN_VALUE) {
            if (this.f25398a == null) {
                this.f25398a = com.byazt.rz.l.l(TTAppContextHolder.getContext(), "sp_bidding_opt_libra", 0);
            }
            int i2 = this.f25398a.getInt("bst_pl_exec_conf", -1);
            this.f25403s = i2;
            if (i2 >= 0) {
                return;
            }
            this.f25403s = this.f25398a.getInt("_use_pl_", 0);
        }
    }

    private static Initializer w() {
        String str;
        Object initialInstance;
        try {
            if (com.byazt.ik.w.hp()) {
                return null;
            }
            Zeus.setMainService(com.byazt.ym.j.getInstance());
            Bundle bundle = new Bundle();
            bundle.putSerializable(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER, new q.jx());
            bundle.putInt("api_sdk_version", 7643);
            com.byazt.pg.s sVar = (com.byazt.pg.s) com.byazt.ym.j.getService("boost");
            if (sVar != null) {
                initialInstance = sVar.getInitialInstance(bundle);
                str = null;
            } else {
                str = "service null";
                initialInstance = null;
            }
            if (initialInstance == null) {
                if (str == null) {
                    str = "getNewInstance null";
                }
                a.hp(4206, str, false, null, null);
            }
            return new com.byazt.ik.j((Function) initialInstance);
        } catch (Throwable th) {
            a.hp(4206, th.getMessage(), false, null, th);
            com.byazt.ik.a.w("_tt_ad_sdk_", "Get direct initializer failed", th);
            return null;
        }
    }

    @Override // com.byazt.ik.hp
    public com.byazt.dw.jx j() {
        return this.f25399e;
    }

    @Override // com.byazt.ik.hp
    public hp.jx jx() {
        return hp;
    }

    @Override // com.byazt.ik.hp
    public boolean l(Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        super.l(context, adConfig, initCallback);
        this.f25404w = eb.hp("duration");
        try {
            if (LiveProcessUtils.inLiveProcess(TTAppContextHolder.getContext()).booleanValue()) {
                return false;
            }
        } catch (Exception e2) {
            com.byazt.ik.a.l("_tt_ad_sdk_", e2);
        }
        if (com.byazt.ik.w.hp()) {
            l(com.byazt.xi.l.hp().hp(false).hp(4204).hp("Only support >= 7.0").l());
            return false;
        }
        a.hp(adConfig);
        return true;
    }

    @Override // com.byazt.ik.hp
    public void hp(Result result) {
        super.hp(result);
        a.hp();
    }

    @Override // com.byazt.ik.hp
    public boolean hp(Context context, com.byazt.xi.jx jxVar) {
        boolean zHp = hp(context);
        if (zHp && a()) {
            com.byazt.ik.a.jx("_tt_ad_sdk_", "force pl");
            return false;
        }
        if (com.byazt.vx.jx.l()) {
            com.byazt.ik.a.w("_tt_ad_sdk_", "this device does not support arm64-v8a abi");
            return false;
        }
        if (this.f25401l != null) {
            this.eb = true;
            hp(this.f25401l.getManager(), false);
            hp(context, jxVar, zHp);
            return false;
        }
        l(com.byazt.xi.l.hp().hp(false).hp(4206).l());
        return true;
    }

    @Override // com.byazt.ik.hp
    public void l(Context context, final com.byazt.xi.jx jxVar) {
        com.byazt.ik.a.jx("_tt_ad_sdk_", "async init");
        if (this.eb && Build.VERSION.SDK_INT < 26) {
            com.byazt.ik.a.j("_tt_ad_sdk_", "lower 26");
            return;
        }
        this.f25404w.l("wait_asyn_cost");
        q.hp(TTAppContextHolder.getContext()).hp(new EventListener() { // from class: com.byazt.rz.e.3
            @Override // com.bykv.vk.openvk.api.proto.EventListener
            public ValueSet onEvent(int i2, Result result) {
                if (i2 == 0) {
                    if (!result.isSuccess() || e.this.f25400j != null) {
                        com.byazt.ik.a.j("_tt_ad_sdk_", "failed event");
                        return null;
                    }
                    com.byazt.ik.a.j("_tt_ad_sdk_", "from event");
                    e.this.f25404w.l("wait_pl_install");
                    e eVar = e.this;
                    eVar.hp(eVar.f25404w, jxVar);
                    return null;
                }
                if (i2 != 1 || !result.isSuccess() || e.this.f25400j != null || jxVar == null) {
                    return null;
                }
                e.this.f25404w = eb.hp("duration");
                jxVar.hp(1, SystemClock.elapsedRealtime());
                return null;
            }
        });
        if (com.byazt.vx.jx.l()) {
            com.byazt.ik.a.j("_tt_ad_sdk_", "start load pl.");
            hp(this.f25404w, jxVar);
        } else if (eb()) {
            com.byazt.ik.a.j("_tt_ad_sdk_", "force boost, dont load pl");
        } else if (hp(context)) {
            com.byazt.ik.a.j("_tt_ad_sdk_", "start load pl..");
            hp(this.f25404w, jxVar);
        } else {
            com.byazt.ik.a.j("_tt_ad_sdk_", "no pl");
        }
    }

    private void hp(final Context context, final com.byazt.xi.jx jxVar, boolean z2) {
        long jHp = hp(z2);
        if (jHp > 0) {
            com.byazt.wq.hp.hp().jx().postDelayed(new Runnable() { // from class: com.byazt.rz.e.2
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.wq.hp.hp().j().execute(new Runnable() { // from class: com.byazt.rz.e.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Initializer initializer = e.this.f25401l;
                            if (e.this.hp() || e.this.f25400j == initializer) {
                                com.byazt.ik.a.jx("_tt_ad_sdk_", "skip boost init, plugin already finished");
                                return;
                            }
                            ValueSet valueSetL = com.byazt.xi.jx.hp(jxVar.l().sparseArray()).hp(27, SystemClock.elapsedRealtime()).l();
                            if (initializer != null) {
                                initializer.init(context, valueSetL);
                            }
                        }
                    });
                }
            }, jHp);
        } else {
            this.f25401l.init(context, jxVar.l());
        }
    }

    private boolean hp(Context context) {
        return com.byazt.rz.l.j(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Function<SparseArray<Object>, Object> hp(int i2) {
        if (i2 == 2) {
            return com.byazt.bc.jx.instance();
        }
        if (i2 == 3) {
            return com.byazt.wp.jx.instance(TTAppContextHolder.getContext());
        }
        if (i2 != 4) {
            return null;
        }
        return com.byazt.wh.hp.instance();
    }

    @Override // com.byazt.ik.hp
    public boolean l() {
        return (com.byazt.ik.w.hp() || this.f25401l == null || !this.f25401l.isInitSuccess()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(eb ebVar, com.byazt.xi.jx jxVar) {
        if (this.f25400j == null || !this.f25400j.isInitSuccess()) {
            com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp(jxVar.l().sparseArray());
            jxVarHp.hp(15, new l());
            try {
                if (this.f25400j == null) {
                    synchronized (jx.class) {
                        try {
                            if (this.f25400j == null) {
                                Initializer initializerHp = jx.hp.hp(ebVar);
                                this.f25400j = initializerHp;
                                hp(initializerHp, ebVar, jxVarHp);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Exception e2) {
                int iHp = e2 instanceof j ? ((j) e2).hp() : 4206;
                com.byazt.ik.a.w("_tt_ad_sdk_", "loadPl failed, code: " + iHp + ", msg: " + e2.getMessage());
                a.hp(iHp, e2.getMessage(), true, ebVar, e2);
                if (this.eb) {
                    return;
                }
                l(com.byazt.xi.l.hp().hp(false).hp(4206).hp(e2.getMessage()).l());
            }
        }
    }

    private void hp(Manager manager, Result result) {
        Function<SparseArray<Object>, Object> functionHp;
        if (manager == null || !(manager instanceof com.byazt.ik.jx) || (functionHp = ((com.byazt.ik.jx) manager).hp(1)) == null) {
            return;
        }
        com.byazt.ik.a.jx("_tt_ad_sdk_", "quitWork, notify bst manager to quit");
        functionHp.apply(com.byazt.xi.jx.hp(1).hp(-99999987, 16).hp(-99999985, Void.class).hp(17, true).hp(21, result.values() == null ? null : result.values().sparseArray()).l().sparseArray());
    }

    private static void hp(Initializer initializer, eb ebVar, com.byazt.xi.jx jxVar) throws JSONException, j {
        if (initializer != null) {
            try {
                ebVar.hp();
                JSONObject jSONObject = new JSONObject();
                ebVar.hp(jSONObject, 20L);
                jSONObject.put("zeus", q.hp(TTAppContextHolder.getContext()).hp());
                initializer.init(TTAppContextHolder.getContext(), jxVar.hp(9, jSONObject).l());
                if (TTAppContextHolder.getContext() != null) {
                    Zeus.hookHuaWeiVerifier((Application) TTAppContextHolder.getContext().getApplicationContext());
                }
                com.byazt.ik.a.l("_tt_ad_sdk_", "Initialized done");
                return;
            } catch (Exception e2) {
                Zeus.unInstallPlugin("com.byted.pangle");
                throw new j(4207, "Init error", e2);
            }
        }
        throw new j(TTAdConstant.INIT_FAILED_CREATE_INITIALIZER_FAILED, "initializer null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long hp(boolean z2) {
        s();
        if (this.f25403s != 0 || !z2) {
            return 0L;
        }
        if (this.f25402q < 0) {
            try {
                this.f25402q = this.f25398a.getLong("bstlayer_init_delay_time", 0L);
            } catch (Throwable unused) {
                this.f25402q = 0L;
            }
        }
        return this.f25402q;
    }

    @Override // com.byazt.ik.hp
    public void hp(int i2, Result result) {
        try {
            ns nsVar = (ns) com.byazt.ym.j.getService("m_d_s");
            if (nsVar != null) {
                synchronized (this.gu) {
                    try {
                        Object data = nsVar.getData(3);
                        iIntValue = data instanceof Integer ? ((Integer) data).intValue() : -1;
                        if (iIntValue < 0) {
                            nsVar.setData(3, Integer.valueOf(i2));
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            com.byazt.ik.a.j("_tt_ad_sdk_", th.getMessage());
        }
        if (i2 == 2 || iIntValue == 2) {
            Initializer initializer = this.jx;
            if (this.eb && initializer != null && initializer.isInitSuccess()) {
                hp(initializer.getManager(), result);
                this.jx = null;
            }
        }
    }
}
