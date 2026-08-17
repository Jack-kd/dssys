package com.byazt.qa;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 1566, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public abstract class w extends jx {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp(super.values());
        hpVarHp.hp(270008, com.byazt.kd.j.hp(new Supplier<Boolean>() { // from class: com.byazt.qa.w.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(w.this.hasDislike());
            }
        }));
        hpVarHp.hp(270011, com.byazt.kd.j.hp(new Supplier<Boolean>() { // from class: com.byazt.qa.w.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(w.this.isExpress());
            }
        }));
        return hpVarHp.l();
    }

    public abstract boolean hasDislike();

    public abstract boolean isExpress();

    public abstract void onPause();

    public abstract void onResume();

    public abstract void setShakeViewListener(com.byazt.tl.a aVar);

    public abstract void setUseCustomVideo(boolean z2);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.byazt.qa.jx, java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        switch (iIntValue) {
            case -99999986:
                PluginValueSet pluginValueSet = this.hp;
                if (pluginValueSet != null) {
                    return pluginValueSet.sparseArray();
                }
                PluginValueSet pluginValueSetHp = hp();
                this.hp = pluginValueSetHp;
                return pluginValueSetHp.sparseArray();
            case 270009:
                setUseCustomVideo(pluginValueSetL.booleanValue(0));
                return null;
            case 270010:
                setShakeViewListener(new com.byazt.tl.a((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 271048:
                onResume();
                return null;
            case 271049:
                onPause();
                return null;
            default:
                return super.apply(sparseArray);
        }
    }
}
