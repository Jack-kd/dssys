package com.byazt.jz;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.pg.r;
import com.byazt.xci.mp;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 40, 41})
/* loaded from: classes.dex */
public class EmptyView extends View implements r.hp {

    /* renamed from: a, reason: collision with root package name */
    public List<View> f21781a;

    /* renamed from: e, reason: collision with root package name */
    public final Handler f21782e;
    public List<View> eb;
    public boolean ec;
    public final AtomicBoolean gu;
    public hp.l hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f21783j;
    public int jl;
    public volatile boolean jx;

    /* renamed from: k, reason: collision with root package name */
    public String f21784k;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f21785l;

    /* renamed from: q, reason: collision with root package name */
    public int f21786q;

    /* renamed from: s, reason: collision with root package name */
    public List<View> f21787s;

    /* renamed from: u, reason: collision with root package name */
    public boolean f21788u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f21789v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public View f21790w;
    public final AtomicBoolean xs;
    public mp zy;

    public interface hp {
        void hp();

        void hp(View view, Map<String, Object> map);

        void hp(boolean z2);

        void l();
    }

    @com.byazt.kj.hp(hp = {0, 1, 40, AVMDLDataLoader.KeyIsEnableLoaderPreempt})
    public static final class l implements hp {
        public final hp hp;

        public l(hp hpVar) {
            this.hp = hpVar;
        }

