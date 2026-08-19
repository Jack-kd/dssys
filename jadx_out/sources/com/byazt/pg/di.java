package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
@ATSKeep
/* loaded from: classes3.dex */
public class di implements b, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile b f24382l;

    public di(b bVar) {
        this.f24382l = bVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24382l != null ? this.f24382l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24382l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.b
    public boolean assertAndSetState(int i2, int i3, boolean z2) {
        if (this.f24382l != null) {
            return this.f24382l.assertAndSetState(i2, i3, z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, Integer.valueOf(i3));
        sparseArray.put(3, Boolean.valueOf(z2));
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.b
    public int getState(int i2, int i3) {
        if (this.f24382l != null) {
            return this.f24382l.getState(i2, i3);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, Integer.valueOf(i3));
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.b
    public void resetSize(int i2) {
        if (this.f24382l != null) {
            this.f24382l.resetSize(i2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.b
    public void setState(int i2, int i3, boolean z2) {
        if (this.f24382l != null) {
            this.f24382l.setState(i2, i3, z2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, Integer.valueOf(i3));
        sparseArray.put(3, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    public di(Function function) {
        this.hp = function;
    }
}
