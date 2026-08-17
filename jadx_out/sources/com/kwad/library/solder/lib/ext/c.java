package com.kwad.library.solder.lib.ext;

import android.os.Build;
import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public final class c {
    private final int aEM;
    private final String aFa;
    private final String aFb;
    private final String aFc;
    private final String aFd;
    private final String aFe;
    private final String aFf;
    private final String aFg;
    private final boolean aFh;
    private final boolean aFi;
    private final boolean aFj;
    private ExecutorService aFk;
    private String aFl;
    private byte[] aFm;
    private boolean aFn;
    private int aFo;

    public static class a {
        private static final String aFp;
        private String aFg;
        private boolean aFj;
        private ExecutorService aFk;
        private String aFl;
        private byte[] aFm;
        private boolean aFn;
        private int aFq;
        private int aEM = 3;
        private String aFa = "sodler";
        private String aFb = "code-cache";
        private String aFc = "lib";
        private String aFd = "temp";
        private String aFf = aFp;
        private String aFe = ".tmp";
        private boolean aFi = false;
        private boolean aFh = false;

        static {
            aFp = Ev() ? "base-1_apk" : "base-1.apk";
        }

        private static boolean Ev() {
            int i2 = Build.VERSION.SDK_INT;
            return i2 == 30 || i2 == 31 || i2 == 32;
        }

        public final c Ew() {
            return new c(this.aFh, this.aFi, this.aFg, this.aFa, this.aFb, this.aFc, this.aFd, this.aFe, this.aFf, this.aEM, this.aFl, this.aFm, this.aFn, this.aFj, this.aFk, this.aFq, (byte) 0);
        }

        public final a a(ExecutorService executorService) {
            this.aFk = executorService;
            return this;
        }

        public final a bA(boolean z2) {
            this.aFj = z2;
            return this;
        }

        public final a bz(boolean z2) {
            this.aFn = false;
            return this;
        }

        public final a cI(@NonNull String str) {
            this.aFa = str;
            return this;
        }

        public final a di(int i2) {
            if (i2 > 0) {
                this.aEM = i2;
            }
            return this;
        }

        public final a dj(int i2) {
            this.aFq = i2;
            return this;
        }
    }

    public /* synthetic */ c(boolean z2, boolean z3, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, String str8, byte[] bArr, boolean z4, boolean z5, ExecutorService executorService, int i3, byte b3) {
        this(z2, z3, str, str2, str3, str4, str5, str6, str7, i2, str8, bArr, z4, z5, executorService, i3);
    }

    public final int El() {
        return this.aFo;
    }

    public final String Em() {
        return this.aFa;
    }

    public final String En() {
        return this.aFb;
    }

    public final String Eo() {
        return this.aFc;
    }

    public final String Ep() {
        return this.aFd;
    }

    public final String Eq() {
        return this.aFe;
    }

    public final String Er() {
        return this.aFf;
    }

    public final boolean Es() {
        return this.aFi;
    }

    public final boolean Et() {
        return this.aFj;
    }

    public final ExecutorService Eu() {
        return this.aFk;
    }

    public final int getRetryCount() {
        return this.aEM;
    }

    private c(boolean z2, boolean z3, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, String str8, byte[] bArr, boolean z4, boolean z5, ExecutorService executorService, int i3) {
        this.aEM = i2;
        this.aFa = str2;
        this.aFb = str3;
        this.aFc = str4;
        this.aFd = str5;
        this.aFe = str6;
        this.aFf = str7;
        this.aFg = str;
        this.aFh = z2;
        this.aFi = z3;
        this.aFl = str8;
        this.aFm = bArr;
        this.aFn = z4;
        this.aFj = z5;
        this.aFk = executorService;
        this.aFo = i3;
    }
}
