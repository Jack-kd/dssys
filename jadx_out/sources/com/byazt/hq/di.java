package com.byazt.hq;

import androidx.core.app.NotificationCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes2.dex */
public final class di implements w {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20811a;
    public final cx hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f20812j;
    public final o jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.pn.e f20813l;

    /* renamed from: w, reason: collision with root package name */
    public u f20814w;

    @com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_GET_STREAM_INFO_FIND_END_TIME})
    public final class hp extends com.byazt.ru.l {
        public final a jx;

        public hp(a aVar) {
            super("OkHttp %s", di.this.s());
            this.jx = aVar;
        }

        public String hp() {
            return di.this.jx.hp().eb();
        }

        @Override // com.byazt.ru.l
        public void jx() {
            wv wvVar;
            boolean z2 = false;
            try {
                try {
                    try {
                        o oVar = di.this.jx;
                        if (oVar != null && (wvVar = oVar.f20923a) != null) {
                            wvVar.hp();
                        }
                        hq hqVarQ = di.this.q();
                        try {
                            if (di.this.f20813l.l()) {
                                this.jx.hp(di.this, new IOException("Canceled"));
                            } else {
                                this.jx.hp(di.this, hqVarQ);
                            }
                            if (hqVarQ.jx == 0) {
                                throw new IOException(hqVarQ.f20861j);
                            }
                        } catch (IOException e2) {
                            e = e2;
                            z2 = true;
                            if (z2) {
                                com.byazt.ksw.w.l().hp(4, "Callback failure for " + di.this.eb(), e);
                            } else {
                                di.this.f20814w.hp(di.this, e);
                                this.jx.hp(di.this, e);
                            }
                            di.this.hp.ec().l(this);
                        }
                    } catch (IOException e3) {
                        e = e3;
                    }
                } catch (Exception e4) {
                    di.this.f20814w.hp(di.this, new IOException(e4));
                    this.jx.hp(di.this, new IOException(e4));
                }
                di.this.hp.ec().l(this);
            } catch (Throwable th) {
                di.this.hp.ec().l(this);
                throw th;
            }
        }

        public void l() {
            wv wvVar;
            o oVar = di.this.jx;
            if (oVar == null || (wvVar = oVar.f20923a) == null) {
                return;
            }
            wvVar.gu();
        }
    }

    private di(cx cxVar, o oVar, boolean z2) {
        this.hp = cxVar;
        this.jx = oVar;
        this.f20812j = z2;
        this.f20813l = new com.byazt.pn.e(cxVar, z2);
    }

    private void e() {
        this.f20813l.hp(com.byazt.ksw.w.l().hp("response.body().close()"));
    }

    @Override // com.byazt.hq.w
    /* renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public di w() {
        return hp(this.hp, this.jx, this.f20812j);
    }

    public String eb() {
        StringBuilder sb = new StringBuilder();
        sb.append(j() ? "canceled " : "");
        sb.append(this.f20812j ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(s());
        return sb.toString();
    }

    @Override // com.byazt.hq.w
    public boolean j() {
        return this.f20813l.l();
    }

    @Override // com.byazt.hq.w
    public void jx() {
        this.f20813l.hp();
    }

    @Override // com.byazt.hq.w
    public hq l() throws IOException {
        synchronized (this) {
            if (this.f20811a) {
                throw new IllegalStateException("Already Executed");
            }
            this.f20811a = true;
        }
        e();
        try {
            try {
                wv wvVar = this.jx.f20923a;
                if (wvVar != null) {
                    wvVar.hp();
                }
                this.hp.ec().hp(this);
                hq hqVarQ = q();
                if (hqVarQ == null) {
                    throw new IOException("Canceled");
                }
                if (hqVarQ.jx == 0) {
                    throw new IOException(hqVarQ.f20861j);
                }
                this.hp.ec().l(this);
                return hqVarQ;
            } catch (IOException e2) {
                this.f20814w.hp(this, e2);
                this.hp.ec().l(this);
                return null;
            } catch (Exception e3) {
                this.f20814w.hp(this, new IOException(e3));
                this.hp.ec().l(this);
                return null;
            }
        } catch (Throwable th) {
            this.hp.ec().l(this);
            throw th;
        }
    }

    public hq q() throws IOException {
        ArrayList arrayList = new ArrayList(this.hp.ns());
        arrayList.add(this.f20813l);
        arrayList.add(new com.byazt.pn.hp(this.hp.a()));
        arrayList.add(new com.byazt.sv.hp(this.hp.eb()));
        arrayList.add(new com.byazt.tt.hp(this.hp));
        if (!this.f20812j) {
            arrayList.addAll(this.hp.cx());
        }
        arrayList.add(new com.byazt.pn.l(this.f20812j));
        return new com.byazt.pn.eb(arrayList, null, null, null, 0, this.jx, this, this.f20814w, this.hp.hp(), this.hp.l(), this.hp.jx()).hp(this.jx);
    }

    public String s() {
        return this.jx.hp().zy();
    }

    public static di hp(cx cxVar, o oVar, boolean z2) {
        di diVar = new di(cxVar, oVar, z2);
        diVar.f20814w = cxVar.b().hp(diVar);
        return diVar;
    }

    @Override // com.byazt.hq.w
    public o hp() {
        return this.jx;
    }

    @Override // com.byazt.hq.w
    public void hp(a aVar) {
        try {
            synchronized (this) {
                if (!this.f20811a) {
                    this.f20811a = true;
                } else {
                    throw new IllegalStateException("Already Executed");
                }
            }
            e();
            this.hp.ec().hp(new hp(aVar));
        } catch (Throwable th) {
            if (aVar != null) {
                aVar.hp(this, new IOException(th.getMessage()));
            }
        }
    }
}
