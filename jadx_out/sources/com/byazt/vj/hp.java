package com.byazt.vj;

import com.byazt.dk.a;
import com.byazt.dk.jx;
import java.io.IOException;
import java.nio.ByteBuffer;

@com.byazt.kj.hp(hp = {0, 1, 2042, 28})
/* loaded from: classes3.dex */
public abstract class hp implements l {
    public abstract ByteBuffer hp();

    @Override // com.byazt.vj.l
    public a l() throws IOException {
        return new jx(hp());
    }
}
