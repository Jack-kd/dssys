package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
@ATSKeep
/* loaded from: classes3.dex */
public class n implements sz, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile sz f24391l;

    public n(sz szVar) {
        this.f24391l = szVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24391l != null ? this.f24391l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24391l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.sz
    public int getEventBatchSize() {
        if (this.f24391l != null) {
            return this.f24391l.getEventBatchSize();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.sz
    public String getMediationAppLogUrl() {
        if (this.f24391l != null) {
            return this.f24391l.getMediationAppLogUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.sz
    public boolean isAppLogV2() {
        if (this.f24391l != null) {
            return this.f24391l.isAppLogV2();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public n(Function function) {
        this.hp = function;
    }
}
