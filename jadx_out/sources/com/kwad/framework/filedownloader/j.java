package com.kwad.framework.filedownloader;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
public final class j {
    static int azO = 10;
    static int azP = 5;
    private final Executor azK;
    private final LinkedBlockingQueue<t> azL;
    private final Object azM;
    private final ArrayList<t> azN;
    private final Handler handler;

    public static final class a {
        private static final j azS = new j(0);
    }

    public static class b implements Handler.Callback {
        private b() {
        }

        private static void a(ArrayList<t> arrayList) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                t tVar = arrayList.get(i2);
                i2++;
                t tVar2 = tVar;
                if (tVar2 != null) {
                    tVar2.Bt();
                }
            }
            arrayList.clear();
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                ((t) message.obj).Bt();
            } else if (i2 == 2) {
                a((ArrayList) message.obj);
                j.Bp().push();
            }
            return true;
        }

        public /* synthetic */ b(byte b3) {
            this();
        }
    }

    public /* synthetic */ j(byte b3) {
        this();
    }

    public static j Bp() {
        return a.azS;
    }

    private static boolean Bq() {
        return azO > 0;
    }

    private void b(t tVar) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(1, tVar));
    }

    private void c(t tVar) {
        synchronized (this.azM) {
            this.azL.offer(tVar);
        }
        push();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void push() {
        synchronized (this.azM) {
            try {
                if (this.azN.isEmpty()) {
                    if (this.azL.isEmpty()) {
                        return;
                    }
                    int i2 = 0;
                    if (Bq()) {
                        int i3 = azO;
                        int iMin = Math.min(this.azL.size(), azP);
                        while (i2 < iMin) {
                            this.azN.add(this.azL.remove());
                            i2++;
                        }
                        i2 = i3;
                    } else {
                        this.azL.drainTo(this.azN);
                    }
                    Handler handler = this.handler;
                    handler.sendMessageDelayed(handler.obtainMessage(2, this.azN), i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private j() {
        this.azK = com.kwad.framework.filedownloader.f.b.w(5, "BlockCompleted");
        this.azM = new Object();
        this.azN = new ArrayList<>();
        this.handler = new Handler(Looper.getMainLooper(), new b((byte) 0));
        this.azL = new LinkedBlockingQueue<>();
    }

    public final void a(t tVar) {
        a(tVar, false);
    }

    private void a(final t tVar, boolean z2) {
        if (tVar.Bu()) {
            tVar.Bt();
            return;
        }
        if (tVar.Bv()) {
            this.azK.execute(new Runnable() { // from class: com.kwad.framework.filedownloader.j.1
                @Override // java.lang.Runnable
                public final void run() {
                    tVar.Bt();
                }
            });
            return;
        }
        if (!Bq() && !this.azL.isEmpty()) {
            synchronized (this.azM) {
                try {
                    if (!this.azL.isEmpty()) {
                        Iterator<t> it = this.azL.iterator();
                        while (it.hasNext()) {
                            b(it.next());
                        }
                    }
                    this.azL.clear();
                } finally {
                }
            }
        }
        if (!Bq()) {
            b(tVar);
        } else {
            c(tVar);
        }
    }
}
