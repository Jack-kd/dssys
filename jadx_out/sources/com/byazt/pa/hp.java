package com.byazt.pa;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.byazt.jw.w;

@com.byazt.kj.hp(hp = {0, 1, 1351, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: j, reason: collision with root package name */
    public static volatile hp f24304j = null;
    public static int jx = 3000;
    public volatile HandlerThread hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile Handler f24305l = null;

    /* renamed from: w, reason: collision with root package name */
    public Looper f24306w;

    private hp(w wVar) {
        this.hp = null;
        this.f24306w = null;
        if (wVar != null && wVar.j() != null && wVar.j().v() != null) {
            this.f24306w = wVar.j().v();
        } else {
            this.hp = new HandlerThread("csj_ad_log", 10);
            this.hp.start();
        }
    }

    public static hp hp(w wVar) {
        if (f24304j == null) {
            synchronized (hp.class) {
                try {
                    if (f24304j == null) {
                        f24304j = new hp(wVar);
                    }
                } finally {
                }
            }
        }
        return f24304j;
    }

    public int l() {
        if (jx <= 0) {
            jx = 3000;
        }
        return jx;
    }

    public Handler hp() {
        if (this.f24306w != null) {
            if (this.f24305l == null) {
                synchronized (hp.class) {
                    try {
                        if (this.f24305l == null) {
                            this.f24305l = new Handler(this.f24306w);
                        }
                    } finally {
                    }
                }
            }
        } else if (this.hp != null && this.hp.isAlive()) {
            if (this.f24305l == null) {
                synchronized (hp.class) {
                    try {
                        if (this.f24305l == null) {
                            this.f24305l = new Handler(this.hp.getLooper());
                        }
                    } finally {
                    }
                }
            }
        } else {
            synchronized (hp.class) {
                try {
                    if (this.hp == null || !this.hp.isAlive()) {
                        this.hp = new HandlerThread("csj_init_handle", -1);
                        this.hp.start();
                        this.f24305l = new Handler(this.hp.getLooper());
                    }
                } finally {
                }
            }
        }
        return this.f24305l;
    }
}
