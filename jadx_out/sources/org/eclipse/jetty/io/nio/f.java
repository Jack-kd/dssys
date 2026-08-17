package org.eclipse.jetty.io.nio;

import L1.i;
import L1.j;
import L1.k;
import W1.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.util.n;

/* loaded from: classes5.dex */
public abstract class f extends org.eclipse.jetty.util.component.a implements org.eclipse.jetty.util.component.e {

    /* renamed from: j, reason: collision with root package name */
    public static final R1.c f52443j = R1.b.b("org.eclipse.jetty.io.nio");

    /* renamed from: k, reason: collision with root package name */
    public static final int f52444k = Integer.getInteger("org.eclipse.jetty.io.nio.MONITOR_PERIOD", 1000).intValue();

    /* renamed from: l, reason: collision with root package name */
    public static final int f52445l = Integer.getInteger("org.eclipse.jetty.io.nio.MAX_SELECTS", 100000).intValue();

    /* renamed from: m, reason: collision with root package name */
    public static final int f52446m = Integer.getInteger("org.eclipse.jetty.io.nio.BUSY_PAUSE", 50).intValue();

    /* renamed from: n, reason: collision with root package name */
    public static final int f52447n = Integer.getInteger("org.eclipse.jetty.io.nio.IDLE_TICK", MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL).intValue();

    /* renamed from: b, reason: collision with root package name */
    public int f52448b;

    /* renamed from: c, reason: collision with root package name */
    public int f52449c;

    /* renamed from: d, reason: collision with root package name */
    public long f52450d;

    /* renamed from: e, reason: collision with root package name */
    public d[] f52451e;

    /* renamed from: f, reason: collision with root package name */
    public int f52452f = 1;

    /* renamed from: g, reason: collision with root package name */
    public volatile int f52453g = 0;

    /* renamed from: h, reason: collision with root package name */
    public boolean f52454h = true;

    /* renamed from: i, reason: collision with root package name */
    public int f52455i = 0;

    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f52456b;

