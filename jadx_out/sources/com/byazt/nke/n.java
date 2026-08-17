package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
@ATSKeep
/* loaded from: classes3.dex */
public class n implements sz, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile sz f23676l;

    public n(sz szVar) {
        this.f23676l = szVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        Object obj2 = sparseArray.get(1);
        this.f23676l.onStep(((Integer) obj2).intValue(), sparseArray.get(2));
        return null;
    }

    @Override // com.byazt.nke.sz
    public void onStep(int i2, Object obj) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, obj);
        this.hp.apply(sparseArray);
    }

    public n(Function function) {
        this.hp = function;
    }
}
