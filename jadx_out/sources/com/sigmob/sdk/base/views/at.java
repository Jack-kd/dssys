package com.sigmob.sdk.base.views;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import androidx.view.AbstractC1061g;
import com.czhj.sdk.logger.SigmobLog;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public class at {

    /* renamed from: c, reason: collision with root package name */
    private static at f36881c = null;

    /* renamed from: d, reason: collision with root package name */
    private static final AtomicReference<at> f36882d = new AtomicReference<>();

    /* renamed from: e, reason: collision with root package name */
    private static final int f36883e = 2;

    /* renamed from: b, reason: collision with root package name */
    private final Object f36885b = new Object();

    /* renamed from: a, reason: collision with root package name */
    private final Queue<C1295g> f36884a = new LinkedBlockingQueue(2);

    private at() {
    }

    public static at a() {
        AtomicReference<at> atomicReference;
        do {
            at atVar = f36881c;
            if (atVar != null) {
                return atVar;
            }
            atomicReference = f36882d;
        } while (!AbstractC1061g.a(atomicReference, null, new at()));
        at atVar2 = atomicReference.get();
        f36881c = atVar2;
        return atVar2;
    }

    private C1295g b(Context context) {
        C1295g c1295g;
        Queue<C1295g> queue = this.f36884a;
        C1295g c1295gPoll = queue != null ? queue.poll() : null;
        SigmobLog.i("acquireWebViewInternal webview:" + c1295gPoll);
        if (c1295gPoll != null) {
            ((MutableContextWrapper) c1295gPoll.getContext()).setBaseContext(context);
            return c1295gPoll;
        }
        synchronized (this.f36885b) {
            c1295g = new C1295g(new MutableContextWrapper(context));
        }
        return c1295g;
    }

    private void b(C1295g c1295g) {
        try {
            if (c1295g.getContext() instanceof MutableContextWrapper) {
                MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) c1295g.getContext();
                mutableContextWrapper.setBaseContext(mutableContextWrapper.getApplicationContext());
                SigmobLog.i("enqueue  webview:" + c1295g);
                if (this.f36884a != null) {
                    c1295g.b();
                    this.f36884a.offer(c1295g);
                } else {
                    c1295g.destroy();
                }
            }
            if (c1295g.getContext() instanceof Activity) {
                SigmobLog.i("Abandon this webview  ， It will cause leak if enqueue !");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public C1295g a(Context context) {
        return b(context);
    }

    public void a(C1295g c1295g) {
        b(c1295g);
    }
}
