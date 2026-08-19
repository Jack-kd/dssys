package ms.bz.bd.c.Pgl;

import java.io.BufferedInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
public abstract class pbly extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(int i2, int i3, long j2, String str, Object obj) throws Throwable {
        if (!g1.hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c75260", new byte[]{115, 59, 66, 84, 6, 46, 100, com.sigmob.sdk.archives.tar.e.f35453S, 116, com.sigmob.sdk.archives.tar.e.f35454T, 96, 56, 79, 85, 26, 46, 111, 24, 42, 75, 92, 1, 99, 116, 39, 2, 84}))) {
            return null;
        }
        switch (i2) {
            case 196609:
                Object[] objArr = (Object[]) obj;
                return hp(str, (byte[]) objArr[0], (String) objArr[1], (String) objArr[2]);
            case 196610:
                Object[] objArr2 = (Object[]) obj;
                return hp(str, (String) objArr2[0], (String) objArr2[1]);
            case 196611:
                Object[] objArr3 = (Object[]) obj;
                return l(str, (String) objArr3[0], (String) objArr3[1]);
            default:
                return super.hp(i2, i3, j2, str, obj);
        }
    }

    public abstract Object[] hp(String str, String str2, String str3);

    public abstract Object[] hp(String str, byte[] bArr, String str2, String str3);

    public abstract Object[] l(String str, String str2, String str3);

    public static void hp(BufferedInputStream bufferedInputStream) throws IOException {
        if (bufferedInputStream != null) {
            try {
                bufferedInputStream.close();
            } catch (IOException unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7530d4", new byte[]{43, com.sigmob.sdk.archives.tar.e.f35446L, 127, 71, 82});
            }
        }
    }

    public static void hp(DataOutputStream dataOutputStream) throws IOException {
        if (dataOutputStream != null) {
            try {
                dataOutputStream.close();
            } catch (IOException unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "77f275", new byte[]{43, com.sigmob.sdk.archives.tar.e.f35448N, 42, 69, 7});
            }
        }
    }
}
