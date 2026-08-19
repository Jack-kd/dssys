package com.byazt.uid;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 30})
/* loaded from: classes3.dex */
public final class jx {
    public static final jx hp = new jx();

    /* renamed from: j, reason: collision with root package name */
    public hp f26237j;
    public l jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<WeakReference<ThreadPoolExecutor>> f26238l = new ArrayList();

    public interface hp {
    }

    public interface l {
    }

    private jx() {
        l().schedule(new Runnable() { // from class: com.byazt.uid.jx.4
            @Override // java.lang.Runnable
            public void run() {
            }
        }, 1L, TimeUnit.MINUTES);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() throws NoSuchFieldException, SecurityException {
        List<ThreadPoolExecutor> listHp = hp(null, false, false);
        if (listHp == null || listHp.size() == 0) {
            return;
        }
        if (this.jx != null) {
            j.hp();
        }
        HashMap map = new HashMap();
        for (ThreadPoolExecutor threadPoolExecutor : listHp) {
            if (threadPoolExecutor != null) {
                ThreadFactory threadFactory = threadPoolExecutor.getThreadFactory();
                if (threadFactory instanceof s) {
                    map.put(((s) threadFactory).hp + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else if (threadFactory instanceof com.byazt.jv.j) {
                    map.put(((com.byazt.jv.j) threadFactory).hp() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else {
                    map.put(threadFactory.getClass().getName() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                }
                hp(threadPoolExecutor);
            }
        }
        if (this.jx != null) {
            j.hp();
        }
    }

    private ScheduledExecutorService l() {
        return q.f26242l.jl();
    }

    private boolean l(com.byazt.shx.j jVar) {
        Iterator<WeakReference<ThreadPoolExecutor>> it = this.f26238l.iterator();
        while (it.hasNext()) {
            WeakReference<ThreadPoolExecutor> next = it.next();
            if (next != null) {
                ThreadPoolExecutor threadPoolExecutor = next.get();
                if (threadPoolExecutor == null) {
                    it.remove();
                } else if (threadPoolExecutor == jVar) {
                    return true;
                }
            }
        }
        return false;
    }

    public synchronized void hp(com.byazt.shx.j jVar) {
        if (l(jVar)) {
            return;
        }
        this.f26238l.add(new WeakReference<>(jVar));
    }

    public String hp(BlockingQueue blockingQueue) {
        if (blockingQueue instanceof com.byazt.jv.hp) {
            return ((com.byazt.jv.hp) blockingQueue).hp();
        }
        return blockingQueue.getClass().getName();
    }

    public ThreadPoolExecutor hp(String str, String str2) throws NoSuchFieldException, SecurityException {
        List<ThreadPoolExecutor> listHp = hp(str2, false, true);
        hp(listHp, str);
        ThreadPoolExecutor threadPoolExecutor = listHp.size() > 0 ? listHp.get(0) : null;
        hp();
        return threadPoolExecutor;
    }

    private synchronized List<ThreadPoolExecutor> hp(String str, boolean z2, boolean z3) {
        ArrayList arrayList;
        ThreadPoolExecutor threadPoolExecutor;
        boolean z4;
        try {
            arrayList = new ArrayList();
            for (WeakReference<ThreadPoolExecutor> weakReference : this.f26238l) {
                if (weakReference != null && (threadPoolExecutor = weakReference.get()) != null) {
                    BlockingQueue<Runnable> queue = threadPoolExecutor.getQueue();
                    if (queue instanceof com.byazt.jv.hp) {
                        z4 = ((com.byazt.jv.hp) queue).l() instanceof PriorityBlockingQueue;
                    } else {
                        z4 = queue instanceof PriorityBlockingQueue;
                    }
                    if (!threadPoolExecutor.isShutdown() && !threadPoolExecutor.isTerminated() && !threadPoolExecutor.isTerminating() && threadPoolExecutor.getQueue().isEmpty() && (str == null || !z4)) {
                        if (threadPoolExecutor.getActiveCount() < threadPoolExecutor.getPoolSize()) {
                            arrayList.add(threadPoolExecutor);
                            if (z2) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (z3 && !z2) {
                try {
                    Collections.sort(arrayList, new Comparator<ThreadPoolExecutor>() { // from class: com.byazt.uid.jx.1
                        @Override // java.util.Comparator
                        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                        public int compare(ThreadPoolExecutor threadPoolExecutor2, ThreadPoolExecutor threadPoolExecutor3) {
                            int poolSize = threadPoolExecutor2.getPoolSize() - threadPoolExecutor2.getActiveCount();
                            int poolSize2 = threadPoolExecutor3.getPoolSize() - threadPoolExecutor3.getActiveCount();
                            if (poolSize2 > poolSize) {
                                return 1;
                            }
                            return poolSize > poolSize2 ? -1 : 0;
                        }
                    });
                } catch (Exception unused) {
                }
            }
            arrayList.size();
            this.f26238l.size();
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public void hp() {
        if (q.f26242l.hp()) {
            l().schedule(new Runnable() { // from class: com.byazt.uid.jx.2
                @Override // java.lang.Runnable
                public void run() throws NoSuchFieldException, SecurityException {
                    jx.this.jx();
                }
            }, 100L, TimeUnit.MILLISECONDS);
        }
    }

    private void hp(final ThreadPoolExecutor threadPoolExecutor) {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        final long keepAliveTime = threadPoolExecutor.getKeepAliveTime(timeUnit);
        final boolean zAllowsCoreThreadTimeOut = threadPoolExecutor.allowsCoreThreadTimeOut();
        threadPoolExecutor.setKeepAliveTime(1L, timeUnit);
        if (zAllowsCoreThreadTimeOut) {
            threadPoolExecutor.allowCoreThreadTimeOut(false);
        }
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        l().schedule(new Runnable() { // from class: com.byazt.uid.jx.3
            @Override // java.lang.Runnable
            public void run() {
                ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                long j2 = keepAliveTime;
                if (j2 == 0) {
                    j2 = 60;
                }
                threadPoolExecutor2.setKeepAliveTime(j2, TimeUnit.NANOSECONDS);
                threadPoolExecutor.allowCoreThreadTimeOut(zAllowsCoreThreadTimeOut);
            }
        }, 10L, TimeUnit.MILLISECONDS);
    }

    private void hp(List<ThreadPoolExecutor> list, String str) throws NoSuchFieldException, SecurityException {
        if (list == null || list.size() == 0 || this.f26237j == null) {
            return;
        }
        HashMap map = new HashMap();
        for (ThreadPoolExecutor threadPoolExecutor : list) {
            if (threadPoolExecutor != null) {
                ThreadFactory threadFactory = threadPoolExecutor.getThreadFactory();
                if (threadFactory instanceof s) {
                    map.put(((s) threadFactory).hp + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else if (threadFactory instanceof com.byazt.jv.j) {
                    map.put(((com.byazt.jv.j) threadFactory).hp() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                } else {
                    map.put(threadFactory.getClass().getName() + "_" + threadPoolExecutor.hashCode(), Integer.valueOf(threadPoolExecutor.getPoolSize()));
                }
            }
        }
        HashMap map2 = new HashMap();
        ThreadGroup threadGroupL = j.l();
        int iActiveCount = threadGroupL.activeCount();
        Thread[] threadArr = new Thread[iActiveCount + (iActiveCount / 2)];
        int iEnumerate = threadGroupL.enumerate(threadArr);
        for (int i2 = 0; i2 < iEnumerate; i2++) {
            Thread thread = threadArr[i2];
            Thread.State state = thread.getState();
            if (state == Thread.State.BLOCKED || state == Thread.State.WAITING || state == Thread.State.TIMED_WAITING) {
                String strReplaceAll = thread.getName().replaceAll("[0-9]", "");
                Integer num = (Integer) map2.get(strReplaceAll);
                map2.put(strReplaceAll, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            }
        }
    }

    public void hp(String str) throws NoSuchFieldException, SecurityException {
        List<ThreadPoolExecutor> listHp = hp(null, false, true);
        if (listHp == null || listHp.size() == 0) {
            return;
        }
        hp(listHp, str);
        listHp.size();
        ThreadPoolExecutor threadPoolExecutor = listHp.get(0);
        if (threadPoolExecutor != null) {
            hp(threadPoolExecutor);
        }
        hp();
    }
}
