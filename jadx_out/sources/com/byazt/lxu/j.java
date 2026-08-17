package com.byazt.lxu;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.byazt.gt.e;
import com.byazt.gt.gu;
import com.byazt.gt.jl;
import com.byazt.gt.zy;
import com.byazt.iv.Collector;
import com.byazt.yu.q;
import com.byazt.yu.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 1576, 38})
/* loaded from: classes3.dex */
public class j implements Handler.Callback, Comparator<com.byazt.cn.hp> {

    /* renamed from: l, reason: collision with root package name */
    public static j f22809l;
    public static long zy;

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.cn.l f22810a;

    /* renamed from: e, reason: collision with root package name */
    public gu f22811e;
    public q eb;
    public Handler gu;
    public Application hp;

    /* renamed from: j, reason: collision with root package name */
    public s f22812j;
    public a jl;
    public hp jx;

    /* renamed from: q, reason: collision with root package name */
    public eb f22814q;

    /* renamed from: s, reason: collision with root package name */
    public Handler f22815s;

    /* renamed from: w, reason: collision with root package name */
    public final ArrayList<com.byazt.cn.hp> f22817w = new ArrayList<>(32);

    /* renamed from: k, reason: collision with root package name */
    public CopyOnWriteArrayList<Message> f22813k = new CopyOnWriteArrayList<>();

    /* renamed from: v, reason: collision with root package name */
    public CopyOnWriteArrayList<com.byazt.cn.eb> f22816v = new CopyOnWriteArrayList<>();

    private j() {
    }

    private void gu() {
        if (!this.f22812j.n()) {
            hp hpVar = this.jx;
            if (hpVar != null) {
                hpVar.w();
                this.jx = null;
                return;
            }
            return;
        }
        if (this.jx == null) {
            hp hpVar2 = new hp(this);
            this.jx = hpVar2;
            Message messageObtainMessage = this.f22815s.obtainMessage(6, hpVar2);
            this.f22813k.add(messageObtainMessage);
            messageObtainMessage.sendToTarget();
        }
    }

