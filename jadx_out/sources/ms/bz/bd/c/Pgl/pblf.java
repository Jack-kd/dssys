package ms.bz.bd.c.Pgl;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* loaded from: classes5.dex */
public final class pblf {
    private static final String hp = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "a4fdb6", new byte[]{126, com.sigmob.sdk.archives.tar.e.f35449O, 91, 19, 71, 45});

    public static int hp(Context context) {
        InputStream inputStreamOpen;
        int i2 = 255;
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(com.byazt.rz.l.hp(context).getAbsolutePath());
            int i3 = 0;
            sb.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7b0235", new byte[]{105}));
            String str = hp;
            sb.append(str);
            String string = sb.toString();
            File file = new File(string);
            if (file.exists()) {
                i2 = 2;
                file.delete();
            }
            inputStreamOpen = context.getResources().getAssets().open(str);
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i4 = inputStreamOpen.read(bArr, 0, 4096);
                        if (i4 == -1) {
                            break;
                        }
                        byteArrayOutputStream2.write(bArr, 0, i4);
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(string);
                    fileOutputStream.write(byteArrayOutputStream2.toByteArray());
                    fileOutputStream.close();
                    if (byteArrayOutputStream2.size() <= 0) {
                        i3 = 3;
                    } else if (!new File(string).exists()) {
                        i3 = i2;
                    }
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable unused) {
                    }
                    try {
                        byteArrayOutputStream2.close();
                        return i3;
                    } catch (Throwable unused2) {
                        return i3;
                    }
                } catch (Throwable unused3) {
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1589cc", new byte[]{33, com.sigmob.sdk.archives.tar.e.f35446L, 116, 74});
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable unused4) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable unused5) {
                            }
                        }
                        return i2;
                    } finally {
                    }
                }
            } catch (Throwable unused6) {
            }
        } catch (Throwable unused7) {
            inputStreamOpen = null;
        }
    }
}
