package com.byazt.jt;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN, 28})
/* loaded from: classes.dex */
public class hp {
    public final PluginValueSet hp;

    public hp(SparseArray<Object> sparseArray) {
        this.hp = com.byazt.xi.hp.hp(sparseArray).l();
    }

    public int a() {
        return this.hp.intValue(261006);
    }

    public boolean e() {
        return this.hp.booleanValue(261011);
    }

    public boolean eb() {
        return this.hp.booleanValue(261007);
    }

    public j gu() {
        SparseArray sparseArray = (SparseArray) this.hp.objectValue(261012, SparseArray.class);
        if (sparseArray != null) {
            return new j(sparseArray);
        }
        return null;
    }

    public String hp() {
        return (String) this.hp.objectValue(261001, String.class);
    }

    public String j() {
        return (String) this.hp.objectValue(261004, String.class);
    }

    public int jl() {
        return this.hp.intValue(261013);
    }

    public boolean jx() {
        return this.hp.booleanValue(261003);
    }

    public int k() {
        return this.hp.intValue(261015);
    }

    public String l() {
        return (String) this.hp.objectValue(261002, String.class);
    }

    public int[] q() {
        return (int[]) this.hp.objectValue(261009, int[].class);
    }

    public boolean s() {
        return this.hp.booleanValue(261008);
    }

    public boolean u() {
        return this.hp.booleanValue(261017);
    }

    public com.byazt.bm.hp v() {
        SparseArray sparseArray = (SparseArray) this.hp.objectValue(261016, SparseArray.class);
        if (sparseArray != null) {
            return new com.byazt.bm.hp(sparseArray);
        }
        return null;
    }

    public Function<SparseArray<Object>, Object> vv() {
        Map<String, Object> mapXs = xs();
        if (mapXs != null && !mapXs.isEmpty()) {
            Object obj = mapXs.get("qa_common_tool");
            if (obj instanceof Function) {
                return (Function) obj;
            }
        }
        return null;
    }

    public String w() {
        return (String) this.hp.objectValue(261005, String.class);
    }

    public Map<String, Object> xs() {
        return (Map) this.hp.objectValue(261018, Map.class);
    }

    public int zy() {
        return this.hp.intValue(261014);
    }
}
