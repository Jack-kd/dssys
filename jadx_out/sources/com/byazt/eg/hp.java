package com.byazt.eg;

import com.byazt.iu.j;
import com.kuaishou.weapon.p0.t;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 1468, 28})
/* loaded from: classes2.dex */
public class hp {
    private long j(RandomAccessFile randomAccessFile, j jVar) throws IOException {
        long length = randomAccessFile.length() - 22;
        for (long length2 = randomAccessFile.length() < 65536 ? randomAccessFile.length() : 65536L; length2 > 0 && length > 0; length2--) {
            length--;
            randomAccessFile.seek(length);
            if (jVar.j().hp(randomAccessFile) == 101010256) {
                return length;
            }
        }
        throw new IOException("Zip headers not found. Probably not a zip file");
    }

    private long jx(RandomAccessFile randomAccessFile, j jVar) throws IOException {
        long length = randomAccessFile.length();
        if (length < 22) {
            throw new IOException("Zip file size less than size of zip headers. Probably not a zip file.");
        }
        long j2 = length - 22;
        randomAccessFile.seek(j2);
        return ((long) jVar.j().hp(randomAccessFile)) == 101010256 ? j2 : j(randomAccessFile, jVar);
    }

    private void l(RandomAccessFile randomAccessFile, j jVar) throws IOException {
        com.byazt.iu.hp hpVar = new com.byazt.iu.hp();
        ArrayList arrayList = new ArrayList();
        long jL = jVar.l().l();
        long jHp = jVar.l().hp();
        randomAccessFile.seek(jL);
        for (int i2 = 0; i2 < jHp; i2++) {
            com.byazt.iu.jx jxVar = new com.byazt.iu.jx();
            if (jVar.j().hp(randomAccessFile) != 33639248) {
                throw new IOException("Expected central directory entry not found (#" + (i2 + 1) + ")");
            }
            randomAccessFile.skipBytes(6);
            jxVar.hp(jVar.j().l(randomAccessFile));
            randomAccessFile.skipBytes(4);
            jxVar.hp(jVar.j().hp(randomAccessFile));
            jxVar.l(jVar.j().hp(randomAccessFile));
            jxVar.jx(jVar.j().hp(randomAccessFile));
            int iL = jVar.j().l(randomAccessFile);
            jxVar.jx(iL);
            jxVar.j(jVar.j().l(randomAccessFile));
            int iL2 = jVar.j().l(randomAccessFile);
            randomAccessFile.skipBytes(8);
            jxVar.j(jVar.j().hp(randomAccessFile));
            if (iL <= 0) {
                throw new IOException("Invalid entry name in file header");
            }
            byte[] bArr = new byte[iL];
            randomAccessFile.readFully(bArr);
            jxVar.hp(hp(bArr));
            randomAccessFile.skipBytes(jxVar.gu());
            if (iL2 > 0) {
                randomAccessFile.skipBytes(iL2);
            }
            long filePointer = randomAccessFile.getFilePointer();
            randomAccessFile.seek(jxVar.zy() + 28);
            jxVar.l(jVar.j().l(randomAccessFile));
            randomAccessFile.seek(filePointer);
            arrayList.add(jxVar);
        }
        hpVar.hp(arrayList);
        jVar.hp(hpVar);
    }

    public j hp(String str) throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(str, t.f31269k);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (randomAccessFile.length() < 22) {
                throw new IOException("Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file");
            }
            j jVar = new j(str);
            hp(randomAccessFile, jVar);
            if (jVar.l().hp() == 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused) {
                }
                return jVar;
            }
            l(randomAccessFile, jVar);
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
            return jVar;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }

    private void hp(RandomAccessFile randomAccessFile, j jVar) throws IOException {
        randomAccessFile.seek(jx(randomAccessFile, jVar) + 4);
        com.byazt.iu.l lVar = new com.byazt.iu.l();
        randomAccessFile.skipBytes(6);
        lVar.hp(jVar.j().l(randomAccessFile));
        randomAccessFile.skipBytes(4);
        lVar.hp(jVar.j().hp(randomAccessFile));
        jVar.hp(lVar);
    }

    private String hp(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }
}
