package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 38})
@ATSKeep
/* loaded from: classes3.dex */
public class j implements jx, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jx f24387l;

    public j(jx jxVar) {
        this.f24387l = jxVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24387l != null ? this.f24387l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24387l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.jx
    public byte[] encrypt(byte[] bArr, int i2) {
        if (this.f24387l != null) {
            return this.f24387l.encrypt(bArr, i2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, bArr);
        sparseArray.put(2, Integer.valueOf(i2));
        return (byte[]) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jx
    public String getDid() {
        if (this.f24387l != null) {
            return this.f24387l.getDid();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.jx
    public String getOAID(boolean z2) {
        if (this.f24387l != null) {
            return this.f24387l.getOAID(z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Boolean.valueOf(z2));
        return (String) this.hp.apply(sparseArray);
    }

    public j(Function function) {
        this.hp = function;
    }
}
