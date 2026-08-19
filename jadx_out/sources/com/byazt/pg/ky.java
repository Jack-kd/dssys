package com.byazt.pg;

import android.os.Handler;
import android.util.SparseArray;
import com.byazt.pg.r;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 574})
@ATSKeep
/* loaded from: classes3.dex */
public class ky implements r, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile r f24388l;

    public ky(r rVar) {
        this.f24388l = rVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24388l != null ? this.f24388l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24388l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.r
    public void executeFastTask(Runnable runnable) {
        if (this.f24388l != null) {
            this.f24388l.executeFastTask(runnable);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, runnable);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public void executeNormalTask(Runnable runnable) {
        if (this.f24388l != null) {
            this.f24388l.executeNormalTask(runnable);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        sparseArray.put(1, runnable);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public ExecutorService getAIDLExecutor() {
        if (this.f24388l != null) {
            return this.f24388l.getAIDLExecutor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return (ExecutorService) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public Handler getCsjMainHandler() {
        if (this.f24388l != null) {
            return this.f24388l.getCsjMainHandler();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return (Handler) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public ExecutorService getFastExecutor() {
        if (this.f24388l != null) {
            return this.f24388l.getFastExecutor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (ExecutorService) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public Handler getIOHandler() {
        if (this.f24388l != null) {
            return this.f24388l.getIOHandler();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (Handler) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public ExecutorService getIoExecutor() {
        if (this.f24388l != null) {
            return this.f24388l.getIoExecutor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (ExecutorService) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public Handler getMainHandler() {
        if (this.f24388l != null) {
            return this.f24388l.getMainHandler();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (Handler) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public ExecutorService getNormalExecutor() {
        if (this.f24388l != null) {
            return this.f24388l.getNormalExecutor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (ExecutorService) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public ScheduledExecutorService getScheduledThreadPool() {
        if (this.f24388l != null) {
            return this.f24388l.getScheduledThreadPool();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return (ScheduledExecutorService) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public ExecutorService newCachedThreadPool(int i2, int i3) {
        if (this.f24388l != null) {
            return this.f24388l.newCachedThreadPool(i2, i3);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(2, Integer.valueOf(i3));
        return (ExecutorService) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public Handler obtainHandler(r.hp hpVar, String str) {
        if (this.f24388l != null) {
            return this.f24388l.obtainHandler(hpVar, str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        if (hpVar != null) {
            hpVar = new pu(hpVar);
        }
        sparseArray.put(1, hpVar);
        sparseArray.put(2, str);
        return (Handler) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public void postIOTask(Runnable runnable) {
        if (this.f24388l != null) {
            this.f24388l.postIOTask(runnable);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        sparseArray.put(1, runnable);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public void recycleHandler(Handler handler) {
        if (this.f24388l != null) {
            this.f24388l.recycleHandler(handler);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, handler);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public void updateSettings(JSONObject jSONObject) {
        if (this.f24388l != null) {
            this.f24388l.updateSettings(jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, jSONObject);
        this.hp.apply(sparseArray);
    }

    public ky(Function function) {
        this.hp = function;
    }

    @Override // com.byazt.pg.r
    public void executeFastTask(Runnable runnable, int i2) {
        if (this.f24388l != null) {
            this.f24388l.executeFastTask(runnable, i2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        sparseArray.put(1, runnable);
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.r
    public Handler obtainHandler(String str) {
        if (this.f24388l != null) {
            return this.f24388l.obtainHandler(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        sparseArray.put(1, str);
        return (Handler) this.hp.apply(sparseArray);
    }
}
