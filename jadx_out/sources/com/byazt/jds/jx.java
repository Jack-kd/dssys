package com.byazt.jds;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1095, 30})
/* loaded from: classes.dex */
public class jx extends w implements Handler.Callback {

    /* renamed from: u, reason: collision with root package name */
    public static int f21454u = 200;

    /* renamed from: v, reason: collision with root package name */
    public static int f21455v = 10;

    /* renamed from: a, reason: collision with root package name */
    public int f21456a;

    /* renamed from: e, reason: collision with root package name */
    public final long f21457e;
    public int eb;
    public volatile int ec;
    public volatile Handler gu;
    public com.byazt.cmm.w hp;

    /* renamed from: j, reason: collision with root package name */
    public final Object f21458j;
    public final List<com.byazt.jw.l> jl;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f21459k;

    /* renamed from: n, reason: collision with root package name */
    public final HashMap<String, List<com.byazt.jw.l>> f21460n;

    /* renamed from: q, reason: collision with root package name */
    public final long f21461q;

    /* renamed from: s, reason: collision with root package name */
    public final AtomicInteger f21462s;
    public volatile String sz;
    public final String vv;

    /* renamed from: w, reason: collision with root package name */
    public a f21463w;
    public final String xs;
    public final List<com.byazt.jw.l> zy;

    public jx(com.byazt.jw.w wVar, com.byazt.fxy.l lVar) {
        super(wVar, lVar);
        this.f21458j = new Object();
        this.f21456a = 0;
        this.eb = 0;
        this.f21462s = new AtomicInteger(0);
        this.f21461q = 5000L;
        this.f21457e = 5000000000L;
        this.jl = new ArrayList();
        this.zy = new CopyOnWriteArrayList();
        this.f21459k = false;
        this.xs = "after_upload";
        this.vv = "prepare_upload";
        this.ec = 0;
        this.sz = "DEFAULT";
        this.f21460n = new HashMap<>();
        this.hp = new com.byazt.cmm.jx(wVar, this);
        this.f21463w = new a(this.f21467l, this.jx);
    }

