package com.byazt.k;

import com.byazt.fn.vv;
import com.byazt.fn.xs;
import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.y.gu;
import com.byazt.y.zy;
import com.byazt.yk.Downloader;

@com.byazt.kj.hp(hp = {0, 1, 42, 28})
/* loaded from: classes2.dex */
public class hp implements vv {
    public int hp;

    private long l(com.byazt.jb.hp hpVar) throws InterruptedException {
        long jHp = hpVar.hp("clear_space_sleep_time", 0L);
        if (jHp <= 0) {
            return 0L;
        }
        if (jHp > 5000) {
            jHp = 5000;
        }
        gu.l("AppDownloadDiskSpaceHandler", "waiting for space clear, sleepTime = ".concat(String.valueOf(jHp)), null);
        try {
            Thread.sleep(jHp);
        } catch (InterruptedException unused) {
        }
        gu.l("AppDownloadDiskSpaceHandler", "waiting end!", null);
        return jHp;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    @Override // com.byazt.fn.vv
    public boolean hp(long j2, long j3, xs xsVar) throws Throwable {
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(this.hp);
        if (!hp(hpVarHp)) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        j.hp().jx();
        long j4 = 0;
        long jL = zy.l(0L);
        hp();
        long jL2 = zy.l(0L);
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jL2 < j3) {
            long jL3 = l(hpVarHp);
            if (jL3 > 0) {
                jL2 = zy.l(0L);
            }
            j4 = jL3;
        }
        long j5 = jL2;
        gu.l("AppDownloadDiskSpaceHandler", "cleanUpDisk, byteRequired = " + j3 + ", byteAvailableAfter = " + j5 + ", cleaned = " + (j5 - jL), null);
        hp(jL, j5, j3, jCurrentTimeMillis2, j4);
        if (j5 < j3) {
            return false;
        }
        if (xsVar == null) {
            return true;
        }
        xsVar.hp();
        return true;
    }

    private boolean hp(com.byazt.jb.hp hpVar) {
        if (hpVar.hp("clear_space_use_disk_handler", 0) != 1) {
            return false;
        }
        return System.currentTimeMillis() - j.hp().l() >= hpVar.hp("clear_space_min_time_interval", 600000L);
    }

    private void hp() throws Throwable {
        jl.u();
        jx.hp();
        jx.l();
    }

    private void hp(long j2, long j3, long j4, long j5, long j6) {
        DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(this.hp);
        if (downloadInfo == null) {
            return;
        }
        try {
            com.byazt.l.hp.hp().hp(downloadInfo, j2, j3, j4, j5, j6, j3 > j4);
        } catch (Exception unused) {
        }
    }
}
