package com.byazt.gtz;

import com.byazt.wd.l;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import java.io.ByteArrayInputStream;
import java.nio.ByteBuffer;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1847, 28})
/* loaded from: classes2.dex */
public class hp {
    public static List<com.byazt.wd.hp> hp(l lVar, com.byazt.obl.l lVar2) throws Exception {
        return hp(com.byazt.hhw.hp.hp(lVar, lVar2, 1896449818).hp);
    }

    @DungeonFlag
    private static com.byazt.wd.hp l(ByteBuffer byteBuffer) throws Exception {
        ByteBuffer byteBufferHp = com.byazt.hhw.hp.hp(byteBuffer);
        byteBufferHp.get(new byte[byteBufferHp.remaining()]);
        byteBufferHp.flip();
        byteBufferHp.position(0);
        com.byazt.hhw.hp.hp(byteBufferHp);
        byte[] bArrL = com.byazt.hhw.hp.l(com.byazt.hhw.hp.hp(byteBufferHp));
        try {
            return new com.byazt.wd.hp(String.valueOf(((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArrL))).getSubjectDN()), bArrL);
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<com.byazt.wd.hp> hp(ByteBuffer byteBuffer) {
        try {
            ByteBuffer byteBufferHp = com.byazt.hhw.hp.hp(byteBuffer);
            if (!byteBufferHp.hasRemaining()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            while (byteBufferHp.hasRemaining()) {
                try {
                    arrayList.add(l(com.byazt.hhw.hp.hp(byteBufferHp)));
                } catch (Exception unused) {
                    return null;
                }
            }
            return arrayList;
        } catch (Exception unused2) {
            return null;
        }
    }
}
