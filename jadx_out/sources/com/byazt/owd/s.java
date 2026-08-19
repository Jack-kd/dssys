package com.byazt.owd;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jz.d;
import com.byazt.jz.wv;
import com.byazt.ktf.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1061, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends com.byazt.hde.j {
    public final wv hp;

    /* renamed from: l, reason: collision with root package name */
    public q f24237l;

    public s(wv wvVar) {
        this.hp = wvVar;
    }

    @DungeonFlag
    private void hp(Object obj) {
        if (obj instanceof Function) {
            Function<SparseArray<Object>, Object> function = (Function) obj;
            if (hp(function, "mediation_qa_common")) {
                com.byazt.yf.l.getInstance().setQATool(function);
                com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
                jVarHp.hp(10009).hp(Void.class);
                jVarHp.hp(20009, com.byazt.yf.l.getInstance());
                function.apply(jVarHp.l());
            }
        }
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        Object objApply;
        if (i2 == -99999986) {
            wv wvVar = this.hp;
            if (wvVar != null) {
                return (T) wvVar.values();
            }
        } else if (i2 == 6) {
            Bundle bundle = pluginValueSet != null ? (Bundle) pluginValueSet.objectValue(10, Bundle.class) : null;
            Class cls2 = pluginValueSet != null ? (Class) pluginValueSet.objectValue(9, Class.class) : null;
            if (bundle != null && TextUtils.equals(bundle.getString("mediation_manager"), "mediation_manager")) {
                if (this.f24237l == null) {
                    this.f24237l = new q();
                }
                return (T) this.f24237l;
            }
            if (com.byazt.ktf.j.hp(cls2, bundle)) {
                wv wvVar2 = this.hp;
                if (wvVar2 != null) {
                    Object objApply2 = wvVar2.apply(pluginValueSet.sparseArray());
                    if (objApply2 instanceof j.hp) {
                        return (T) com.byazt.ktf.j.hp(new e((j.hp) objApply2), cls2, bundle);
                    }
                }
                return null;
            }
            wv wvVar3 = this.hp;
            if (wvVar3 != null) {
                return (T) wvVar3.apply(pluginValueSet.sparseArray());
            }
        } else if (i2 == 4) {
            Object objObjectValue = pluginValueSet != null ? pluginValueSet.objectValue(8, Object.class) : null;
            if (d.s() && (objObjectValue instanceof Function)) {
                Function function = (Function) objObjectValue;
                PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(com.byazt.wi.jx.hp((Function<SparseArray<Object>, Object>) function)).l();
                if (pluginValueSetL != null && pluginValueSetL.intValue(10000) == 1 && (objApply = function.apply(com.byazt.wi.j.hp().hp(5).hp(Object.class).l())) != null) {
                    com.byazt.di.hp.jl().hp(objApply);
                }
            }
            if (com.byazt.jz.s.u().rz()) {
                hp(objObjectValue);
            }
            wv wvVar4 = this.hp;
            if (wvVar4 != null) {
                return (T) wvVar4.apply(pluginValueSet.sparseArray());
            }
        } else {
            wv wvVar5 = this.hp;
            if (wvVar5 != null) {
                return (T) wvVar5.apply(pluginValueSet.sparseArray());
            }
        }
        return null;
    }

    private boolean hp(Function function, String str) {
        com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
        jVarHp.hp(10008).hp(String.class);
        return str.equals(function.apply(jVarHp.l()));
    }
}
