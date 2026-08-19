package com.smartdigimkt.b4;

import android.os.Handler;
import android.os.HandlerThread;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.y3.h;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39577a;

    /* renamed from: b, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39578b;

    /* renamed from: c, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39579c;

    /* renamed from: d, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39580d;

    /* renamed from: e, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39581e;

    /* renamed from: f, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39582f;

    /* renamed from: g, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39583g;

    /* renamed from: h, reason: collision with root package name */
    public final ConcurrentHashMap f39584h = new ConcurrentHashMap();

    /* renamed from: i, reason: collision with root package name */
    public volatile ScheduledThreadPoolExecutor f39585i;

    /* renamed from: j, reason: collision with root package name */
    public volatile ThreadPoolExecutor f39586j;

    public final void a(g gVar, int i2) {
        String strA = a(i2);
        gVar.f39593a = strA;
        if (i2 != 1) {
            if (i2 != 13) {
                if (i2 == 19) {
                    ((ThreadPoolExecutor) a()).execute(gVar);
                    return;
                }
                if (i2 != 3) {
                    if (i2 == 4) {
                        ((ThreadPoolExecutor) b()).execute(gVar);
                        return;
                    }
                    if (i2 != 5) {
                        if (i2 != 7) {
                            if (i2 != 8) {
                                if (i2 != 16) {
                                    if (i2 != 17) {
                                        ((ThreadPoolExecutor) e()).execute(gVar);
                                        return;
                                    } else {
                                        ((ThreadPoolExecutor) c()).execute(gVar);
                                        return;
                                    }
                                }
                                if (this.f39581e == null) {
                                    synchronized (b.class) {
                                        try {
                                            if (this.f39581e == null) {
                                                this.f39581e = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f());
                                            }
                                        } finally {
                                        }
                                    }
                                }
                                this.f39581e.execute(gVar);
                                return;
                            }
                        }
                    }
                }
                Handler handlerA = a(strA);
                if (handlerA != null) {
                    handlerA.post(gVar);
                    return;
                }
                return;
            }
            ((ThreadPoolExecutor) d()).execute(gVar);
            return;
        }
        if (this.f39580d == null) {
            synchronized (b.class) {
                try {
                    if (this.f39580d == null) {
                        this.f39580d = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f());
                    }
                } finally {
                }
            }
        }
        this.f39580d.execute(gVar);
    }

    public final ExecutorService b() {
        if (this.f39579c == null) {
            synchronized (b.class) {
                try {
                    if (this.f39579c == null) {
                        this.f39579c = new ThreadPoolExecutor(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(), new a(this));
                    }
                } finally {
                }
            }
        }
        return this.f39579c;
    }

    public final ExecutorService c() {
        if (this.f39582f == null) {
            synchronized (b.class) {
                try {
                    if (this.f39582f == null) {
                        this.f39582f = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(), new a(this));
                    }
                } finally {
                }
            }
        }
        return this.f39582f;
    }

    public final ExecutorService d() {
        if (this.f39578b == null) {
            synchronized (b.class) {
                try {
                    if (this.f39578b == null) {
                        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                        this.f39578b = new ThreadPoolExecutor(iAvailableProcessors + 1, iAvailableProcessors * 2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(100), new f(), new a(this));
                    }
                } finally {
                }
            }
        }
        return this.f39578b;
    }

    public final ExecutorService e() {
        if (this.f39577a == null) {
            synchronized (b.class) {
                try {
                    if (this.f39577a == null) {
                        this.f39577a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new f());
                    }
                } finally {
                }
            }
        }
        return this.f39577a;
    }

    public final Handler a(String str) {
        Handler handler;
        SDKContext.getInstance().getClass();
        synchronized (this) {
            Handler handler2 = (Handler) this.f39584h.get(str);
            if (handler2 != null) {
                return handler2;
            }
            try {
                HandlerThread handlerThread = new HandlerThread(str);
                handlerThread.setPriority(1);
                handlerThread.start();
                Thread.currentThread().getId();
                Thread.currentThread().getName();
                handler = new Handler(handlerThread.getLooper());
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.f39584h.put(str, handler);
            } catch (Throwable th2) {
                th = th2;
                handler2 = handler;
                th.getMessage();
                h.a("create handler thread error", th.getMessage() + ", " + k.a(th.getStackTrace()), SDKContext.getInstance().f(), "");
                handler = handler2;
                return handler;
            }
            return handler;
        }
    }

    public static String a(int i2) {
        String str;
        String str2 = "def_t_" + i2;
        switch (i2) {
            case 1:
                str = "s_p";
                break;
            case 2:
                str = "n_p";
                break;
            case 3:
                str = "h_t_l";
                break;
            case 4:
                str = "i_p";
                break;
            case 5:
                str = "s_p_p_t";
                break;
            case 6:
                str = "n_p_n_r";
                break;
            case 7:
                str = "l_p_s_i";
                break;
            case 8:
                str = "h_a_e";
                break;
            case 9:
                str = "h_a_t";
                break;
            case 10:
                str = "n_p_h_r";
                break;
            case 11:
                str = "h_p_s";
                break;
            case 12:
                str = "h_t";
                break;
            case 13:
                str = "l_p_o_s_t";
                break;
            case 14:
                str = "h_a_l";
                break;
            case 15:
                str = "h_s_p";
                break;
            case 16:
                str = "s_p_s_r_f_i";
                break;
            case 17:
                str = "s_p_i";
                break;
            case 18:
                str = "h_a_d_u";
                break;
            case 19:
                str = "s_p_a_t_u";
                break;
            default:
                return "sdm_" + str2;
        }
        str2 = str;
        return "sdm_" + str2;
    }

    public final ExecutorService a() {
        if (this.f39583g == null) {
            synchronized (b.class) {
                try {
                    if (this.f39583g == null) {
                        this.f39583g = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f());
                    }
                } finally {
                }
            }
        }
        return this.f39583g;
    }
}
