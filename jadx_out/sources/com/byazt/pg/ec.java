package com.byazt.pg;

import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
@ATSKeep
/* loaded from: classes3.dex */
public class ec implements vv, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile vv f24384l;

    public ec(vv vvVar) {
        this.f24384l = vvVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24384l != null ? this.f24384l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24384l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.vv
    public Object getDispatchAdSdkInitializer(Bundle bundle, Object obj) {
        if (this.f24384l != null) {
            return this.f24384l.getDispatchAdSdkInitializer(bundle, obj);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, bundle);
        sparseArray.put(2, obj);
        return this.hp.apply(sparseArray);
    }

    public ec(Function function) {
        this.hp = function;
    }
}