        public a(int i2) {
            this.f52456b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String name = Thread.currentThread().getName();
            int priority = Thread.currentThread().getPriority();
            try {
                d[] dVarArr = f.this.f52451e;
                if (dVarArr == null) {
                    f.f52443j.i("Stopped {} on {}", Thread.currentThread(), this);
                    Thread.currentThread().setName(name);
                    if (f.this.c0() != 0) {
                        Thread.currentThread().setPriority(priority);
                        return;
                    }
                    return;
                }
                d dVar = dVarArr[this.f52456b];
                Thread.currentThread().setName(name + " Selector" + this.f52456b);
                if (f.this.c0() != 0) {
                    Thread.currentThread().setPriority(Thread.currentThread().getPriority() + f.this.c0());
                }
                f.f52443j.i("Starting {} on {}", Thread.currentThread(), this);
                while (f.this.isRunning()) {
                    try {
                        dVar.g();
                    } catch (IOException e2) {
                        f.f52443j.h(e2);
                    } catch (Exception e3) {
                        f.f52443j.e(e3);
                    }
                }
                f.f52443j.i("Stopped {} on {}", Thread.currentThread(), this);
                Thread.currentThread().setName(name);
                if (f.this.c0() != 0) {
                    Thread.currentThread().setPriority(priority);
                }
            } catch (Throwable th) {
                f.f52443j.i("Stopped {} on {}", Thread.currentThread(), this);
                Thread.currentThread().setName(name);
                if (f.this.c0() != 0) {
                    Thread.currentThread().setPriority(priority);
                }
                throw th;
            }
        }
    }

    public interface b extends Runnable {
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final SelectableChannel f52458a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f52459b;

        public c(SelectableChannel selectableChannel, Object obj) {
            this.f52458a = selectableChannel;
            this.f52459b = obj;
        }
    }

    public class d implements org.eclipse.jetty.util.component.e {

        /* renamed from: b, reason: collision with root package name */
        public final int f52460b;

        /* renamed from: c, reason: collision with root package name */
        public final W1.e f52461c;

        /* renamed from: e, reason: collision with root package name */
        public volatile Selector f52463e;

        /* renamed from: f, reason: collision with root package name */
        public volatile Thread f52464f;

        /* renamed from: g, reason: collision with root package name */
        public int f52465g;

        /* renamed from: h, reason: collision with root package name */
        public long f52466h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f52467i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f52468j;

        /* renamed from: d, reason: collision with root package name */
        public final ConcurrentLinkedQueue f52462d = new ConcurrentLinkedQueue();

        /* renamed from: l, reason: collision with root package name */
        public ConcurrentMap f52470l = new ConcurrentHashMap();

        /* renamed from: k, reason: collision with root package name */
        public volatile long f52469k = System.currentTimeMillis();

        public class a implements Runnable {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ long f52472b;

            public a(long j2) {
                this.f52472b = j2;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator it = d.this.f52470l.keySet().iterator();
                while (it.hasNext()) {
                    ((SelectChannelEndPoint) it.next()).y(this.f52472b);
                }
            }

            public String toString() {
                return "Idle-" + super.toString();
            }
        }

        public class b implements b {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.l();
            }
        }

        public class c implements b {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ArrayList f52475b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CountDownLatch f52476c;

            public c(ArrayList arrayList, CountDownLatch countDownLatch) {
                this.f52475b = arrayList;
                this.f52476c = countDownLatch;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.h(this.f52475b);
                this.f52476c.countDown();
            }
        }

        public d(int i2) {
            this.f52460b = i2;
            W1.e eVar = new W1.e(this);
            this.f52461c = eVar;
            eVar.i(0L);
            this.f52463e = Selector.open();
            this.f52466h = System.currentTimeMillis() + f.f52444k;
        }

        public void c(Object obj) {
            this.f52462d.add(obj);
        }

        public void d(SelectableChannel selectableChannel, Object obj) {
            if (obj == null) {
                c(selectableChannel);
            } else if (obj instanceof k) {
                c(obj);
            } else {
                c(new c(selectableChannel, obj));
            }
        }

        public final SelectChannelEndPoint e(SocketChannel socketChannel, SelectionKey selectionKey) {
            SelectChannelEndPoint selectChannelEndPointF0 = f.this.f0(socketChannel, this, selectionKey);
            f.f52443j.i("created {}", selectChannelEndPointF0);
            f.this.Z(selectChannelEndPointF0);
            this.f52470l.put(selectChannelEndPointF0, this);
            return selectChannelEndPointF0;
        }

        public void f(SelectChannelEndPoint selectChannelEndPoint) {
            f.f52443j.i("destroyEndPoint {}", selectChannelEndPoint);
            this.f52470l.remove(selectChannelEndPoint);
            f.this.Y(selectChannelEndPoint);
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x00df, code lost:
        
            r2 = r1.selectNow();
            r5 = java.lang.System.currentTimeMillis();
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00e9, code lost:
        
            if (r2 != 0) goto L103;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x00f3, code lost:
        
            if (r1.selectedKeys().isEmpty() == false) goto L103;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00f7, code lost:
        
            if (r13.f52467i == false) goto L80;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x00f9, code lost:
        
            java.lang.Thread.sleep(org.eclipse.jetty.io.nio.f.f52446m);
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0102, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0103, code lost:
        
            org.eclipse.jetty.io.nio.f.f52443j.h(r2);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0189 A[Catch: all -> 0x00bc, CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, TRY_LEAVE, TryCatch #16 {CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, blocks: (B:3:0x0001, B:7:0x000e, B:8:0x0014, B:10:0x0019, B:52:0x00ae, B:54:0x00b6, B:63:0x00cc, B:66:0x00d1, B:61:0x00c5, B:67:0x00d7, B:69:0x00df, B:71:0x00eb, B:73:0x00f5, B:75:0x00f9, B:79:0x0108, B:80:0x010c, B:82:0x011f, B:94:0x0138, B:96:0x014a, B:98:0x0151, B:100:0x015c, B:102:0x0162, B:78:0x0103, B:103:0x016f, B:105:0x0173, B:108:0x017b, B:109:0x0183, B:111:0x0189, B:151:0x021a, B:153:0x0222, B:156:0x022f, B:161:0x023b, B:163:0x0243, B:165:0x0249, B:159:0x0234, B:154:0x0228, B:166:0x024e, B:167:0x0255, B:169:0x026d, B:171:0x0271, B:172:0x0278, B:173:0x027f, B:175:0x028c, B:177:0x0298, B:179:0x02ab, B:181:0x02bd, B:182:0x02c7, B:184:0x02cd, B:186:0x02d3), top: B:221:0x0001, outer: #15 }] */
        /* JADX WARN: Removed duplicated region for block: B:169:0x026d A[Catch: all -> 0x00bc, CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, TryCatch #16 {CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, blocks: (B:3:0x0001, B:7:0x000e, B:8:0x0014, B:10:0x0019, B:52:0x00ae, B:54:0x00b6, B:63:0x00cc, B:66:0x00d1, B:61:0x00c5, B:67:0x00d7, B:69:0x00df, B:71:0x00eb, B:73:0x00f5, B:75:0x00f9, B:79:0x0108, B:80:0x010c, B:82:0x011f, B:94:0x0138, B:96:0x014a, B:98:0x0151, B:100:0x015c, B:102:0x0162, B:78:0x0103, B:103:0x016f, B:105:0x0173, B:108:0x017b, B:109:0x0183, B:111:0x0189, B:151:0x021a, B:153:0x0222, B:156:0x022f, B:161:0x023b, B:163:0x0243, B:165:0x0249, B:159:0x0234, B:154:0x0228, B:166:0x024e, B:167:0x0255, B:169:0x026d, B:171:0x0271, B:172:0x0278, B:173:0x027f, B:175:0x028c, B:177:0x0298, B:179:0x02ab, B:181:0x02bd, B:182:0x02c7, B:184:0x02cd, B:186:0x02d3), top: B:221:0x0001, outer: #15 }] */
        /* JADX WARN: Removed duplicated region for block: B:175:0x028c A[Catch: all -> 0x00bc, CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, TryCatch #16 {CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, blocks: (B:3:0x0001, B:7:0x000e, B:8:0x0014, B:10:0x0019, B:52:0x00ae, B:54:0x00b6, B:63:0x00cc, B:66:0x00d1, B:61:0x00c5, B:67:0x00d7, B:69:0x00df, B:71:0x00eb, B:73:0x00f5, B:75:0x00f9, B:79:0x0108, B:80:0x010c, B:82:0x011f, B:94:0x0138, B:96:0x014a, B:98:0x0151, B:100:0x015c, B:102:0x0162, B:78:0x0103, B:103:0x016f, B:105:0x0173, B:108:0x017b, B:109:0x0183, B:111:0x0189, B:151:0x021a, B:153:0x0222, B:156:0x022f, B:161:0x023b, B:163:0x0243, B:165:0x0249, B:159:0x0234, B:154:0x0228, B:166:0x024e, B:167:0x0255, B:169:0x026d, B:171:0x0271, B:172:0x0278, B:173:0x027f, B:175:0x028c, B:177:0x0298, B:179:0x02ab, B:181:0x02bd, B:182:0x02c7, B:184:0x02cd, B:186:0x02d3), top: B:221:0x0001, outer: #15 }] */
        /* JADX WARN: Removed duplicated region for block: B:211:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:231:0x00dc A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00b6 A[Catch: all -> 0x00bc, CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, TryCatch #16 {CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, blocks: (B:3:0x0001, B:7:0x000e, B:8:0x0014, B:10:0x0019, B:52:0x00ae, B:54:0x00b6, B:63:0x00cc, B:66:0x00d1, B:61:0x00c5, B:67:0x00d7, B:69:0x00df, B:71:0x00eb, B:73:0x00f5, B:75:0x00f9, B:79:0x0108, B:80:0x010c, B:82:0x011f, B:94:0x0138, B:96:0x014a, B:98:0x0151, B:100:0x015c, B:102:0x0162, B:78:0x0103, B:103:0x016f, B:105:0x0173, B:108:0x017b, B:109:0x0183, B:111:0x0189, B:151:0x021a, B:153:0x0222, B:156:0x022f, B:161:0x023b, B:163:0x0243, B:165:0x0249, B:159:0x0234, B:154:0x0228, B:166:0x024e, B:167:0x0255, B:169:0x026d, B:171:0x0271, B:172:0x0278, B:173:0x027f, B:175:0x028c, B:177:0x0298, B:179:0x02ab, B:181:0x02bd, B:182:0x02c7, B:184:0x02cd, B:186:0x02d3), top: B:221:0x0001, outer: #15 }] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00c5 A[Catch: all -> 0x00bc, CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, TRY_LEAVE, TryCatch #16 {CancelledKeyException -> 0x00bf, ClosedSelectorException -> 0x00c2, blocks: (B:3:0x0001, B:7:0x000e, B:8:0x0014, B:10:0x0019, B:52:0x00ae, B:54:0x00b6, B:63:0x00cc, B:66:0x00d1, B:61:0x00c5, B:67:0x00d7, B:69:0x00df, B:71:0x00eb, B:73:0x00f5, B:75:0x00f9, B:79:0x0108, B:80:0x010c, B:82:0x011f, B:94:0x0138, B:96:0x014a, B:98:0x0151, B:100:0x015c, B:102:0x0162, B:78:0x0103, B:103:0x016f, B:105:0x0173, B:108:0x017b, B:109:0x0183, B:111:0x0189, B:151:0x021a, B:153:0x0222, B:156:0x022f, B:161:0x023b, B:163:0x0243, B:165:0x0249, B:159:0x0234, B:154:0x0228, B:166:0x024e, B:167:0x0255, B:169:0x026d, B:171:0x0271, B:172:0x0278, B:173:0x027f, B:175:0x028c, B:177:0x0298, B:179:0x02ab, B:181:0x02bd, B:182:0x02c7, B:184:0x02cd, B:186:0x02d3), top: B:221:0x0001, outer: #15 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void g() {
            /*
                Method dump skipped, instructions count: 772
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.f.d.g():void");
        }

        public void h(List list) {
            Selector selector = this.f52463e;
            Set<SelectionKey> setKeys = selector.keys();
            list.add(selector + " keys=" + setKeys.size());
            for (SelectionKey selectionKey : setKeys) {
                if (selectionKey.isValid()) {
                    list.add(selectionKey.attachment() + " iOps=" + selectionKey.interestOps() + " rOps=" + selectionKey.readyOps());
                } else {
                    list.add(selectionKey.attachment() + " iOps=-1 rOps=-1");
                }
            }
        }

        public f i() {
            return f.this;
        }

        public long j() {
            return this.f52461c.e();
        }

        public Selector k() {
            return this.f52463e;
        }

        public final void l() {
            try {
                synchronized (this) {
                    try {
                        Selector selector = this.f52463e;
                        if (selector == null) {
                            return;
                        }
                        Selector selectorOpen = Selector.open();
                        for (SelectionKey selectionKey : selector.keys()) {
                            if (selectionKey.isValid() && selectionKey.interestOps() != 0) {
                                SelectableChannel selectableChannelChannel = selectionKey.channel();
                                Object objAttachment = selectionKey.attachment();
                                if (objAttachment == null) {
                                    c(selectableChannelChannel);
                                } else {
                                    d(selectableChannelChannel, objAttachment);
                                }
                            }
                        }
                        this.f52463e.close();
                        this.f52463e = selectorOpen;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (IOException e2) {
                throw new RuntimeException("recreating selector", e2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r0v15 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.StackTraceElement] */
        @Override // org.eclipse.jetty.util.component.e
        public void m(Appendable appendable, String str) throws InterruptedException, IOException {
            ?? r4;
            appendable.append(String.valueOf(this)).append(" id=").append(String.valueOf(this.f52460b)).append("\n");
            Thread thread = this.f52464f;
            ?? stackTrace = thread == null ? 0 : thread.getStackTrace();
            if (stackTrace != 0) {
                int length = stackTrace.length;
                for (int i2 = 0; i2 < length; i2++) {
                    r4 = stackTrace[i2];
                    if (r4.getClassName().startsWith("org.eclipse.jetty.")) {
                        break;
                    }
                }
                r4 = "not selecting";
            } else {
                r4 = "not selecting";
            }
            Selector selector = this.f52463e;
            if (selector != null) {
                ArrayList arrayList = new ArrayList(selector.keys().size() * 2);
                arrayList.add(r4);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                c(new c(arrayList, countDownLatch));
                try {
                    countDownLatch.await(5L, TimeUnit.SECONDS);
                } catch (InterruptedException e2) {
                    f.f52443j.h(e2);
                }
                org.eclipse.jetty.util.component.b.S(appendable, str, arrayList);
            }
        }

        public void n(e.a aVar, long j2) {
            if (!(aVar instanceof Runnable)) {
                throw new IllegalArgumentException("!Runnable");
            }
            this.f52461c.h(aVar, j2);
        }

        public void o() throws InterruptedException {
            Selector selector;
            for (int i2 = 0; i2 < 100; i2++) {
                try {
                    if (this.f52464f == null) {
                        break;
                    }
                    p();
                    Thread.sleep(10L);
                } catch (Exception e2) {
                    f.f52443j.h(e2);
                }
            }
            synchronized (this) {
                for (SelectionKey selectionKey : this.f52463e.keys()) {
                    if (selectionKey != null) {
                        Object objAttachment = selectionKey.attachment();
                        if (objAttachment instanceof k) {
                            try {
                                ((k) objAttachment).close();
                            } catch (IOException e3) {
                                f.f52443j.h(e3);
                            }
                        }
                    }
                }
                this.f52461c.b();
                try {
                    selector = this.f52463e;
                } catch (IOException e4) {
                    f.f52443j.h(e4);
                }
                if (selector != null) {
                    selector.close();
                    this.f52463e = null;
                } else {
                    this.f52463e = null;
                }
            }
        }

        public void p() {
            try {
                Selector selector = this.f52463e;
                if (selector != null) {
                    selector.wakeup();
                }
            } catch (Exception unused) {
                c(new b());
                l();
            }
        }

        public String toString() {
            Selector selector = this.f52463e;
            String string = super.toString();
            int size = -1;
            Integer numValueOf = Integer.valueOf((selector == null || !selector.isOpen()) ? -1 : selector.keys().size());
            if (selector != null && selector.isOpen()) {
                size = selector.selectedKeys().size();
            }
            return String.format("%s keys=%d selected=%d", string, numValueOf, Integer.valueOf(size));
        }
    }

    public void X(SocketChannel socketChannel, Throwable th, Object obj) {
        R1.c cVar = f52443j;
        cVar.g(th + "," + socketChannel + "," + obj, new Object[0]);
        cVar.a(th);
    }

    public abstract void Y(SelectChannelEndPoint selectChannelEndPoint);

    public abstract void Z(SelectChannelEndPoint selectChannelEndPoint);

    public abstract void a0(i iVar, j jVar);

    public int b0() {
        return this.f52452f;
    }

    public int c0() {
        return this.f52455i;
    }

    public boolean d0() {
        return this.f52454h;
    }

    public abstract boolean dispatch(Runnable runnable);

    @Override // org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        this.f52451e = new d[this.f52452f];
        int i2 = 0;
        while (true) {
            d[] dVarArr = this.f52451e;
            if (i2 >= dVarArr.length) {
                break;
            }
            dVarArr[i2] = new d(i2);
            i2++;
        }
        super.doStart();
        for (int i3 = 0; i3 < b0(); i3++) {
            if (!dispatch(new a(i3))) {
                throw new IllegalStateException("!Selecting");
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStop() throws InterruptedException {
        d[] dVarArr = this.f52451e;
        this.f52451e = null;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                if (dVar != null) {
                    dVar.o();
                }
            }
        }
        super.doStop();
    }

    public abstract org.eclipse.jetty.io.nio.a e0(SocketChannel socketChannel, L1.c cVar, Object obj);

    public abstract SelectChannelEndPoint f0(SocketChannel socketChannel, d dVar, SelectionKey selectionKey);

    public void g0(SocketChannel socketChannel, Object obj) {
        int i2 = this.f52453g;
        this.f52453g = i2 + 1;
        if (i2 < 0) {
            i2 = -i2;
        }
        int i3 = i2 % this.f52452f;
        d[] dVarArr = this.f52451e;
        if (dVarArr != null) {
            d dVar = dVarArr[i3];
            dVar.d(socketChannel, obj);
            dVar.p();
        }
    }

    @Override // org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) throws IOException {
        org.eclipse.jetty.util.component.b.T(appendable, this);
        org.eclipse.jetty.util.component.b.S(appendable, str, n.a(this.f52451e));
    }
}
