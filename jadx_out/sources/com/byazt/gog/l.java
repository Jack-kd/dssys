package com.byazt.gog;

import android.os.Looper;
import com.byazt.jz.vv;
import com.byazt.uid.eb;

@com.byazt.kj.hp(hp = {0, 1, 1654, 34})
/* loaded from: classes2.dex */
public class l extends eb {

    /* renamed from: a, reason: collision with root package name */
    public String f20526a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public long f20527j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.gog.hp f20528l;

    /* renamed from: w, reason: collision with root package name */
    public String f20529w;

    @com.byazt.kj.hp(hp = {0, 1, 1654, 123})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public com.byazt.gog.hp f20530a;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f20531j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public long f20532l;

        /* renamed from: w, reason: collision with root package name */
        public String f20533w;

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp jx(String str) {
            this.f20533w = str;
            return this;
        }

        public hp l(long j2) {
            this.jx = j2;
            return this;
        }

        public hp hp(com.byazt.gog.hp hpVar) {
            this.f20530a = hpVar;
            return this;
        }

        public hp l(String str) {
            this.f20531j = str;
            return this;
        }

        public hp hp(long j2) {
            this.f20532l = j2;
            return this;
        }

        public void hp() {
            l lVar = new l("tt_csj_download_thread");
            lVar.f20526a = this.f20533w;
            lVar.f20529w = this.f20531j;
            lVar.f20527j = this.jx;
            lVar.jx = this.f20532l;
            lVar.hp = this.hp;
            lVar.f20528l = this.f20530a;
            l.l(lVar);
        }
    }

    public l(String str) {
        super(str);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f20528l == null) {
            return;
        }
        String str = this.hp;
        str.getClass();
        switch (str) {
            case "onIdle":
                this.f20528l.hp();
                break;
            case "onInstalled":
                this.f20528l.hp(this.f20529w, this.f20526a);
                break;
            case "onDownloadActive":
                this.f20528l.hp(this.jx, this.f20527j, this.f20529w, this.f20526a);
                break;
            case "onDownloadFailed":
                this.f20528l.jx(this.jx, this.f20527j, this.f20529w, this.f20526a);
                break;
            case "onDownloadPaused":
                this.f20528l.l(this.jx, this.f20527j, this.f20529w, this.f20526a);
                break;
            case "onDownloadFinished":
                this.f20528l.hp(this.jx, this.f20529w, this.f20526a);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            vv.a().post(runnable);
        } else {
            runnable.run();
        }
    }
}
