package com.byazt.oc;

import android.text.TextUtils;
import com.byazt.mg.j;
import com.byazt.tw.a;
import com.byazt.ya.jx;
import com.byazt.ymw.eb;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@com.byazt.kj.hp(hp = {0, 1, 1207, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static final boolean hp = com.byazt.qm.l.l();
    public C0324hp jx;

    /* renamed from: l, reason: collision with root package name */
    public HashMap<String, Boolean> f23933l;

    @com.byazt.kj.hp(hp = {0, 1, 1207, 255})
    public static class l {
        public static final hp hp = new hp();
    }

    public static hp hp() {
        return l.hp;
    }

    private static jx jx() {
        File file = new File(eb.l(com.byazt.fw.l.getContext(), false, null), "proxy_cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            jx jxVar = new jx(file);
            try {
                jxVar.hp(104857600L);
                return jxVar;
            } catch (IOException unused) {
                return jxVar;
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    public boolean l() {
        if (this.jx != null) {
            return true;
        }
        jx jxVarJx = jx();
        if (jxVarJx == null) {
            return false;
        }
        j.hp(true);
        j.hp(1);
        try {
            C0324hp c0324hp = new C0324hp();
            this.jx = c0324hp;
            c0324hp.setName("csj_v_c_preloader");
            this.jx.start();
            j.hp(jxVarJx, com.byazt.fw.l.getContext());
            com.byazt.mg.jx.hp();
            com.byazt.mg.jx.hp().hp(10485759);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private hp() {
        this.f23933l = new HashMap<>();
        l();
    }

    public boolean hp(a aVar) {
        if (!l()) {
            return false;
        }
        this.jx.hp(aVar);
        return true;
    }

    @com.byazt.kj.hp(hp = {0, 1, 1207, 170})
    /* renamed from: com.byazt.oc.hp$hp, reason: collision with other inner class name */
    public class C0324hp extends com.byazt.shx.jx {

        /* renamed from: j, reason: collision with root package name */
        public final Queue<C0325hp> f23934j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public Queue<C0325hp> f23935l;

        /* renamed from: w, reason: collision with root package name */
        public Queue<C0325hp> f23936w;

        @com.byazt.kj.hp(hp = {0, 1, 1207, TTAdConstant.IMAGE_URL_CODE})
        /* renamed from: com.byazt.oc.hp$hp$hp, reason: collision with other inner class name */
        public class C0325hp {

            /* renamed from: a, reason: collision with root package name */
            public a f23937a;
            public int hp;

            /* renamed from: j, reason: collision with root package name */
            public int f23938j;
            public String[] jx;

            /* renamed from: l, reason: collision with root package name */
            public String f23939l;

            /* renamed from: w, reason: collision with root package name */
            public String f23940w;

            public C0325hp() {
            }
        }

        public C0324hp() {
            super("VideoCachePreloader$PreLoadThread");
            this.f23934j = new ArrayBlockingQueue(10);
            this.f23935l = new LinkedBlockingQueue();
            this.jx = true;
            this.f23936w = new LinkedBlockingQueue();
        }

        private C0325hp hp(int i2, a aVar) {
            this.f23934j.size();
            C0325hp c0325hpPoll = this.f23934j.poll();
            if (c0325hpPoll == null) {
                c0325hpPoll = new C0325hp();
            }
            c0325hpPoll.hp = i2;
            c0325hpPoll.f23937a = aVar;
            return c0325hpPoll;
        }

        private void jx(C0325hp c0325hp) {
            if (c0325hp == null) {
                return;
            }
            this.f23935l.offer(c0325hp);
            notify();
        }

        private synchronized void l(C0325hp c0325hp) {
            this.f23936w.add(c0325hp);
            notify();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.jx) {
                synchronized (this) {
                    try {
                        if (!this.f23936w.isEmpty()) {
                            hp();
                        }
                        while (!this.f23935l.isEmpty()) {
                            C0325hp c0325hpPoll = this.f23935l.poll();
                            if (c0325hpPoll != null) {
                                int i2 = c0325hpPoll.hp;
                                if (i2 == 0) {
                                    String[] strArr = c0325hpPoll.jx;
                                    if (strArr != null && strArr.length > 0) {
                                        ArrayList arrayList = new ArrayList();
                                        for (String str : c0325hpPoll.jx) {
                                            if (com.byazt.vk.hp.hp(str)) {
                                                arrayList.add(str);
                                            }
                                        }
                                        com.byazt.mg.jx.hp().hp(false, !TextUtils.isEmpty(c0325hpPoll.f23940w), c0325hpPoll.f23938j, c0325hpPoll.f23939l, (String[]) arrayList.toArray(new String[arrayList.size()]));
                                    }
                                } else if (i2 == 1) {
                                    com.byazt.mg.jx.hp().hp(c0325hpPoll.f23939l);
                                } else if (i2 == 2) {
                                    com.byazt.mg.jx.hp().l();
                                } else if (i2 == 3) {
                                    com.byazt.mg.jx.hp().l();
                                    if (j.l() != null) {
                                        j.l().hp();
                                    }
                                    if (j.hp() != null) {
                                        j.hp().hp();
                                    }
                                } else if (i2 == 4) {
                                    com.byazt.mg.jx.hp().l();
                                    this.jx = false;
                                }
                                hp(c0325hpPoll);
                            }
                        }
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    } finally {
                    }
                }
            }
        }

        private void hp(C0325hp c0325hp) {
            c0325hp.jx = null;
            c0325hp.f23939l = null;
            c0325hp.hp = -1;
            c0325hp.f23937a = null;
            this.f23934j.offer(c0325hp);
        }

        private void hp() {
            while (true) {
                C0325hp c0325hpPoll = this.f23936w.poll();
                if (c0325hpPoll == null) {
                    return;
                }
                c0325hpPoll.f23939l = c0325hpPoll.f23937a.getUrl();
                c0325hpPoll.jx = new String[]{c0325hpPoll.f23937a.getUrl()};
                int pitayaCacheSize = c0325hpPoll.f23937a.getPitayaCacheSize();
                if (pitayaCacheSize <= 0) {
                    pitayaCacheSize = c0325hpPoll.f23937a.getPreloadSize();
                }
                c0325hpPoll.f23938j = pitayaCacheSize;
                c0325hpPoll.f23940w = c0325hpPoll.f23937a.getFileNameKey();
                if (!TextUtils.isEmpty(c0325hpPoll.f23937a.getFileNameKey())) {
                    c0325hpPoll.f23939l = c0325hpPoll.f23937a.getFileNameKey();
                }
                c0325hpPoll.f23937a = null;
                jx(c0325hpPoll);
            }
        }

        public void hp(a aVar) {
            l(hp(0, aVar));
        }
    }
}
