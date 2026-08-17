package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 546})
@ATSKeep
/* loaded from: classes3.dex */
public class nu implements ud, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile ud f24392l;

    public nu(ud udVar) {
        this.f24392l = udVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24392l != null ? this.f24392l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24392l = null;
            this.hp = function;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.ud
    public com.byazt.ctq.jx getGlobalStorage(hp hpVar, String str) {
        if (this.f24392l != null) {
            return this.f24392l.getGlobalStorage(hpVar, str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, hpVar != null ? hpVar.getAppId() : null);
        sparseArray.put(2, str);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.ctq.j jVar = Apply;
        if (Apply != 0) {
            jVar = new com.byazt.ctq.j((Function) Apply);
        }
        return jVar;
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.ud
    public com.byazt.ctq.w getLayerIsolateStore(hp hpVar, String str) {
        if (this.f24392l != null) {
            return this.f24392l.getLayerIsolateStore(hpVar, str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, hpVar != null ? hpVar.getAppId() : null);
        sparseArray.put(2, str);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.ctq.a aVar = Apply;
        if (Apply != 0) {
            aVar = new com.byazt.ctq.a((Function) Apply);
        }
        return aVar;
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.pg.ud
    public com.byazt.ctq.eb getVersionIsolateStore(hp hpVar, String str) {
        if (this.f24392l != null) {
            return this.f24392l.getVersionIsolateStore(hpVar, str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, hpVar != null ? hpVar.getAppId() : null);
        sparseArray.put(2, str);
        ?? Apply = this.hp.apply(sparseArray);
        com.byazt.ctq.s sVar = Apply;
        if (Apply != 0) {
            sVar = new com.byazt.ctq.s((Function) Apply);
        }
        return sVar;
    }

    public nu(Function function) {
        this.hp = function;
    }
}
