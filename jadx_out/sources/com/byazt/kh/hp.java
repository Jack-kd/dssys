package com.byazt.kh;

import com.byazt.iu.j;
import com.byazt.iu.jx;
import com.byazt.lc.eb;
import com.byazt.lc.q;
import com.kuaishou.weapon.p0.t;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipException;

@com.byazt.kj.hp(hp = {0, 1, 430, 28})
/* loaded from: classes.dex */
public class hp {
    public final j hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.eg.l f22068l = new com.byazt.eg.l();

    public hp(j jVar) {
        this.hp = jVar;
    }

    public void hp(boolean z2, boolean z3) throws Throwable {
        RandomAccessFile randomAccessFile;
        Iterator<jx> it;
        long jA;
        hp hpVar = this;
        File file = new File(hpVar.hp.jx().getAbsolutePath() + ".rm_tmp");
        if (file.exists()) {
            file.delete();
        }
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                randomAccessFile2 = new RandomAccessFile(hpVar.hp.jx(), t.f31269k);
                try {
                    List<jx> listHp = hpVar.hp.hp().hp();
                    HashSet hashSet = new HashSet();
                    Iterator<jx> it2 = listHp.iterator();
                    int iJx = 0;
                    while (it2.hasNext()) {
                        jx next = it2.next();
                        if (hpVar.hp(next, z2, z3)) {
                            hashSet.add(next.jl());
                        } else {
                            long jZy = next.zy();
                            if ("resources.arsc".equals(next.jl())) {
                                try {
                                    long filePointer = randomAccessFile.getFilePointer() + next.j();
                                    if (filePointer % 4096 == 0) {
                                        it = it2;
                                        jA = 0;
                                    } else {
                                        it = it2;
                                        jA = 4096 - ((filePointer - next.a()) % 4096);
                                    }
                                    if (jA != 0) {
                                        int iA = next.a();
                                        int i2 = (int) jA;
                                        next.l(i2);
                                        hp(randomAccessFile2, randomAccessFile, jZy, next.w(), next.jl());
                                        this.hp.j().hp(randomAccessFile, i2);
                                        hp(randomAccessFile2, randomAccessFile, jZy + next.w() + 2, next.e(), next.jl());
                                        randomAccessFile.write(new byte[i2]);
                                        hp(randomAccessFile2, randomAccessFile, jZy + next.w() + 2 + next.e() + iA, next.l(), next.jl());
                                        hpVar = this;
                                    }
                                    long j2 = iJx;
                                    next.j(j2);
                                    iJx = (int) (j2 + next.jx());
                                    it2 = it;
                                } catch (Throwable th) {
                                    th = th;
                                    hpVar = this;
                                    if (randomAccessFile2 != null) {
                                        randomAccessFile2.close();
                                    }
                                    if (randomAccessFile != null) {
                                        randomAccessFile.close();
                                    }
                                    hpVar.hp(file);
                                    throw th;
                                }
                            } else {
                                it = it2;
                            }
                            hpVar = this;
                            hpVar.hp(randomAccessFile2, randomAccessFile, jZy, next.jx(), next.jl());
                            long j22 = iJx;
                            next.j(j22);
                            iJx = (int) (j22 + next.jx());
                            it2 = it;
                        }
                    }
                    hpVar.hp.hp().hp(hashSet);
                    hpVar.f22068l.hp(hpVar.hp, randomAccessFile);
                    hpVar.hp(hpVar.hp.jx(), file);
                    randomAccessFile2.close();
                    randomAccessFile.close();
                    hpVar.hp(file);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                randomAccessFile2 = null;
            }
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile = null;
        }
    }

    private boolean hp(jx jxVar, boolean z2, boolean z3) {
        if (z2) {
            if (q.w() && jxVar.jl().equals("classes.dex")) {
                return false;
            }
            if (jxVar.jl().startsWith("classes") && jxVar.jl().endsWith(".dex")) {
                return true;
            }
        }
        return z3 && jxVar.jl().startsWith("lib/") && jxVar.jl().endsWith(".so");
    }

    public void hp(File file) throws ZipException {
        if (file.exists() && !file.delete()) {
            throw new ZipException("Could not delete temporary file");
        }
    }

    public void hp(RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2, long j2, long j3, String str) throws IOException {
        eb.hp(randomAccessFile, randomAccessFile2, j2, j3 + j2, str);
    }

    private void hp(File file, File file2) throws ZipException {
        if (!file2.renameTo(file)) {
            throw new ZipException("cannot rename modified zip file");
        }
    }
}
