package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
@ATSKeep
/* loaded from: classes3.dex */
public class xs implements u, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile u f24396l;

    public xs(u uVar) {
        this.f24396l = uVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24396l != null ? this.f24396l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24396l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.u
    public void clear() {
        if (this.f24396l != null) {
            this.f24396l.clear();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.u
    public com.byazt.ow.w get(String str) {
        if (this.f24396l != null) {
            return this.f24396l.get(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.ow.a aVar = Apply;
        if (Apply != 0) {
            aVar = new com.byazt.ow.a((Function) Apply);
        }
        return aVar;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.u
    public com.byazt.ow.jx getEncrypt(int i2) {
        if (this.f24396l != null) {
            return this.f24396l.getEncrypt(i2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Integer.valueOf(i2));
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.ow.j jVar = Apply;
        if (Apply != 0) {
            jVar = new com.byazt.ow.j((Function) Apply);
        }
        return jVar;
    }

    @Override // com.byazt.pg.u
    public void store() {
        if (this.f24396l != null) {
            this.f24396l.store();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        this.hp.apply(sparseArray);
    }

    public xs(Function function) {
        this.hp = function;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.u
    public com.byazt.ow.w get(String str, int i2) {
        if (this.f24396l != null) {
            return this.f24396l.get(str, i2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.ow.a aVar = Apply;
        if (Apply != 0) {
            aVar = new com.byazt.ow.a((Function) Apply);
        }
        return aVar;
    }
}
