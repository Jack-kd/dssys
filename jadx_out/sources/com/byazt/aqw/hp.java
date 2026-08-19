package com.byazt.aqw;

import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.jt.l {

    /* renamed from: l, reason: collision with root package name */
    public final PluginValueSet f18093l;

    public hp(SparseArray<Object> sparseArray, String str) {
        super(sparseArray, str);
        this.f18093l = com.byazt.xi.hp.hp(sparseArray).l();
    }

    private static Function<SparseArray<Object>, Object> hp(PluginValueSet pluginValueSet) {
        Object objObjectValue;
        if (pluginValueSet != null) {
            objObjectValue = pluginValueSet.objectValue(8260028, Object.class);
            if (objObjectValue == null) {
                try {
                    objObjectValue = pluginValueSet.objectValue(260026, Function.class);
                } catch (Throwable unused) {
                }
            }
        } else {
            objObjectValue = null;
        }
        return com.byazt.vd.jx.hp(objObjectValue);
    }

    public boolean d() {
        PluginValueSet pluginValueSet = this.f18093l;
        if (pluginValueSet == null) {
            return false;
        }
        return pluginValueSet.booleanValue(8260030);
    }

    public String hq() {
        PluginValueSet pluginValueSet = this.f18093l;
        if (pluginValueSet == null) {
            return null;
        }
        return (String) pluginValueSet.objectValue(8260029, String.class);
    }

    public PluginValueSet nu() {
        return this.f18093l;
    }

    public Map ud() {
        PluginValueSet pluginValueSet = this.f18093l;
        if (pluginValueSet == null) {
            return null;
        }
        return (Map) pluginValueSet.objectValue(8260032, Map.class);
    }

    public l wv() {
        Function<SparseArray<Object>, Object> functionHp = hp(this.f18093l);
        if (functionHp != null) {
            return new l(functionHp);
        }
        return null;
    }

    public static final PluginValueSet hp(com.byazt.jt.l lVar) {
        return hp(lVar, null, false);
    }

    public static final PluginValueSet hp(com.byazt.jt.l lVar, String str, boolean z2) throws SecurityException {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        if (lVar == null) {
            return hpVarHp.l();
        }
        hpVarHp.hp(260001, lVar.hp());
        hpVarHp.hp(260002, lVar.l());
        hpVarHp.hp(260003, lVar.jx());
        hpVarHp.hp(260004, lVar.j());
        hpVarHp.hp(260005, lVar.w());
        hpVarHp.hp(260006, lVar.a());
        hpVarHp.hp(260007, lVar.eb());
        hpVarHp.hp(7, lVar.a());
        hpVarHp.hp(8, lVar.eb());
        hpVarHp.hp(260008, lVar.s());
        hpVarHp.hp(260009, lVar.q());
        hpVarHp.hp(10, lVar.s());
        hpVarHp.hp(9, lVar.q());
        hpVarHp.hp(260010, lVar.e());
        hpVarHp.hp(260011, lVar.gu());
        hpVarHp.hp(2600012, lVar.jl());
        hpVarHp.hp(260013, lVar.zy());
        hpVarHp.hp(260014, lVar.k());
        hpVarHp.hp(260015, lVar.v());
        hpVarHp.hp(260016, lVar.u());
        hpVarHp.hp(260017, lVar.xs());
        hpVarHp.hp(260018, lVar.vv());
        hpVarHp.hp(260019, lVar.ec());
        hpVarHp.hp(260020, lVar.sz());
        hpVarHp.hp(260021, lVar.n());
        hpVarHp.hp(260022, lVar.ns());
        hpVarHp.hp(260023, lVar.cx());
        hpVarHp.hp(8260032, lVar.dy());
        PluginValueSet pluginValueSet = null;
        try {
            for (Field field : lVar.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if (field.get(lVar) instanceof PluginValueSet) {
                    pluginValueSet = (PluginValueSet) field.get(lVar);
                }
                field.setAccessible(false);
            }
        } catch (Exception unused) {
        }
        if (pluginValueSet != null) {
            hpVarHp.hp(8260028, hp(pluginValueSet));
            if (com.byazt.nn.hp.hp().l() < 7400) {
                hpVarHp.hp(260027, pluginValueSet.objectValue(260027, IMediationAdSlot.class));
            }
        }
        hpVarHp.hp(260024, lVar.b());
        hpVarHp.hp(260025, lVar.di());
        hpVarHp.hp(260008, lVar.s());
        if (!TextUtils.isEmpty(str)) {
            hpVarHp.hp(8260029, str);
            hpVarHp.hp(8260030, z2);
        }
        return hpVarHp.l();
    }

    public static PluginValueSet hp(PluginValueSet pluginValueSet, String str) {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp(pluginValueSet);
        hpVarHp.hp(260022, str);
        return hpVarHp.l();
    }
}
