package com.byazt.eg;

import com.byazt.iu.j;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.Iterator;

@com.byazt.kj.hp(hp = {0, 1, 1468, 34})
/* loaded from: classes2.dex */
public class l {
    public void hp(j jVar, RandomAccessFile randomAccessFile) throws Throwable {
        if (jVar == null || randomAccessFile == null) {
            throw new IOException("input parameters is null, cannot finalize zip file");
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                long filePointer = randomAccessFile.getFilePointer();
                hp(jVar, byteArrayOutputStream2);
                hp(jVar, byteArrayOutputStream2.size(), (int) filePointer, byteArrayOutputStream2);
                randomAccessFile.write(byteArrayOutputStream2.toByteArray());
                byteArrayOutputStream2.close();
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void hp(j jVar, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        if (jVar.hp() == null || jVar.hp().hp() == null || jVar.hp().hp().size() <= 0) {
            return;
        }
        Iterator<com.byazt.iu.jx> it = jVar.hp().hp().iterator();
        while (it.hasNext()) {
            hp(it.next(), byteArrayOutputStream, jVar.j());
        }
    }

    private void hp(com.byazt.iu.jx jxVar, ByteArrayOutputStream byteArrayOutputStream, jx jxVar2) throws IOException {
        if (jxVar != null) {
            byte[] bArr = {0, 0};
            jxVar2.hp((OutputStream) byteArrayOutputStream, 33639248);
            jxVar2.hp(byteArrayOutputStream, 0);
            jxVar2.hp(byteArrayOutputStream, 0);
            jxVar2.hp(byteArrayOutputStream, 0);
            jxVar2.hp(byteArrayOutputStream, jxVar.hp());
            jxVar2.hp(byteArrayOutputStream, 2081);
            jxVar2.hp(byteArrayOutputStream, 545);
            jxVar2.hp((OutputStream) byteArrayOutputStream, (int) jxVar.eb());
            jxVar2.hp((OutputStream) byteArrayOutputStream, (int) jxVar.s());
            jxVar2.hp((OutputStream) byteArrayOutputStream, (int) jxVar.q());
            byte[] bArrHp = new byte[0];
            if (jxVar.jl() != null && jxVar.jl().trim().length() > 0) {
                bArrHp = hp(jxVar.jl());
            }
            jxVar2.hp(byteArrayOutputStream, bArrHp.length);
            int iGu = jxVar.gu();
            jxVar2.hp(byteArrayOutputStream, iGu);
            jxVar2.hp(byteArrayOutputStream, 0);
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(bArr);
            jxVar2.hp((OutputStream) byteArrayOutputStream, (int) jxVar.zy());
            if (bArrHp.length > 0) {
                byteArrayOutputStream.write(bArrHp);
            }
            if (iGu > 0) {
                byteArrayOutputStream.write(new byte[iGu]);
                return;
            }
            return;
        }
        throw new IOException("input parameters is null, cannot write local file header");
    }

    private void hp(j jVar, int i2, int i3, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        jVar.j().hp((OutputStream) byteArrayOutputStream, 101010256);
        jVar.j().hp(byteArrayOutputStream, 0);
        jVar.j().hp(byteArrayOutputStream, 0);
        int size = jVar.hp().hp().size();
        jVar.j().hp(byteArrayOutputStream, size);
        jVar.j().hp(byteArrayOutputStream, size);
        jVar.j().hp((OutputStream) byteArrayOutputStream, i2);
        jVar.j().hp((OutputStream) byteArrayOutputStream, i3);
        jVar.j().hp(byteArrayOutputStream, 0);
    }

    private byte[] hp(String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }
}
