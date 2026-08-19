package com.byazt.pg;

import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 150})
@ATSKeep
/* loaded from: classes3.dex */
public class q implements s, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile s f24394l;

    public q(s sVar) {
        this.f24394l = sVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24394l != null ? this.f24394l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24394l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.s
    public Object getInitialInstance(Bundle bundle) {
        if (this.f24394l != null) {
            return this.f24394l.getInitialInstance(bundle);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, bundle);
        return this.hp.apply(sparseArray);
    }

    public q(Function function) {
        this.hp = function;
    }
}
