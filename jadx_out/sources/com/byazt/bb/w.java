package com.byazt.bb;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Printer;
import android.util.SparseArray;
import com.byazt.kw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 93, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements Handler.Callback {

    /* renamed from: e, reason: collision with root package name */
    public static final Printer f18465e = new Printer() { // from class: com.byazt.bb.w.1
        @Override // android.util.Printer
        public void println(String str) {
            if (str == null) {
                return;
            }
            if (str.startsWith(">>>>> Dispatching")) {
                w.hp().hp(str);
            } else if (str.startsWith("<<<<< Finished")) {
                w.hp().l(str);
            }
            if (w.hp == null || w.hp == w.f18465e) {
                return;
            }
            w.hp.println(str);
        }
    };
    public static Printer hp;

    /* renamed from: l, reason: collision with root package name */
    public static w f18466l;

    /* renamed from: a, reason: collision with root package name */
    public long f18467a;
    public boolean jl;

    /* renamed from: w, reason: collision with root package name */
    public long f18471w;

    /* renamed from: j, reason: collision with root package name */
    public int f18468j = 0;
    public final SparseArray<List<Runnable>> eb = new SparseArray<>();

    /* renamed from: s, reason: collision with root package name */
    public final List<Printer> f18470s = new LinkedList();

    /* renamed from: q, reason: collision with root package name */
    public final List<Printer> f18469q = new LinkedList();
    public boolean gu = false;
    public Handler jx = new Handler(eb.hp().getLooper(), this);

    private w() throws NoSuchFieldException, SecurityException {
        l();
    }

    public static w hp() {
        if (f18466l == null) {
            synchronized (w.class) {
                try {
                    if (f18466l == null) {
                        f18466l = new w();
                    }
                } finally {
                }
            }
        }
        return f18466l;
    }

    private Printer w() throws NoSuchFieldException, SecurityException {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception e2) {
            e.l(e2);
            return null;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.jx.hasMessages(0)) {
            return true;
        }
        int i2 = message.what;
        if (i2 == 0) {
            this.f18468j = 0;
            if (this.eb.size() != 0 && this.eb.keyAt(0) == 0) {
                hp(this.eb.valueAt(0));
                this.f18468j++;
            }
        } else {
            if (i2 == 1) {
                this.jx.removeMessages(2);
                if (this.eb.size() != 0) {
                    SparseArray<List<Runnable>> sparseArray = this.eb;
                    if (sparseArray.keyAt(sparseArray.size() - 1) == 0) {
                        hp(this.eb.get(Integer.MAX_VALUE));
                    }
                }
                return true;
            }
            if (i2 == 2) {
                hp(this.eb.valueAt(this.f18468j));
                this.f18468j++;
            }
        }
        if (this.f18468j >= this.eb.size()) {
            return true;
        }
        long jKeyAt = this.eb.keyAt(this.f18468j);
        if (jKeyAt != 2147483647L) {
            this.jx.sendEmptyMessageAtTime(2, this.f18471w + jKeyAt);
        }
        return true;
    }

    public void l() throws NoSuchFieldException, SecurityException {
        if (this.gu) {
            return;
        }
        this.gu = true;
        Printer printerW = w();
        hp = printerW;
        Printer printer = f18465e;
        if (printerW == printer) {
            hp = null;
        }
        Looper.getMainLooper().setMessageLogging(printer);
    }

    public void hp(long j2, Runnable runnable) {
        hp(j2, runnable, 1, 0L);
    }

    public void l(String str) {
        this.f18467a = SystemClock.uptimeMillis();
        try {
            this.jx.removeMessages(2);
            hp(this.f18469q, str);
            this.jx.sendEmptyMessage(1);
        } catch (Exception e2) {
            e.l(e2);
        }
    }

    public void hp(long j2, Runnable runnable, int i2, long j3) {
        if (j2 < 0) {
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = (int) j2;
            List<Runnable> linkedList = this.eb.get(i4);
            if (linkedList == null) {
                synchronized (this.eb) {
                    try {
                        linkedList = this.eb.get(i4);
                        if (linkedList == null) {
                            linkedList = new LinkedList<>();
                            this.eb.put(i4, linkedList);
                        }
                    } finally {
                    }
                }
            }
            linkedList.add(runnable);
            j2 += j3;
        }
    }

    public void hp(String str) {
        if (!this.jl) {
            a.hp(32L);
            this.jl = true;
        }
        this.f18471w = SystemClock.uptimeMillis();
        try {
            hp(this.f18470s, str);
            this.jx.sendEmptyMessage(0);
        } catch (Exception e2) {
            e.hp(e2);
        }
    }

    private static void hp(List<? extends Runnable> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<? extends Runnable> it = list.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        } catch (Exception e2) {
            e.hp(e2);
        }
    }

    private synchronized void hp(List<? extends Printer> list, String str) {
        if (list != null) {
            if (!list.isEmpty()) {
                try {
                    Iterator<? extends Printer> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().println(str);
                    }
                } catch (Exception e2) {
                    e.hp(e2);
                }
            }
        }
    }
}