    private void q() {
        long jNanoTime;
        synchronized (this.f21458j) {
            try {
                try {
                    if (this.f21456a == 0 && com.byazt.giz.hp.hp(this.f21467l)) {
                        int iL = this.hp.l() + this.hp.hp();
                        int iL2 = this.f21467l.s().l();
                        if (iL != 0 && iL2 != 0) {
                            this.f21456a = (iL / iL2) + 4;
                        }
                    }
                    long jNanoTime2 = System.nanoTime();
                    this.f21458j.wait(5000L);
                    jNanoTime = System.nanoTime() - jNanoTime2;
                } catch (InterruptedException e2) {
                    com.byazt.giz.jx.hp("_error", "wait exception:" + e2.getMessage(), this.f21467l);
                }
                if (jNanoTime < 5000000000L && 5000000000L - jNanoTime >= 50000000) {
                    if (j()) {
                        com.byazt.giz.jx.hp("_error", "return wait serverBusy", this.f21467l);
                        return;
                    }
                    if (this.jx.jx()) {
                        com.byazt.giz.jx.hp("_error", "return wait otherError", this.f21467l);
                        return;
                    }
                    com.byazt.giz.l.hp(com.byazt.fxy.l.hp.l(), 1, this.f21467l);
                    int i2 = this.eb;
                    if (i2 < this.f21456a) {
                        this.eb = i2 + 1;
                        hp(72, "continue");
                    } else {
                        this.eb = 0;
                        this.f21456a = 0;
                        if (this.gu.hasMessages(72)) {
                            this.gu.removeMessages(72);
                        }
                        com.byazt.giz.jx.hp("_flush", "afterUpload send flush end", this.f21467l);
                    }
                    return;
                }
                com.byazt.giz.jx.hp("_error", "return wait timeout", this.f21467l);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean s() {
        return com.byazt.giz.hp.hp(this.f21467l) && this.f21467l.jx();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i2 = message.what;
        try {
            boolean zHp = this.f21467l.j().hp(this.f21467l.getContext());
            if (i2 == 1) {
                synchronized (jx.class) {
                    try {
                        if (!this.zy.isEmpty()) {
                            int size = this.zy.size();
                            for (int i3 = 0; i3 < size; i3++) {
                                hp(this.zy.get(i3), 1, zHp);
                            }
                        }
                        this.f21459k = true;
                        this.zy.clear();
                    } finally {
                    }
                }
            } else if (i2 == 3) {
                jx((com.byazt.jw.l) null, 3, zHp);
            } else if (i2 == 5) {
                ArrayList arrayList = new ArrayList(this.jl);
                this.jl.clear();
                jx(arrayList, "timeout_dispatch", 5);
            } else if (i2 == 74) {
                hp((com.byazt.jw.l) message.obj, 74, zHp);
            } else if (i2 == 71) {
                jx((com.byazt.jw.l) null, 71, zHp);
            } else if (i2 == 72) {
                jx((com.byazt.jw.l) null, 72, zHp);
            }
        } catch (Throwable th) {
            com.byazt.giz.jx.hp("_ms", "error:" + th.getMessage(), this.f21467l);
        }
        return true;
    }

    public com.byazt.cmm.w hp() {
        return this.hp;
    }

    public boolean j() {
        return com.byazt.giz.hp.hp(this.f21467l) && this.jx.l();
    }

    @Override // com.byazt.jds.w
    public void jx() {
        super.jx();
        this.gu = new Handler(eb(), this);
        this.jx.hp(this.gu);
        this.gu.sendEmptyMessage(1);
    }

    public Handler l() {
        return this.gu;
    }

    private void l(com.byazt.jw.l lVar, int i2, boolean z2) throws JSONException {
        this.f21462s.set(0);
        com.byazt.giz.l.hp(com.byazt.fxy.l.hp.gu(), 1, this.f21467l);
        this.hp.hp(lVar, i2, z2);
        com.byazt.giz.hp.hp(lVar, this.f21467l, "_ad");
        com.byazt.giz.hp.s(lVar, this.f21467l);
    }

    public boolean hp(int i2, String str, com.byazt.jw.l lVar) {
        if (this.f21467l == null) {
            return false;
        }
        return this.hp.hp(i2, str, lVar);
    }

    public void hp(com.byazt.jw.l lVar, boolean z2) {
        if (lVar == null) {
            return;
        }
        if (z2) {
            if (this.gu != null) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(lVar);
                jx(arrayList, "ignore_result_dispatch", 78);
                return;
            }
            com.byazt.giz.jx.hp("_error", "other thread handler is null，ignore is true", this.f21467l);
            return;
        }
        if (this.f21459k) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = lVar;
            messageObtain.what = 74;
            this.gu.sendMessage(messageObtain);
            return;
        }
        this.zy.add(lVar);
    }

    private void jx(com.byazt.jw.l lVar, int i2, boolean z2) {
        if (s()) {
            com.byazt.giz.hp.jx(lVar, this.f21467l);
            return;
        }
        boolean zJ = j();
        boolean z3 = com.byazt.giz.hp.q(lVar, this.f21467l) || i2 == 3;
        boolean zHp = com.byazt.giz.hp.hp(i2);
        com.byazt.giz.jx.hp("_error", "serbusy:" + zJ + " isCsjBusy:" + z3 + " flush:" + zHp, this.f21467l);
        if (zJ && !zHp && z3) {
            if (i2 == 3) {
                com.byazt.giz.jx.hp("_error", "start do flush", this.f21467l);
                jx((com.byazt.jw.l) null, 72, z2);
                return;
            } else {
                if (i2 != 74 && i2 != 1) {
                    com.byazt.giz.jx.hp("_error", "server busy", this.f21467l);
                    return;
                }
                boolean zHasMessages = this.gu.hasMessages(3);
                com.byazt.giz.jx.hp("_error", "server busy return : hasBusyMsg:".concat(String.valueOf(zHasMessages)), this.f21467l);
                if (zHasMessages) {
                    return;
                }
                this.f21463w.hp(3, 15000L, this.gu);
                return;
            }
        }
        if (!z2) {
            com.byazt.giz.jx.hp("_error", "AdThread NET IS NOT AVAILABLE!!!", this.f21467l);
            return;
        }
        if (hp(i2, "needUpload check", lVar)) {
            List<com.byazt.jw.l> listHp = this.hp.hp(i2, lVar, zJ, this.ec + "_" + this.sz);
            if (listHp != null && !listHp.isEmpty()) {
                listHp.size();
                hp(listHp, i2);
                return;
            } else {
                hp("prepare_upload");
                return;
            }
        }
        this.f21460n.clear();
        hp("prepare_upload");
    }

    private void l(List<com.byazt.jw.l> list, String str, int i2) {
        this.jl.addAll(list);
        com.byazt.jw.j jVarJ = this.f21467l.j();
        if (jVarJ != null && jVarJ.jl() != null) {
            f21455v = jVarJ.jl().j();
        }
        if (this.jl.size() >= f21455v) {
            if (this.gu.hasMessages(5)) {
                this.gu.removeMessages(5);
            }
            ArrayList arrayList = new ArrayList(this.jl);
            this.jl.clear();
            jx(arrayList, "max_size_dispatch", i2);
            return;
        }
        hp(str);
    }

    public void hp(int i2, String str) {
        try {
            if (!this.f21467l.j().hp(this.f21467l.getContext())) {
                com.byazt.giz.jx.hp("_error", "AdThread NET IS NOT AVAILABLE", this.f21467l);
                return;
            }
            if (hp(i2, str + " check", (com.byazt.jw.l) null)) {
                Message messageObtain = Message.obtain();
                messageObtain.what = i2;
                this.gu.sendMessage(messageObtain);
            }
        } catch (Throwable th) {
            com.byazt.giz.jx.hp(th.getMessage(), this.f21467l);
        }
    }

    private void hp(com.byazt.jw.l lVar, int i2, boolean z2) {
        try {
            l(lVar, i2, z2);
            jx(lVar, i2, z2);
        } catch (Throwable th) {
            com.byazt.giz.jx.hp("_error", "run exception:" + th.getMessage(), this.f21467l);
            com.byazt.giz.l.hp(com.byazt.fxy.l.hp.jx(), 1, this.f21467l);
        }
    }

    private void hp(String str) {
        if (this.jl.isEmpty()) {
            return;
        }
        com.byazt.jw.j jVarJ = this.f21467l.j();
        if (this.gu.hasMessages(5)) {
            this.gu.removeMessages(5);
        }
        long jJx = f21454u;
        if (jVarJ != null && jVarJ.jl() != null) {
            jJx = jVarJ.jl().jx();
        }
        this.gu.sendEmptyMessageDelayed(5, jJx);
        this.jl.size();
    }

    private void jx(List<com.byazt.jw.l> list, String str, int i2) {
        this.f21463w.hp(list, str, i2, this.f21458j);
        if (i2 != 78) {
            hp(i2);
        }
    }

    private void hp(List<com.byazt.jw.l> list, String str, int i2) {
        jx(list, str, i2);
    }

    private void hp(List<com.byazt.jw.l> list, int i2) {
        com.byazt.giz.hp.hp(list, this.f21467l);
        com.byazt.jw.l lVar = list.get(0);
        if (lVar == null) {
            com.byazt.giz.jx.hp("_error", "adLogEvent is null", this.f21467l);
            return;
        }
        if (list.size() <= 1 && !com.byazt.giz.hp.l(this.f21467l) && !com.byazt.giz.hp.j(this.f21467l)) {
            if (lVar.w() == 1) {
                hp(list, "highPriority", i2);
                return;
            }
            if (lVar.j() == 0 && lVar.w() == 2) {
                if (lVar.l() == 3) {
                    hp(list, "version_v3_single_directly", i2);
                    return;
                } else {
                    l(list, "singleOptimize", i2);
                    return;
                }
            }
            if (lVar.j() == 1) {
                hp(list, "stats_directly", i2);
                return;
            }
            if (lVar.j() == 3) {
                hp(list, "adType_v3_directly", i2);
                return;
            } else if (lVar.j() != 2) {
                com.byazt.giz.jx.hp("_error", "adLogEvent adType error", this.f21467l);
                return;
            } else {
                hp(list, "other_directly", i2);
                return;
            }
        }
        if (lVar.j() == 0 && lVar.w() == 2 && i2 == 74) {
            if (lVar.l() == 3) {
                hp(list, "version_v3_batch", i2);
                return;
            } else {
                l(list, "batchOptimize", i2);
                return;
            }
        }
        hp(list, "batchRead", i2);
    }

    private void hp(int i2) {
        hp("after_upload");
        if (i2 != 72) {
            this.eb = 0;
            this.f21456a = 0;
            if (this.gu.hasMessages(72)) {
                this.gu.removeMessages(72);
                return;
            }
            return;
        }
        q();
    }
}
