package ms.bz.bd.c.Pgl;

import android.content.res.AssetManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class v0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        InputStream inputStreamOpen;
        String str2 = str;
        AssetManager assets = pblw.hp().l().getAssets();
        if (!str2.startsWith((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "19e595", new byte[]{110}))) {
            str2 = ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a3ea8b", new byte[]{62})) + str2;
        }
        String[] list = assets.list("");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.length; i2++) {
            if (list[i2].endsWith(str2)) {
                String str3 = list[i2];
                String absolutePath = File.createTempFile((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4b4390", new byte[]{40, 115, 66, 95, 18}), "").getAbsolutePath();
                FileOutputStream fileOutputStream = null;
                try {
                    inputStreamOpen = assets.open(str3);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(absolutePath);
                        try {
                            byte[] bArr = new byte[256];
                            long j3 = 0;
                            while (true) {
                                int i3 = inputStreamOpen.read(bArr);
                                if (i3 <= 0) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i3);
                                j3 += i3;
                            }
                            fileOutputStream2.flush();
                            if (j3 > 0) {
                                arrayList.add(absolutePath);
                            }
                            pblo.hp(inputStreamOpen);
                            pblo.hp(fileOutputStream2);
                        } catch (IOException unused) {
                            fileOutputStream = fileOutputStream2;
                            pblo.hp(inputStreamOpen);
                            pblo.hp(fileOutputStream);
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            pblo.hp(inputStreamOpen);
                            pblo.hp(fileOutputStream);
                            throw th;
                        }
                    } catch (IOException unused2) {
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException unused3) {
                    inputStreamOpen = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamOpen = null;
                }
            }
        }
        return arrayList.toArray(new String[0]);
    }
}