    public static void hp() {
        if (f22809l != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - zy) > 10000) {
                zy = jCurrentTimeMillis;
                f22809l.hp((String[]) null, true);
            }
        }
    }

    private void jl() {
        if (e.f20599l) {
            e.hp("packAndSend once, " + this.f22814q.hp() + ", hadUI:" + this.f22814q.l(), null);
        }
        a aVar = this.jl;
        if (aVar != null) {
            aVar.s();
        }
        if (this.f22815s != null) {
            this.jl.hp(zy.hp());
            Message messageObtainMessage = this.gu.obtainMessage(6, this.jl);
            this.f22813k.add(messageObtainMessage);
            this.f22815s.sendMessage(messageObtainMessage);
        }
    }

    public static j w() {
        if (f22809l == null) {
            synchronized (j.class) {
                try {
                    if (f22809l == null) {
                        f22809l = new j();
                    }
                } finally {
                }
            }
        }
        return f22809l;
    }

    public eb a() {
        return this.f22814q;
    }

    public void e() {
        if (this.f22815s == null || this.f22816v.isEmpty()) {
            return;
        }
        int size = this.f22816v.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                com.byazt.cn.eb ebVar = this.f22816v.get(i2);
                Message messageHp = com.byazt.cn.eb.hp(this.f22815s, ebVar);
                long jHp = com.byazt.cn.eb.hp(ebVar);
                if (messageHp.what == 6) {
                    this.f22813k.add(messageHp);
                    this.f22815s.sendMessageDelayed(messageHp, jHp);
                }
            } catch (Exception unused) {
            }
        }
        this.f22816v.clear();
    }

    public gu eb() {
        if (this.f22811e == null) {
            gu guVarE = this.f22812j.f().e();
            this.f22811e = guVarE;
            if (guVarE == null) {
                this.f22811e = jl.hp(0);
            }
        }
        return this.f22811e;
    }

    public Context getContext() {
        return this.hp;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            int i2 = message.what;
            if (i2 != 1) {
                int i3 = 0;
                if (i2 == 2) {
                    ArrayList arrayList = new ArrayList(4);
                    arrayList.add(new w(this));
                    arrayList.add(new jx(this));
                    a aVar = new a(this);
                    this.jl = aVar;
                    arrayList.add(aVar);
                    int size = arrayList.size();
                    while (i3 < size) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        l lVar = (l) obj;
                        if (lVar instanceof a) {
                            this.jl.hp(zy.hp());
                        }
                        long jEb = lVar.eb();
                        if (jEb < 864000000) {
                            int i4 = (int) jEb;
                            Message messageObtainMessage = this.gu.obtainMessage(6, i4, i4, lVar);
                            this.f22813k.add(messageObtainMessage);
                            this.f22815s.sendMessageDelayed(messageObtainMessage, jEb);
                        }
                    }
                    this.jl.hp(true);
                    gu();
                } else if (i2 == 4) {
                    hp((String[]) null, false);
                } else if (i2 == 5) {
                    hp((String[]) message.obj, false);
                } else if (i2 == 6) {
                    l lVar2 = (l) message.obj;
                    try {
                        this.f22813k.remove(message);
                    } catch (Exception unused) {
                    }
                    if (!lVar2.a()) {
                        long jEb2 = lVar2.eb();
                        if (jEb2 < 864000000 && !hp(this.f22813k, lVar2)) {
                            int i5 = (int) jEb2;
                            Message messageObtainMessage2 = this.gu.obtainMessage(6, i5, i5, lVar2);
                            this.f22813k.add(messageObtainMessage2);
                            this.f22815s.sendMessageDelayed(messageObtainMessage2, jEb2);
                        }
                        gu();
                    }
                    this.jl.hp(true);
                } else if (i2 == 7) {
                    synchronized (this.f22817w) {
                        this.f22817w.add(eb.w());
                    }
                    hp((String[]) null, false);
                } else if (i2 != 89) {
                    e.l((Throwable) null);
                } else {
                    q qVar = this.eb;
                    if (qVar != null) {
                        qVar.w();
                    }
                }
            } else {
                e.hp = this.f22812j.ns();
                if (!this.eb.a()) {
                    this.gu.removeMessages(1);
                    this.gu.sendEmptyMessageDelayed(1, 1000L);
                } else if (this.f22812j.xs()) {
                    Looper looperL = zy.l(this.f22812j);
                    if (looperL == null) {
                        HandlerThread handlerThread = new HandlerThread("bd_tracker_n");
                        handlerThread.start();
                        looperL = handlerThread.getLooper();
                    }
                    Handler handler = new Handler(looperL, this);
                    this.f22815s = handler;
                    handler.sendEmptyMessage(2);
                    if (this.f22817w.size() > 0) {
                        this.gu.removeMessages(4);
                        this.gu.sendEmptyMessageDelayed(4, 1000L);
                    }
                    e.j("net|worker start", null);
                }
                com.byazt.yu.l.hp();
            }
        } catch (Throwable th) {
            e.hp("engine:" + th.getMessage());
        }
        return true;
    }

    public q j() {
        return this.eb;
    }

    public s jx() {
        return this.f22812j;
    }

    public com.byazt.cn.l l() {
        return this.f22810a;
    }

    public void q() {
        if (this.f22815s.hasMessages(6)) {
            int size = this.f22813k.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f22816v.add(com.byazt.cn.eb.hp(this.f22813k.get(i2)));
            }
            this.f22813k.clear();
            this.f22815s.removeMessages(6);
        }
    }

    public void s() {
        Handler handler = this.gu;
        if (handler == null || handler.hasMessages(89)) {
            return;
        }
        this.gu.sendEmptyMessage(89);
    }

    public void hp(Application application, s sVar, q qVar, com.byazt.iv.hp hpVar) {
        this.hp = application;
        this.f22810a = new com.byazt.cn.l(this);
        this.f22812j = sVar;
        this.eb = qVar;
        this.f22814q = new eb(this.eb, this.f22812j);
        this.hp.registerActivityLifecycleCallbacks(hpVar);
        Looper looperHp = zy.hp(sVar);
        if (looperHp == null) {
            HandlerThread handlerThread = new HandlerThread("bd_tracker_w");
            handlerThread.start();
            looperHp = handlerThread.getLooper();
        }
        Handler handler = new Handler(looperHp, this);
        this.gu = handler;
        handler.sendEmptyMessage(1);
        com.byazt.gt.eb.hp(sVar.q() != 0);
    }

    private boolean hp(List<Message> list, l lVar) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (list.get(i2).obj == lVar) {
                return true;
            }
        }
        return false;
    }

    private void hp(String[] strArr, boolean z2) {
        ArrayList<com.byazt.cn.hp> arrayList;
        synchronized (this.f22817w) {
            arrayList = (ArrayList) this.f22817w.clone();
            this.f22817w.clear();
        }
        int i2 = 0;
        if (strArr != null) {
            arrayList.ensureCapacity(arrayList.size() + strArr.length);
            for (String str : strArr) {
                arrayList.add(com.byazt.cn.hp.hp(str));
            }
        }
        boolean zHp = this.f22812j.hp(arrayList);
        if (arrayList.size() > 0) {
            if (this.f22812j.xs()) {
                if (!zHp && arrayList.size() <= 100) {
                    synchronized (this.f22817w) {
                        this.f22817w.addAll(arrayList);
                    }
                    return;
                }
                Collections.sort(arrayList, this);
                ArrayList<com.byazt.cn.hp> arrayList2 = new ArrayList<>(arrayList.size());
                int size = arrayList.size();
                boolean zHp2 = false;
                boolean zHp3 = false;
                int i3 = 0;
                while (i3 < size) {
                    com.byazt.cn.hp hpVar = arrayList.get(i3);
                    i3++;
                    com.byazt.cn.hp hpVar2 = hpVar;
                    zHp2 |= this.f22814q.hp(hpVar2, arrayList2);
                    if (hpVar2 instanceof com.byazt.cn.q) {
                        zHp3 = eb.hp(hpVar2);
                        i2 = 1;
                    }
                }
                this.f22810a.hp(arrayList2);
                if (i2 != 0) {
                    if (zHp3) {
                        this.gu.removeMessages(7);
                    } else if (!zy.l() && zy.hp()) {
                        this.gu.sendEmptyMessageDelayed(7, this.f22812j.cx());
                    }
                }
                if (zHp2 || z2) {
                    jl();
                    return;
                }
                return;
            }
            Intent intent = new Intent(this.hp, (Class<?>) Collector.class);
            int size2 = arrayList.size();
            String[] strArr2 = new String[size2];
            int length = 0;
            while (i2 < size2) {
                String string = arrayList.get(i2).w().toString();
                strArr2[i2] = string;
                length += string.length();
                i2++;
            }
            if (length >= 307200) {
                e.l((Throwable) null);
            }
            intent.putExtra("EMBED_K_DATA", strArr2);
            try {
                this.hp.sendBroadcast(intent);
            } catch (Exception e2) {
                e.l(e2);
            }
        }
    }

    public static void hp(com.byazt.cn.hp hpVar) {
        int size;
        Handler handler;
        j jVar = f22809l;
        if (jVar == null) {
            e.l("Init comes First!", null);
            com.byazt.yu.l.hp(hpVar);
            return;
        }
        if (hpVar.f18929l == 0) {
            e.l((Throwable) null);
        }
        synchronized (jVar.f22817w) {
            size = jVar.f22817w.size();
            jVar.f22817w.add(hpVar);
        }
        if (size % 10 != 0 || (handler = jVar.gu) == null) {
            return;
        }
        handler.removeMessages(4);
        jVar.gu.sendEmptyMessageDelayed(4, size == 0 ? 500L : 250L);
    }

    public static void hp(String[] strArr) {
        j jVar = f22809l;
        if (jVar == null) {
            e.l(new RuntimeException("Init comes First!"));
            return;
        }
        Handler handler = jVar.gu;
        if (handler != null) {
            handler.removeMessages(4);
            jVar.gu.obtainMessage(5, strArr).sendToTarget();
        }
    }

    @Override // java.util.Comparator
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compare(com.byazt.cn.hp hpVar, com.byazt.cn.hp hpVar2) {
        long j2 = hpVar.f18929l - hpVar2.f18929l;
        if (j2 < 0) {
            return -1;
        }
        return j2 > 0 ? 1 : 0;
    }
}
