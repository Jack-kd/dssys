package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import java.util.List;

/* loaded from: classes2.dex */
public class yo implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private TaskBean.BackTaskArrayBean f17703a;

    /* renamed from: b, reason: collision with root package name */
    private Context f17704b;

    public yo(Context context, TaskBean.BackTaskArrayBean backTaskArrayBean) {
        this.f17704b = context;
        this.f17703a = backTaskArrayBean;
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        if (this.f17703a != null) {
            for (int i2 = 0; i2 < this.f17703a.getRepeatCount(); i2++) {
                if (this.f17703a.getMethod().equals("GET") && !TextUtils.isEmpty(this.f17703a.getContentUrl())) {
                    try {
                        o9.a(ro.a(this.f17704b, this.f17703a.getContentUrl(), null), this.f17703a.getUserAgent());
                        Thread.sleep(this.f17703a.getSleepTime());
                        List<String> report = this.f17703a.getReport();
                        if (report != null && report.size() > 0) {
                            for (int i3 = 0; i3 < report.size(); i3++) {
                                if (!TextUtils.isEmpty(report.get(i3))) {
                                    if (o9.a(ro.a(this.f17704b, report.get(i3), null), this.f17703a.getUserAgent()) != null) {
                                        EventCar.getInstance(this.f17704b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                                    } else {
                                        EventCar.getInstance(this.f17704b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "520.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                                    }
                                    Thread.sleep(this.f17703a.getSleepTime());
                                }
                            }
                        }
                    } catch (Exception unused) {
                        EventCar.getInstance(this.f17704b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "510.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    }
                }
            }
            EventCar.getInstance(this.f17704b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "510.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
    }
}
