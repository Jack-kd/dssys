package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 301})
@ATSKeep
/* loaded from: classes3.dex */
public class cx implements ns, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile ns f24380l;

    public cx(ns nsVar) {
        this.f24380l = nsVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24380l != null ? this.f24380l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24380l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.ns
    public Object getData(int i2) {
        if (this.f24380l != null) {
            return this.f24380l.getData(i2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, Integer.valueOf(i2));
        return this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.ns
    public void setData(int i2, Object obj) {
        if (this.f24380l != null) {
            this.f24380l.setData(i2, obj);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, obj);
        this.hp.apply(sparseArray);
    }

    public cx(Function function) {
        this.hp = function;
    }

    @Override // com.byazt.pg.ns
    public Object getData(int i2, com.byazt.ow.hp hpVar) {
        if (this.f24380l != null) {
            return this.f24380l.getData(i2, hpVar);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Integer.valueOf(i2));
        if (hpVar != null) {
            hpVar = new com.byazt.ow.l(hpVar);
        }
        sparseArray.put(2, hpVar);
        return this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.ns
    public void setData(int i2, Object obj, com.byazt.ow.hp hpVar) {
        if (this.f24380l != null) {
            this.f24380l.setData(i2, obj, hpVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, obj);
        if (hpVar != null) {
            hpVar = new com.byazt.ow.l(hpVar);
        }
        sparseArray.put(3, hpVar);
        this.hp.apply(sparseArray);
    }
}
