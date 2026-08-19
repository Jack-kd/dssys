package com.byazt.ym;

import android.util.SparseArray;
import com.byazt.pg.b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
@ATSKeep
/* loaded from: classes3.dex */
public class s implements b, Function {
    public static final int STATE_KEY_BOOST = 0;
    public volatile int[] hp = new int[1];

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return Integer.valueOf(getState(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue()));
        }
        if (iIntValue == 2) {
            setState(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue(), ((Boolean) sparseArray.get(3)).booleanValue());
            return null;
        }
        if (iIntValue != 3) {
            if (iIntValue != 4) {
                return null;
            }
            resetSize(((Integer) sparseArray.get(1)).intValue());
            return null;
        }
        return Boolean.valueOf(assertAndSetState(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue(), ((Boolean) sparseArray.get(3)).booleanValue()));
    }

    @Override // com.byazt.pg.b
    public synchronized boolean assertAndSetState(int i2, int i3, boolean z2) {
        try {
            if (i2 >= this.hp.length) {
                resetSize(i2 + 1);
            }
            if (((this.hp[i2] & i3) == i3) == z2) {
                return true;
            }
            if (z2) {
                int[] iArr = this.hp;
                iArr[i2] = i3 | iArr[i2];
            } else {
                int[] iArr2 = this.hp;
                iArr2[i2] = (~i3) & iArr2[i2];
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.pg.b
    public synchronized int getState(int i2, int i3) {
        if (i2 < this.hp.length) {
            return this.hp[i2] & i3;
        }
        resetSize(i2 + 1);
        return 0;
    }

    @Override // com.byazt.pg.b
    public void resetSize(int i2) {
        if (i2 < this.hp.length) {
            return;
        }
        int[] iArr = new int[i2];
        System.arraycopy(this.hp, 0, iArr, 0, this.hp.length);
        this.hp = iArr;
    }

    @Override // com.byazt.pg.b
    public synchronized void setState(int i2, int i3, boolean z2) {
        try {
            if (i2 >= this.hp.length) {
                resetSize(i2 + 1);
            }
            if (z2) {
                int[] iArr = this.hp;
                iArr[i2] = i3 | iArr[i2];
            } else {
                int[] iArr2 = this.hp;
                iArr2[i2] = (~i3) & iArr2[i2];
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