        @Override // com.byazt.jz.EmptyView.hp
        public void l() {
            if (this.hp != null) {
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.EmptyView.l.3
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.hp.l();
                    }
                });
            }
        }

        @Override // com.byazt.jz.EmptyView.hp
        public void hp(final boolean z2) {
            if (this.hp != null) {
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.EmptyView.l.1
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.hp.hp(z2);
                    }
                });
            }
        }

        @Override // com.byazt.jz.EmptyView.hp
        public void hp() {
            if (this.hp != null) {
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.EmptyView.l.2
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.hp.hp();
                    }
                });
            }
        }

        @Override // com.byazt.jz.EmptyView.hp
        public void hp(final View view, final Map<String, Object> map) {
            if (this.hp != null) {
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.EmptyView.l.4
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.hp.hp(view, map);
                    }
                });
            }
        }
    }

    public EmptyView(Context context, View view) {
        super(sz.getContext());
        this.jx = true;
        this.gu = new AtomicBoolean(true);
        this.jl = 1000;
        this.f21789v = false;
        this.f21788u = false;
        this.xs = new AtomicBoolean(false);
        this.vv = 0;
        this.ec = false;
        this.hp = new hp.l() { // from class: com.byazt.jz.EmptyView.6
            @Override // com.byazt.zn.hp.l
            public void onAppBackground() {
                if (!s.u().nu() && EmptyView.this.ec) {
                    EmptyView.this.ec = false;
                    if (EmptyView.this.a()) {
                        com.byazt.rk.l.l(EmptyView.this.getLifecycleId(), 1);
                    }
                    com.byazt.rk.j.j(EmptyView.this.getLifecycleId());
                }
            }

            @Override // com.byazt.zn.hp.l
            public void onAppExit() {
            }

            @Override // com.byazt.zn.hp.l
            public void onAppForeground() {
                if (s.u().nu() || EmptyView.this.ec) {
                    return;
                }
                EmptyView emptyView = EmptyView.this;
                if (emptyView.hp(emptyView.f21790w)) {
                    EmptyView.this.ec = true;
                    if (EmptyView.this.a()) {
                        com.byazt.rk.l.hp(EmptyView.this.getLifecycleId(), 1);
                    }
                    com.byazt.rk.j.jx(EmptyView.this.getLifecycleId());
                }
            }

            @Override // com.byazt.zn.hp.l
            public void onAppStart() {
            }
        };
        this.f21790w = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.f21782e = new com.byazt.ymw.ud(com.byazt.dnb.s.l(), this);
        this.f21789v = sz.l().qe();
        this.f21788u = sz.l().gi();
    }

    public static /* synthetic */ int a(EmptyView emptyView) {
        int i2 = emptyView.vv;
        emptyView.vv = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLifecycleId() {
        mp mpVar = this.zy;
        if (mpVar != null) {
            return mpVar.di();
        }
        return null;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.j.l(getLifecycleId(), 3);
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        int iHp;
        boolean z2 = this.f21789v || this.f21788u;
        Object obj = message.obj;
        boolean z3 = (obj instanceof String) && (TextUtils.equals("checkWhenAddToWindow", obj.toString()) || TextUtils.equals("checkWhenClicked", message.obj.toString()));
        if (message.what != 1) {
            return;
        }
        if (this.f21785l || (z2 && z3)) {
            if (!this.ec && hp(this.f21790w)) {
                this.ec = true;
                if (a()) {
                    com.byazt.rk.l.hp(getLifecycleId(), 0);
                }
                if (!eb()) {
                    com.byazt.rk.j.jx(getLifecycleId());
                }
            }
            String message2 = null;
            if (!z2) {
                if (!dy.l(this.f21790w, 20, this.f21786q)) {
                    this.f21782e.sendEmptyMessageDelayed(1, this.jl);
                    return;
                }
                w();
                hp hpVar = this.f21783j;
                if (hpVar != null) {
                    hpVar.hp(this.f21790w, null);
                    return;
                }
                return;
            }
            try {
                iHp = dy.hp(this.f21790w, 20, this.f21786q);
            } catch (Throwable th) {
                message2 = th.getMessage();
                iHp = 7;
            }
            if (iHp == 0) {
                w();
                if (this.f21783j != null && !this.xs.get()) {
                    this.xs.set(true);
                    this.f21783j.hp(this.f21790w, hp(z3, message));
                }
            } else if (!z3) {
                this.f21782e.sendEmptyMessageDelayed(1, this.jl);
            }
            Object obj2 = message.obj;
            if ((obj2 instanceof String) && TextUtils.equals("checkWhenClicked", obj2.toString())) {
                hp(iHp, message2);
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.xs.set(false);
        j();
        if (this.f21789v) {
            hp("checkWhenAddToWindow");
        }
        if (!this.ec && eb()) {
            this.ec = true;
            com.byazt.rk.j.jx(getLifecycleId());
        }
        l();
        s.u().jx().hp(this.hp);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.xs.set(false);
        w();
        if (this.ec) {
            this.ec = false;
            if (a()) {
                com.byazt.rk.l.l(getLifecycleId(), 0);
            }
            com.byazt.rk.j.j(getLifecycleId());
        }
        jx();
        s.u().jx().l(this.hp);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        View view;
        super.onWindowFocusChanged(z2);
        com.byazt.rk.j.hp(getLifecycleId(), z2 ? 1 : 2);
        hp hpVar = this.f21783j;
        if (hpVar != null) {
            hpVar.hp(z2);
        }
        if (!z2) {
            if (!this.ec || (view = this.f21790w) == null) {
                return;
            }
            view.postDelayed(new Runnable() { // from class: com.byazt.jz.EmptyView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (dy.l(EmptyView.this.f21790w, 20, EmptyView.this.f21786q)) {
                        return;
                    }
                    EmptyView.this.ec = false;
                    com.byazt.rk.j.j(EmptyView.this.getLifecycleId());
                }
            }, 500L);
            return;
        }
        if (this.ec || !hp(this.f21790w)) {
            return;
        }
        this.ec = true;
        com.byazt.rk.j.jx(getLifecycleId());
    }

    public void setAdType(int i2) {
        this.f21786q = i2;
    }

    public void setCallback(hp hpVar) {
        this.f21783j = new l(hpVar);
    }

    public void setNeedCheckingShow(final boolean z2) {
        this.xs.set(false);
        this.f21782e.post(new Runnable() { // from class: com.byazt.jz.EmptyView.5
            @Override // java.lang.Runnable
            public void run() {
                EmptyView.this.jx = z2;
                if (!z2 && EmptyView.this.f21785l) {
                    EmptyView.this.w();
                } else {
                    if (!z2 || EmptyView.this.f21785l) {
                        return;
                    }
                    EmptyView.this.j();
                }
            }
        });
    }

    public void setRefClickViews(List<View> list) {
        this.f21781a = list;
    }

    public void setRefCreativeViews(List<View> list) {
        this.eb = list;
    }

    public void setRefDirectDownloadViews(List<View> list) {
        this.f21787s = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        int i2 = this.f21786q;
        return i2 == 1 || i2 == 5 || i2 == 9;
    }

    private boolean eb() {
        int i2 = this.f21786q;
        return i2 == 7 || i2 == 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f21782e.post(new Runnable() { // from class: com.byazt.jz.EmptyView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!EmptyView.this.jx || EmptyView.this.f21785l) {
                    return;
                }
                EmptyView.this.f21785l = true;
                EmptyView.a(EmptyView.this);
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                EmptyView.this.f21782e.handleMessage(messageObtain);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        this.f21782e.post(new Runnable() { // from class: com.byazt.jz.EmptyView.4
            @Override // java.lang.Runnable
            public void run() {
                EmptyView.this.f21785l = false;
                EmptyView.this.f21782e.removeMessages(1);
            }
        });
    }

    private void jx() {
        if (this.gu.getAndSet(true)) {
            return;
        }
        com.byazt.rk.j.w(getLifecycleId());
        hp hpVar = this.f21783j;
        if (hpVar != null) {
            hpVar.l();
        }
    }

    private void l() {
        if (this.gu.getAndSet(false)) {
            com.byazt.rk.j.l(getLifecycleId());
            hp hpVar = this.f21783j;
            if (hpVar != null) {
                hpVar.hp();
            }
        }
    }

    public void hp() {
        hp(this.f21781a, (com.byazt.go.j) null);
        hp(this.eb, (com.byazt.go.j) null);
        hp(this.f21787s, (com.byazt.go.j) null);
    }

    public void hp(List<View> list, com.byazt.go.j jVar) {
        if (com.byazt.ymw.zy.l(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(jVar);
                    view.setOnTouchListener(jVar);
                }
            }
        }
    }

    public void hp(final String str) {
        this.f21782e.post(new Runnable() { // from class: com.byazt.jz.EmptyView.3
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.equals(str, "checkWhenClicked")) {
                    if (!EmptyView.this.jx) {
                        EmptyView.this.hp(8, (String) null);
                    }
                    if (!EmptyView.this.f21785l) {
                        EmptyView.this.hp(EmptyView.this.xs.get() ? 10 : 9, (String) null);
                    }
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                messageObtain.obj = str;
                EmptyView.this.f21782e.handleMessage(messageObtain);
            }
        });
    }

    public void hp(mp mpVar, String str) {
        this.zy = mpVar;
        this.f21784k = str;
        if (mpVar != null) {
            String strValueOf = String.valueOf(ky.zy(mpVar));
            int iJl = ky.jl(mpVar);
            if (this.f21786q == 0) {
                this.f21786q = iJl;
            }
            com.byazt.rk.j.hp(mpVar, strValueOf, iJl, getLifecycleId());
        }
    }

    public EmptyView(Context context, View view, int i2) {
        this(context, view);
        this.jl = i2;
    }

    private Map<String, Object> hp(boolean z2, Message message) {
        if (!z2) {
            return null;
        }
        HashMap map = new HashMap();
        if (TextUtils.equals("checkWhenAddToWindow", message.obj.toString())) {
            map.put("show_send_type", 2);
            return map;
        }
        if (TextUtils.equals("checkWhenClicked", message.obj.toString())) {
            map.put("show_send_type", 1);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str) {
        HashMap map = new HashMap();
        if (i2 == 0) {
            map.put("is_success", Boolean.TRUE);
        } else {
            map.put("is_success", Boolean.FALSE);
            if (i2 != 7) {
                str = dy.hp(i2);
            }
            map.put("error_code", Integer.valueOf(i2));
            map.put("error_message", str);
        }
        map.put("checking_cnt", Integer.valueOf(this.vv));
        com.byazt.jdb.j.hp(this.zy, this.f21784k, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(View view) {
        try {
            if (DeviceUtils.hp() && view != null) {
                if (view.isShown()) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
