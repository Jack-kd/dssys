package com.byazt.shx;

import android.os.AsyncTask;
import com.byazt.uid.s;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1272, 34})
/* loaded from: classes3.dex */
public abstract class l<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {
    public static final Executor hp = new j(0, 20, 3, TimeUnit.MILLISECONDS, new SynchronousQueue(), new s("PAsyncTask"));

    public AsyncTask<Params, Progress, Result> hp(Params... paramsArr) {
        return executeOnExecutor(hp, paramsArr);
    }
}
