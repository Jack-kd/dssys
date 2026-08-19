package com.byazt.g;

import com.kuaishou.weapon.p0.t;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

@com.byazt.kj.hp(hp = {0, 1, 1352, 28})
/* loaded from: classes2.dex */
public class hp implements l {
    public final RandomAccessFile hp;

    public hp(File file) throws FileNotFoundException {
        this.hp = new RandomAccessFile(file, t.f31269k);
    }

    @Override // com.byazt.g.l
    public long hp() throws IOException {
        return this.hp.length();
    }

    @Override // com.byazt.g.l
    public void l() throws IOException {
        this.hp.close();
    }

    @Override // com.byazt.g.l
    public int hp(byte[] bArr, int i2, int i3) throws IOException {
        return this.hp.read(bArr, i2, i3);
    }

    @Override // com.byazt.g.l
    public void hp(long j2, long j3) throws IOException {
        this.hp.seek(j2);
    }
}
