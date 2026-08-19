package com.byazt.fp;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME, 34})
/* loaded from: classes2.dex */
public class l implements Bridge {
    public final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i2, ValueSet valueSet, Class<T> cls) {
        if (i2 == -99999977) {
            if (this.hp instanceof jx) {
                T t2 = (T) this.hp.apply(com.byazt.wi.j.hp().hp(-99999977).hp(Bridge.class).l());
                if (t2 instanceof Bridge) {
                    return t2;
                }
            }
            return (T) this.hp;
        }
        if (this.hp == null) {
            return null;
        }
        hp hpVar = new hp(valueSet);
        hpVar.put(-99999987, Integer.valueOf(i2));
        hpVar.put(-99999985, cls);
        T t3 = (T) com.byazt.da.hp.l(this.hp.apply(hpVar));
        return t3 != null ? t3 : (T) com.byazt.xi.jx.jx.apply(hpVar);
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        Function<SparseArray<Object>, Object> function = this.hp;
        if (function != null) {
            return com.byazt.da.hp.l(com.byazt.da.hp.hp(function));
        }
        return null;
    }
}
