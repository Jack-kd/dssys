package com.kwad.framework.filedownloader.f;

/* loaded from: classes4.dex */
public class e {
    public final int aDs;
    public final long aDt;
    public final boolean aDu;
    public final boolean aDv;
    public final int aDw;
    public final boolean aDx;
    public final boolean aDy;

    public static class a {
        private static final e aDz = new e(0);
    }

    public /* synthetic */ e(byte b3) {
        this();
    }

    public static e Dz() {
        return a.aDz;
    }

    public static int dd(int i2) {
        if (i2 > 12) {
            d.d(e.class, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto", Integer.valueOf(i2), 12, 12);
            return 12;
        }
        if (i2 > 0) {
            return i2;
        }
        d.d(e.class, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto", Integer.valueOf(i2), 1, 1);
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b A[Catch: all -> 0x0051, TryCatch #2 {all -> 0x0051, blocks: (B:7:0x002d, B:8:0x0034, B:9:0x003a, B:10:0x0040, B:11:0x0046, B:12:0x004a, B:34:0x0077, B:36:0x007b, B:38:0x007f, B:39:0x0087), top: B:92:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0087 A[Catch: all -> 0x0051, TRY_LEAVE, TryCatch #2 {all -> 0x0051, blocks: (B:7:0x002d, B:8:0x0034, B:9:0x003a, B:10:0x0040, B:11:0x0046, B:12:0x004a, B:34:0x0077, B:36:0x007b, B:38:0x007f, B:39:0x0087), top: B:92:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private e() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.framework.filedownloader.f.e.<init>():void");
    }
}
