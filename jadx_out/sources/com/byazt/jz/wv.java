package com.byazt.jz;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import com.anythink.core.common.f.f;
import com.byazt.rz.PluginConstants;
import com.byazt.yx.EcBackUpWebView;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes.dex */
public class wv implements Function<SparseArray<Object>, Object> {
    public final PluginValueSet hp = com.byazt.xi.hp.hp().hp(11, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.jz.wv.1
        @Override // java.util.function.Supplier
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public Integer get() {
            return Integer.valueOf(s.u().zx());
        }
    })).hp(12, "7.6.4.3").l();

    private void hp(Object obj) {
        s.u().xh().apply(com.byazt.wi.j.hp().hp(162).hp(0, new com.byazt.zn.dy().hp("listener", obj)).hp(Void.class).l());
    }

    @DungeonFlag
    private void l(Object obj) {
        if (obj instanceof Function) {
            Function function = (Function) obj;
            if (hp(function, "qa_common_tool")) {
                com.byazt.gq.jx.setQATool(function);
                com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
                jVarHp.hp(10002).hp(Void.class);
                jVarHp.hp(20002, com.byazt.gq.jx.getInstance());
                function.apply(jVarHp.l());
            }
        }
    }

    public void clearFullRewardCache() {
        com.byazt.zn.nu.hp("open_ad_sdk_union_meta_cache_kv").clear();
        com.byazt.zn.nu.hp("tt_materialMeta").clear();
        com.byazt.zn.nu.hp("tt_splash").clear();
    }

    public hq createLoader(Context context) {
        return new hq(context);
    }

    public String getBiddingToken(PluginValueSet pluginValueSet, boolean z2, int i2) {
        if (pluginValueSet == null || sz.hp() == null) {
            return null;
        }
        return sz.hp().hp(new com.byazt.jt.l(pluginValueSet.sparseArray(), com.byazt.el.hp.l()), z2, i2);
    }

    /* JADX WARN: Type inference failed for: r6v13, types: [T, java.util.HashMap, java.util.Map] */
    public <T> T getExtra(Class<T> cls, Bundle bundle) throws JSONException {
        if (bundle != null) {
            bundle.getInt("type");
        }
        if (com.byazt.ktf.j.hp(cls, bundle)) {
            return (T) com.byazt.ktf.j.hp(com.byazt.ton.a.hp(sz.getContext()), cls, bundle);
        }
        boolean z2 = false;
        if (cls == SparseArray.class || (cls != null && "com.bytedance.sdk.openadsdk.AdConfig".equals(cls.getName()))) {
            if (bundle != null && !bundle.keySet().isEmpty()) {
                if (bundle.containsKey("is_paid")) {
                    s.u().w(bundle.getBoolean("is_paid"));
                }
                if (bundle.containsKey("extra_data")) {
                    s.u().eb(bundle.getString("extra_data"));
                }
                if (bundle.containsKey("keywords")) {
                    s.u().s(bundle.getString("keywords"));
                }
                if (bundle.containsKey("quit_work")) {
                    s.u().hp(bundle.getBoolean("quit_work", false), (SparseArray<Object>) null);
                }
            }
        } else if (cls == Bundle.class) {
            if (bundle == null) {
                return null;
            }
            int i2 = bundle.getInt(com.umeng.ccg.a.f49772z, 0);
            if (i2 == 0) {
                s.u().hp(bundle.getString("plugin_pkg_name"), bundle.getString(PluginConstants.KEY_PLUGIN_VERSION));
            } else if (i2 == 1) {
                com.byazt.lf.k.hp().l(bundle.getString("event_name"), bundle.getString("event_extra"));
            } else if (i2 == 2) {
                clearFullRewardCache();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(MediationConstant.RIT_TYPE_SPLASH, 0);
                    jSONObject.put("reward", 0);
                    jSONObject.put("brand", 0);
                    jSONObject.put("other", 0);
                    com.byazt.fx.hp.hp(jSONObject);
                    com.byazt.dnb.gu.hp(0).clearCache();
                    com.byazt.fx.hp.hp(sz.l().bf());
                } catch (Throwable th) {
                    com.byazt.ymw.u.hp(th.getMessage());
                }
            }
        } else {
            if (cls == View.class) {
                return (T) new EcBackUpWebView(sz.getContext());
            }
            if (cls == Map.class) {
                ?? r6 = (T) new HashMap();
                if (bundle != null && bundle.getString("extra_name").equals("use_mediation_map")) {
                    if (AdSdkInitializerHolder.isSdkInitSuccess() && sz.l().sh() && AdSdkInitializerHolder.hasDispatchAdSdkInitializer()) {
                        z2 = true;
                    }
                    r6.put("use_mediation_map", Boolean.valueOf(z2));
                }
                return r6;
            }
            if (cls == Function.class && bundle != null && bundle.getInt(com.umeng.ccg.a.f49772z, 0) == 4) {
                return (T) com.byazt.oz.j.create();
            }
        }
        return null;
    }

    public int getThemeStatus() {
        return s.u().zx();
    }

    public void register(Object obj) {
        if (s.u().rz()) {
            l(obj);
        }
        if (obj instanceof Bundle) {
            Bundle bundle = (Bundle) obj;
            if (bundle.containsKey(PluginConstants.KEY_PL_CONFIG_INFO)) {
                s.u().hp(bundle.getBundle(PluginConstants.KEY_PL_CONFIG_INFO));
                if (s.u().pu().length() == 0 || com.byazt.zn.zy.l()) {
                    return;
                }
                com.byazt.oo.l.l().jx();
                return;
            }
            return;
        }
        if (obj instanceof Function) {
            Function<SparseArray<Object>, Object> function = (Function) obj;
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(-2147483647).hp(String.class).l());
            if ((objApply instanceof String) && "TTAdInteractionListener".equals(objApply)) {
                hp(new com.byazt.gu.l(function));
                return;
            } else if (!com.byazt.ktf.jx.l(obj)) {
                hp(function);
                return;
            }
        }
        if ((d.s() || ky.s().equals("com.pangolin_demo.toutiao")) && obj != null) {
            com.byazt.ktf.jx.hp(obj);
        }
        if (d.f21856j >= 7400 || !(obj instanceof TTAdInteractionListener)) {
            return;
        }
        hp(new com.byazt.gu.l(new com.byazt.ve.w((TTAdInteractionListener) obj)));
    }

    public void requestPermissionIfNecessary(Context context) {
        if (context == null) {
            return;
        }
        com.byazt.jt.j jVarSz = s.u().sz();
        if (jVarSz != null) {
            boolean zIsCanUseLocation = jVarSz.isCanUseLocation();
            boolean zIsCanUsePhoneState = jVarSz.isCanUsePhoneState();
            boolean zIsCanUseWriteExternal = jVarSz.isCanUseWriteExternal();
            if (!zIsCanUseLocation && !zIsCanUsePhoneState && !zIsCanUseWriteExternal) {
                return;
            }
        }
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 2);
        com.byazt.ymw.l.hp(context, intent, null);
    }

    public void setThemeStatus(int i2) {
        if (i2 != s.u().zx()) {
            s.u().w(i2);
            Intent intent = new Intent();
            intent.setAction("com.bytedance.openadsdk.themeTypeChangeReceiver");
            intent.putExtra("theme_status_change", i2);
            sz.getContext().sendBroadcast(intent, ky.d());
        }
    }

    public void unregister(Object obj) {
        if ((d.s() || ky.s().equals("com.pangolin_demo.toutiao")) && obj != null) {
            com.byazt.ktf.jx.jx(obj);
        }
    }

    public SparseArray<Object> values() {
        return this.hp.sparseArray();
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray != null) {
            PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
            int iIntValue = pluginValueSetL.intValue(-99999987);
            if (iIntValue == -99999986) {
                PluginValueSet pluginValueSet = this.hp;
                if (pluginValueSet != null) {
                    return pluginValueSet.sparseArray();
                }
            } else {
                if (iIntValue == -999800) {
                    return new hq((Context) pluginValueSetL.objectValue(-998000, Context.class));
                }
                if (iIntValue == 16) {
                    s.u().hp(pluginValueSetL.booleanValue(17, false), (SparseArray<Object>) pluginValueSetL.objectValue(21, SparseArray.class));
                    return null;
                }
                if (iIntValue == 19) {
                    Bundle bundle = (Bundle) pluginValueSetL.objectValue(20, Bundle.class);
                    if (bundle == null) {
                        return new Bundle();
                    }
                    int i2 = bundle.getInt("event_id", -1);
                    int i3 = bundle.getInt("event_type", -1);
                    String string = bundle.getString("package_name");
                    String strJx = com.byazt.ymw.hp.jx(bundle.getString("event_token"));
                    com.byazt.hy.hp hpVar = new com.byazt.hy.hp();
                    try {
                        JSONObject jSONObject = new JSONObject(strJx);
                        hpVar.a(jSONObject.optString("tag"));
                        hpVar.eb(jSONObject.optString(f.a.f3244d));
                        hpVar.j(jSONObject.optString("log_extra"));
                        hpVar.q(jSONObject.optString("download_url"));
                        hpVar.s(jSONObject.optString("save_path"));
                    } catch (JSONException unused) {
                    }
                    hpVar.hp(i2);
                    hpVar.jx(string);
                    return com.byazt.po.v.hp(hpVar, i3);
                }
                if (iIntValue == 999801) {
                    return this;
                }
                switch (iIntValue) {
                    case 1:
                        setThemeStatus(pluginValueSetL.intValue(11));
                        break;
                    case 2:
                        return getBiddingToken(com.byazt.xi.hp.hp(pluginValueSetL).l(), pluginValueSetL.booleanValue(13), pluginValueSetL.intValue(14));
                    case 3:
                        requestPermissionIfNecessary((Context) pluginValueSetL.objectValue(7, Context.class));
                        break;
                    case 4:
                        register(pluginValueSetL.objectValue(8, Object.class));
                        break;
                    case 5:
                        unregister(pluginValueSetL.objectValue(8, Function.class));
                        break;
                    case 6:
                        return getExtra((Class) pluginValueSetL.objectValue(9, Class.class), (Bundle) pluginValueSetL.objectValue(10, Bundle.class));
                    default:
                        return null;
                }
            }
        }
        return null;
    }

    private boolean hp(Function function, String str) {
        com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
        jVarHp.hp(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).hp(String.class);
        return str.equals(function.apply(jVarHp.l()));
    }

    private void hp(Function<SparseArray<Object>, Object> function) {
        if (function != null && com.byazt.xi.hp.hp(com.byazt.wi.jx.hp(function)).l().intValue(10000) == 1 && d.s()) {
            com.byazt.yx.l.hp().hp(function);
        }
    }
}
