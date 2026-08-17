package com.byazt.aqw;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 34})
/* loaded from: classes2.dex */
public class l {
    public final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public Map<String, Object> a() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266006);
        sparseArray.put(-99999985, Map.class);
        return (Map) this.hp.apply(sparseArray);
    }

    public com.byazt.tl.l e() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266101);
        sparseArray.put(-99999985, Object.class);
        Object objApply = this.hp.apply(sparseArray);
        if (objApply instanceof Function) {
            return new com.byazt.tl.l((Function) objApply);
        }
        return null;
    }

    public boolean eb() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266007);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public float gu() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266010);
        sparseArray.put(-99999985, Float.TYPE);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    public boolean hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266001);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public float j() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266004);
        sparseArray.put(-99999985, Float.TYPE);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    public float jl() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266011);
        sparseArray.put(-99999985, Float.TYPE);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    public boolean jx() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266003);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public String k() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266103);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    public boolean l() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266002);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public boolean q() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266009);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public String s() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266008);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    public int v() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266104);
        sparseArray.put(-99999985, Integer.TYPE);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    public boolean w() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266005);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public com.byazt.tl.jx zy() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 266102);
        sparseArray.put(-99999985, Object.class);
        return new com.byazt.tl.jx(com.byazt.vd.jx.hp(this.hp.apply(sparseArray)));
    }
}
