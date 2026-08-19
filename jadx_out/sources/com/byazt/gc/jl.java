package com.byazt.gc;

import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;

@com.byazt.kj.hp(hp = {0, 1, 524, 19})
/* loaded from: classes2.dex */
public class jl implements gu {
    public static final long hp = Os.sysconf(OsConstants._SC_PAGESIZE);

    /* renamed from: j, reason: collision with root package name */
    public final long f20376j;
    public final long jx;

    /* renamed from: l, reason: collision with root package name */
    public final FileDescriptor f20377l;

    public jl(FileDescriptor fileDescriptor, long j2, long j3) {
        this.f20377l = fileDescriptor;
        this.jx = j2;
        this.f20376j = j3;
    }

    @Override // com.byazt.gc.gu
    public long hp() {
        return this.f20376j;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[RETURN, SYNTHETIC] */
    @Override // com.byazt.gc.gu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.gc.e r18, long r19, int r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.gc.jl.hp(com.byazt.gc.e, long, int):void");
    }
}
