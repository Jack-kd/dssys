package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class s2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private TaskBean.BackTaskArrayBean f16138a;

    /* renamed from: b, reason: collision with root package name */
    private Context f16139b;

    public s2(Context context, TaskBean.BackTaskArrayBean backTaskArrayBean) {
        this.f16139b = context;
        this.f16138a = backTaskArrayBean;
    }

    private void a() throws JSONException {
        int i2;
        try {
            ArrayList arrayList = new ArrayList();
            List<TaskBean.BackTaskArrayBean.AppLinkBean> apps = this.f16138a.getApps();
            if (apps == null || apps.size() <= 0) {
                return;
            }
            Iterator<TaskBean.BackTaskArrayBean.AppLinkBean> it = apps.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TaskBean.BackTaskArrayBean.AppLinkBean next = it.next();
                String strValueOf = vo.a(this.f16139b, next.getTestLink()) ? String.valueOf(1) : String.valueOf(0);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appLinkId", next.getAppLinkId());
                jSONObject.put("isLink", strValueOf);
                arrayList.add(jSONObject.toString());
            }
            List<String> report = this.f16138a.getReport();
            if (report == null || report.size() <= 0) {
                return;
            }
            for (i2 = 0; i2 < report.size(); i2++) {
                if (!TextUtils.isEmpty(report.get(i2))) {
                    EventCar.getInstance(this.f16139b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "590.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), "", arrayList.toString(), report.get(i2), false));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f16138a != null) {
            try {
                if (System.currentTimeMillis() - vo.a(this.f16139b).longValue() < 86400000) {
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            for (int i2 = 0; i2 < this.f16138a.getRepeatCount(); i2++) {
                if (this.f16138a.getMethod().equalsIgnoreCase("GET")) {
                    try {
                        a();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        EventCar.getInstance(this.f16139b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "510.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    }
                }
            }
            EventCar.getInstance(this.f16139b).goRoadWithoutThread(new EventBean(q1.f15683u, "", "510.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
    }
}
