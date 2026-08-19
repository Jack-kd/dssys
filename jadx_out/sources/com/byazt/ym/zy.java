package com.byazt.ym;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.pg.pu;
import com.byazt.pg.r;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1529, 302})
@ATSKeep
/* loaded from: classes3.dex */
public class zy implements r, Function {

    /* renamed from: a, reason: collision with root package name */
    public volatile Handler f28068a;
    public volatile Handler eb;
    public volatile ThreadPoolExecutor hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile ScheduledExecutorService f28069j;
    public volatile ThreadPoolExecutor jx;

    /* renamed from: l, reason: collision with root package name */
    public ThreadPoolExecutor f28070l;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.lo.hp f28071s = com.byazt.lo.hp.hp();

    /* renamed from: w, reason: collision with root package name */
    public volatile Handler f28072w;

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case -3:
                ats_setAtsField((SparseArray) sparseArray.get(1));
                return null;
            case -2:
                return ats_getAtsField();
            case -1:
                release();
                return null;
            case 0:
            default:
                return null;
            case 1:
                return getNormalExecutor();
            case 2:
                return getIoExecutor();
            case 3:
                return getFastExecutor();
            case 4:
                return newCachedThreadPool(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue());
            case 5:
                return getIOHandler();
            case 6:
                return getCsjMainHandler();
            case 7:
                return getMainHandler();
            case 8:
                return getAIDLExecutor();
            case 9:
                return getScheduledThreadPool();
            case 10:
                executeFastTask((Runnable) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
                return null;
            case 11:
                executeFastTask((Runnable) sparseArray.get(1));
                return null;
            case 12:
                executeNormalTask((Runnable) sparseArray.get(1));
                return null;
            case 13:
                return obtainHandler((String) sparseArray.get(1));
            case 14:
                Object puVar = sparseArray.get(1);
                Object obj2 = sparseArray.get(2);
                if (puVar != null) {
                    puVar = new pu((Function) puVar);
                }
                return obtainHandler((r.hp) puVar, (String) obj2);
            case 15:
                recycleHandler((Handler) sparseArray.get(1));
                return null;
            case 16:
                updateSettings((JSONObject) sparseArray.get(1));
                return null;
            case 17:
                postIOTask((Runnable) sparseArray.get(1));
                return null;
        }
    }

    public SparseArray ats_getAtsField() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(1, this.hp);
        sparseArray.put(2, this.f28070l);
        sparseArray.put(3, this.jx);
        sparseArray.put(4, this.f28069j);
        sparseArray.put(5, this.f28072w);
        sparseArray.put(6, this.f28068a);
        sparseArray.put(7, this.eb);
        return sparseArray;
    }

    public void ats_setAtsField(SparseArray sparseArray) {
        Object obj = sparseArray.get(1);
        if (obj != null) {
            this.hp = (ThreadPoolExecutor) obj;
        }
        Object obj2 = sparseArray.get(2);
        if (obj2 != null) {
            this.f28070l = (ThreadPoolExecutor) obj2;
        }
        Object obj3 = sparseArray.get(3);
        if (obj3 != null) {
            this.jx = (ThreadPoolExecutor) obj3;
        }
        Object obj4 = sparseArray.get(4);
        if (obj4 != null) {
            this.f28069j = (ScheduledExecutorService) obj4;
        }
        Object obj5 = sparseArray.get(5);
        if (obj5 != null) {
            this.f28072w = (Handler) obj5;
        }
        Object obj6 = sparseArray.get(6);
        if (obj6 != null) {
            this.f28068a = (Handler) obj6;
        }
        Object obj7 = sparseArray.get(7);
        if (obj7 != null) {
            this.eb = (Handler) obj7;
        }
    }

    @Override // com.byazt.pg.r
    public void executeFastTask(Runnable runnable, int i2) {
        getFastExecutor().execute(runnable);
    }

    @Override // com.byazt.pg.r
    public void executeNormalTask(Runnable runnable) {
        getNormalExecutor().execute(runnable);
    }

    @Override // com.byazt.pg.r
    public ExecutorService getAIDLExecutor() {
        if (this.jx == null) {
            this.jx = com.byazt.uid.q.f26242l.zy();
        }
        return this.jx;
    }

    @Override // com.byazt.pg.r
    public Handler getCsjMainHandler() {
        if (this.f28072w == null) {
            synchronized (zy.class) {
                try {
                    if (this.f28072w == null) {
                        this.f28072w = this.f28071s.hp("csj_main");
                    }
                } finally {
                }
            }
        }
        return this.f28072w;
    }

    @Override // com.byazt.pg.r
    public ExecutorService getFastExecutor() {
        if (this.f28070l == null) {
            this.f28070l = com.byazt.uid.q.f26242l.e();
        }
        return this.f28070l;
    }

    @Override // com.byazt.pg.r
    public Handler getIOHandler() {
        if (this.eb == null) {
            synchronized (zy.class) {
                try {
                    if (this.eb == null) {
                        this.eb = this.f28071s.hp("csj_io");
                    }
                } finally {
                }
            }
        }
        return this.eb;
    }

    @Override // com.byazt.pg.r
    public ExecutorService getIoExecutor() {
        return com.byazt.uid.q.f26242l.zy();
    }

    @Override // com.byazt.pg.r
    public Handler getMainHandler() {
        if (this.f28068a == null) {
            synchronized (zy.class) {
                try {
                    if (this.f28068a == null) {
                        this.f28068a = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return this.f28068a;
    }

    @Override // com.byazt.pg.r
    public ExecutorService getNormalExecutor() {
        if (this.hp == null) {
            this.hp = com.byazt.uid.q.f26242l.q();
        }
        return this.hp;
    }

    @Override // com.byazt.pg.r
    public ScheduledExecutorService getScheduledThreadPool() {
        if (this.f28069j == null) {
            this.f28069j = com.byazt.uid.q.f26242l.jl();
        }
        return this.f28069j;
    }

    @Override // com.byazt.pg.r
    public ExecutorService newCachedThreadPool(int i2, int i3) {
        return null;
    }

    @Override // com.byazt.pg.r
    public Handler obtainHandler(@Nullable String str) {
        return this.f28071s.hp(str);
    }

    @Override // com.byazt.pg.r
    public void postIOTask(Runnable runnable) {
        getIOHandler().post(runnable);
    }

    @Override // com.byazt.pg.r
    public void recycleHandler(@NonNull Handler handler) {
        this.f28071s.hp(handler);
    }

    public void release() {
        this.f28071s.l();
    }

    @Override // com.byazt.pg.r
    public void updateSettings(JSONObject jSONObject) {
        com.byazt.uid.q.f26242l.hp(jSONObject);
    }

    @Override // com.byazt.pg.r
    public void executeFastTask(Runnable runnable) {
        getFastExecutor().execute(runnable);
    }

    @Override // com.byazt.pg.r
    public Handler obtainHandler(r.hp hpVar, @Nullable String str) {
        return this.f28071s.hp(hpVar, str);
    }
}
