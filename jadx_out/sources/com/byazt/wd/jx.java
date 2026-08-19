package com.byazt.wd;

import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;

@com.byazt.kj.hp(hp = {0, 1, 2141, 30})
/* loaded from: classes3.dex */
public abstract class jx {
    public static l hp(RandomAccessFile randomAccessFile, long j2, long j3) {
        return hp(randomAccessFile.getChannel(), j2, j3);
    }

    public static l hp(FileChannel fileChannel, long j2, long j3) {
        fileChannel.getClass();
        return new j(fileChannel, j2, j3);
    }
}
