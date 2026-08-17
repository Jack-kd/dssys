package com.byazt.gb;

import com.anythink.core.common.d.i;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 861, 34})
/* loaded from: classes2.dex */
public class l {
    public static final void hp(j jVar, int i2) throws IOException {
        int iL = jVar.l();
        if (iL == i2) {
            return;
        }
        throw new IOException("Expected chunk of type 0x" + Integer.toHexString(i2) + ", read 0x" + Integer.toHexString(iL) + i.f2495E);
    }
}
