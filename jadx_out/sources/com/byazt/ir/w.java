package com.byazt.ir;

import android.text.TextUtils;
import com.byazt.gr.hp;
import com.byazt.ymw.sz;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.models.ClickCommon;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, 402, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w extends jx {
    public static File hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile w f21207l;
    public AtomicBoolean jx = new AtomicBoolean(true);

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f21209j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public boolean f21211w = false;

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f21208a = new AtomicBoolean(false);
    public AtomicInteger eb = new AtomicInteger(0);

    /* renamed from: s, reason: collision with root package name */
    public AtomicLong f21210s = new AtomicLong();

    private w() {
        s();
    }

    public static File eb() {
        if (hp == null) {
            try {
                File file = new File(new File(j.hp(), "tt_tmpl_pkg"), ClickCommon.CLICK_SCENE_TEMPLATE);
                file.mkdirs();
                hp = file;
            } catch (Throwable th) {
                u.hp("TemplateManager", "getTemplateDir error", th);
            }
        }
        return hp;
    }

    public static w l() {
        if (f21207l == null) {
            synchronized (w.class) {
                try {
                    if (f21207l == null) {
                        f21207l = new w();
                    }
                } finally {
                }
            }
        }
        return f21207l;
    }

    private void q() {
        if (this.eb.getAndSet(0) <= 0 || System.currentTimeMillis() - this.f21210s.get() <= 600000) {
            return;
        }
        a();
    }

    private void s() {
        com.byazt.sq.w.l(new com.byazt.uid.eb("init") { // from class: com.byazt.ir.w.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                s.hp();
                w.this.jx.set(false);
                w.this.jx();
                w.this.a();
                if (com.byazt.ui.hp.hp().jx() == null || !sz.hp(com.byazt.ui.hp.hp().jx().getContext())) {
                    return;
                }
                com.byazt.ui.hp.hp().jx().l().post(new Runnable() { // from class: com.byazt.ir.w.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (com.byazt.ui.hp.hp().jx() != null) {
                            com.byazt.ui.hp.hp();
                        }
                    }
                });
            }
        }, 10);
    }

    public void a() {
        hp(false);
    }

    public boolean j() {
        return this.f21211w;
    }

    public void jx() {
        com.byazt.gr.hp hpVarL = s.l();
        if (hpVarL == null || !hpVarL.a()) {
            return;
        }
        boolean zHp = hp(hpVarL);
        if (!zHp) {
            s.j();
        }
        this.f21211w = zHp;
    }

    public com.byazt.gr.hp w() {
        return s.l();
    }

    public boolean hp(com.byazt.gr.hp hpVar) {
        if (hpVar == null) {
            return false;
        }
        return hp(hpVar.hp()) || hp(hpVar.w()) || hp(hpVar.getResources());
    }

    @Override // com.byazt.ir.jx
    public File hp() {
        return eb();
    }

    public void hp(boolean z2) {
        List<hp.C0258hp> listHp;
        boolean z3;
        if (this.jx.get()) {
            return;
        }
        try {
            if (this.f21209j.get()) {
                if (z2) {
                    this.eb.getAndIncrement();
                    return;
                }
                return;
            }
            boolean z4 = true;
            this.f21209j.set(true);
            com.byazt.gr.hp hpVarJx = com.byazt.ui.hp.hp().jx().jx();
            com.byazt.gr.hp hpVarL = s.l();
            if (hpVarJx != null && hpVarJx.a()) {
                if (!s.l(hpVarJx)) {
                    this.f21209j.set(false);
                    this.f21210s.set(System.currentTimeMillis());
                    return;
                }
                if (com.byazt.ui.hp.hp().jx() != null) {
                    com.byazt.ui.hp.hp().jx().l().post(new Runnable() { // from class: com.byazt.ir.w.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.byazt.wx.w.hp().l();
                        }
                    });
                }
                s.hp(hpVarJx);
                boolean zHp = (hpVarJx.w() == null || TextUtils.isEmpty(hpVarJx.w().hp())) ? false : hp(hpVarJx.w().hp());
                if (hpVarJx.hp().size() != 0) {
                    listHp = hp(hpVarJx, hpVarL);
                    z3 = listHp != null;
                } else {
                    listHp = null;
                    z3 = zHp;
                }
                if (!zHp) {
                    List<hp.C0258hp> listL = l(hpVarJx, hpVarL);
                    if (listHp == null || listL == null) {
                        listHp = listL;
                    } else {
                        listHp.addAll(listL);
                    }
                    if (listL == null) {
                        z4 = false;
                    }
                    if (listL == null) {
                        this.f21209j.set(false);
                    }
                    z3 = z4;
                }
                if (z3 && hp(hpVarJx)) {
                    s.hp(hpVarJx);
                    s.jx();
                    l(listHp);
                }
                jx();
                this.f21209j.set(false);
                this.f21210s.set(System.currentTimeMillis());
                q();
                return;
            }
            this.f21209j.set(false);
            hp(109);
        } catch (Throwable unused) {
        }
    }
}
