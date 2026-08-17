package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import java.util.List;

/* loaded from: classes2.dex */
public class j5 {

    /* renamed from: c, reason: collision with root package name */
    private static j5 f14643c;

    /* renamed from: a, reason: collision with root package name */
    private String f14644a = "ClipUtil";

    /* renamed from: b, reason: collision with root package name */
    private Context f14645b;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f14646a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ TaskBean.BackTaskArrayBean f14647b;

        public a(List list, TaskBean.BackTaskArrayBean backTaskArrayBean) {
            this.f14646a = list;
            this.f14647b = backTaskArrayBean;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            for (int i2 = 0; i2 < this.f14646a.size(); i2++) {
                if (!TextUtils.isEmpty((CharSequence) this.f14646a.get(i2))) {
                    if (o9.a(ro.a(j5.this.f14645b, (String) this.f14646a.get(i2), null), this.f14647b.getUserAgent()) != null) {
                        EventCar.getInstance(j5.this.f14645b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    } else {
                        EventCar.getInstance(j5.this.f14645b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    }
                    try {
                        Thread.sleep(this.f14647b.getSleepTime());
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    private j5(Context context) {
        this.f14645b = context.getApplicationContext();
    }

    public static j5 a(Context context) {
        if (f14643c == null) {
            synchronized (j5.class) {
                try {
                    if (f14643c == null) {
                        f14643c = new j5(context);
                    }
                } finally {
                }
            }
        }
        return f14643c;
    }

    public void a(TaskBean.BackTaskArrayBean backTaskArrayBean) {
        if (backTaskArrayBean != null && !TextUtils.isEmpty(backTaskArrayBean.getContentUrl())) {
            EventCar.getInstance(this.f14645b).goRoad(new EventBean(q1.f15683u, "", "510.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            List<String> report = backTaskArrayBean.getReport();
            if (report == null || report.size() <= 0) {
                return;
            }
            w3.b().f().execute(new a(report, backTaskArrayBean));
            return;
        }
        EventCar.getInstance(this.f14645b).goRoad(new EventBean(q1.f15683u, "", "510.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
    }
}
