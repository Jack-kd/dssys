package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
@ATSKeep
/* loaded from: classes3.dex */
public class di implements b, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile b f23671l;

    public di(b bVar) {
        this.f23671l = bVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            Object xsVar = sparseArray.get(1);
            if (xsVar != null) {
                xsVar = new xs((Function) xsVar);
            }
            this.f23671l.onSuccess((u) xsVar);
            return null;
        }
        if (iIntValue != 2) {
            return null;
        }
        this.f23671l.onFailed(((Integer) sparseArray.get(1)).intValue(), (String) sparseArray.get(2), (Throwable) sparseArray.get(3));
        return null;
    }

    @Override // com.byazt.nke.b
    public void onFailed(int i2, String str, Throwable th) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, str);
        sparseArray.put(3, th);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.b
    public void onSuccess(u uVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (uVar != null) {
            uVar = new xs(uVar);
        }
        sparseArray.put(1, uVar);
        this.hp.apply(sparseArray);
    }

    public di(Function function) {
        this.hp = function;
    }
}
