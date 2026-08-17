package com.byazt.c;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.concurrent.ScheduledExecutorService;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1830, 34})
@ATSKeep
/* loaded from: classes2.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f18699l;

    public l(hp hpVar) {
        this.f18699l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f18699l != null ? this.f18699l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f18699l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.c.hp
    public void changeLogLevel(int i2) {
        if (this.f18699l != null) {
            this.f18699l.changeLogLevel(i2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void d(String str, String str2) {
        if (this.f18699l != null) {
            this.f18699l.d(str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void destroy() {
        if (this.f18699l != null) {
            this.f18699l.destroy();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void e(String str, String str2) {
        if (this.f18699l != null) {
            this.f18699l.e(str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void execCloudManagerSafely() {
        if (this.f18699l != null) {
            this.f18699l.execCloudManagerSafely();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void fetchCommand() {
        if (this.f18699l != null) {
            this.f18699l.fetchCommand();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void i(String str, String str2) {
        if (this.f18699l != null) {
            this.f18699l.i(str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void initCLog(Context context, JSONObject jSONObject) {
        if (this.f18699l != null) {
            this.f18699l.initCLog(context, jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        sparseArray.put(2, jSONObject);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void initCloudMessageManager(Context context, String str, String str2) {
        if (this.f18699l != null) {
            this.f18699l.initCloudMessageManager(context, str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, context);
        sparseArray.put(2, str);
        sparseArray.put(3, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void setOuterExecutorService(ScheduledExecutorService scheduledExecutorService) {
        if (this.f18699l != null) {
            this.f18699l.setOuterExecutorService(scheduledExecutorService);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, scheduledExecutorService);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void setUploadHost(String str) {
        if (this.f18699l != null) {
            this.f18699l.setUploadHost(str);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void v(String str, String str2) {
        if (this.f18699l != null) {
            this.f18699l.v(str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void w(String str, String str2) {
        if (this.f18699l != null) {
            this.f18699l.w(str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    public l(Function function) {
        this.hp = function;
    }

    @Override // com.byazt.c.hp
    public void e(String str, String str2, Throwable th) {
        if (this.f18699l != null) {
            this.f18699l.e(str, str2, th);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, th);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void w(String str, String str2, Throwable th) {
        if (this.f18699l != null) {
            this.f18699l.w(str, str2, th);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, th);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void e(String str, Throwable th) {
        if (this.f18699l != null) {
            this.f18699l.e(str, th);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, str);
        sparseArray.put(2, th);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.c.hp
    public void w(String str, Throwable th) {
        if (this.f18699l != null) {
            this.f18699l.w(str, th);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        sparseArray.put(1, str);
        sparseArray.put(2, th);
        this.hp.apply(sparseArray);
    }
}
