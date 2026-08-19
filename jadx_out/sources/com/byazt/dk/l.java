package com.byazt.dk;

import androidx.core.view.PointerIconCompat;
import java.nio.ByteOrder;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ALL_SCROLL, 34})
/* loaded from: classes2.dex */
public class l extends j {
    public void hp(int i2) {
        hp((byte) (i2 & 255));
        hp((byte) ((i2 >> 8) & 255));
        hp((byte) ((i2 >> 16) & 255));
        hp((byte) ((i2 >> 24) & 255));
    }

    @Override // com.byazt.dk.j
    public void jx(int i2) {
        super.jx(i2);
        this.hp.order(ByteOrder.BIG_ENDIAN);
    }

    public void l(int i2) {
        hp((byte) ((i2 >> 24) & 255));
        hp((byte) ((i2 >> 16) & 255));
        hp((byte) ((i2 >> 8) & 255));
        hp((byte) (i2 & 255));
    }
}
