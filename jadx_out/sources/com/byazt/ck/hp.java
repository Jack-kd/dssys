package com.byazt.ck;

import com.byazt.mh.q;
import java.nio.ByteBuffer;

@com.byazt.kj.hp(hp = {0, 1, 1285, 28})
/* loaded from: classes2.dex */
public class hp extends jx<com.byazt.mh.l> {
    public hp(com.byazt.vj.l lVar) {
        super(lVar);
    }

    @Override // com.byazt.ck.jx
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public com.byazt.mh.l l(com.byazt.vj.l lVar, q.hp hpVar) {
        return new com.byazt.mh.l(lVar, hpVar);
    }

    public static hp hp(final ByteBuffer byteBuffer) {
        return new hp(new com.byazt.vj.hp() { // from class: com.byazt.ck.hp.1
            @Override // com.byazt.vj.hp
            public ByteBuffer hp() {
                byteBuffer.position(0);
                return byteBuffer;
            }
        });
    }
}
