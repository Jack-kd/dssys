package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.Manager;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.model.TaskBean;
import com.beizi.fusion.model.TaskConfig;
import com.beizi.fusion.widget.JSView;
import com.beizi.fusion.widget.LandingView;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class h9 {

    /* renamed from: i, reason: collision with root package name */
    private static Context f14249i = null;

    /* renamed from: j, reason: collision with root package name */
    private static ResponseInfo f14250j = null;

    /* renamed from: k, reason: collision with root package name */
    private static TaskBean f14251k = null;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f14252l = false;

    /* renamed from: m, reason: collision with root package name */
    private static boolean f14253m = false;

    /* renamed from: n, reason: collision with root package name */
    private static h9 f14254n;

    /* renamed from: a, reason: collision with root package name */
    private ScheduledExecutorService f14255a;

    /* renamed from: b, reason: collision with root package name */
    private long f14256b;

    /* renamed from: c, reason: collision with root package name */
    private long f14257c;

    /* renamed from: d, reason: collision with root package name */
    private long f14258d;

    /* renamed from: e, reason: collision with root package name */
    private final b f14259e;

    /* renamed from: f, reason: collision with root package name */
    private ScheduledExecutorService f14260f;

    /* renamed from: g, reason: collision with root package name */
    private ScheduledExecutorService f14261g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f14262h = true;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private int f14263a;

        /* renamed from: com.beizi.fusion.h9$a$a, reason: collision with other inner class name */
        public class RunnableC0162a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f14265a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ TaskBean.BackTaskArrayBean f14266b;

            public RunnableC0162a(int i2, TaskBean.BackTaskArrayBean backTaskArrayBean) {
                this.f14265a = i2;
                this.f14266b = backTaskArrayBean;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i2 = this.f14265a;
                if (i2 == 8) {
                    w3.b().e().execute(new s2(h9.f14249i, this.f14266b));
                    return;
                }
                if (i2 == 1) {
                    w3.b().f().execute(new yo(h9.f14249i, this.f14266b));
                    return;
                }
                if (i2 == 2) {
                    j5.a(h9.f14249i).a(this.f14266b);
                    return;
                }
                if (i2 == 3) {
                    mq.a(h9.f14249i);
                    new LandingView(h9.f14249i, this.f14266b).load();
                } else {
                    if (i2 != 4) {
                        return;
                    }
                    mq.a(h9.f14249i);
                    new JSView(h9.f14249i, this.f14266b).load();
                }
            }
        }

        public a(int i2) {
            this.f14263a = i2;
        }

        private void a() throws InterruptedException {
            if (h9.f14251k != null) {
                long expired = h9.f14251k.getExpired();
                long jCurrentTimeMillis = System.currentTimeMillis();
                List<TaskBean.BackTaskArrayBean> backTaskArray = h9.f14251k.getBackTaskArray();
                if (backTaskArray == null || backTaskArray.size() <= 0) {
                    return;
                }
                EventCar.getInstance(h9.f14249i).goRoadWithoutThread(new EventBean(q1.f15683u, "", "500.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), "", String.valueOf(backTaskArray.size())));
                for (int i2 = 0; i2 < backTaskArray.size(); i2++) {
                    if (System.currentTimeMillis() - jCurrentTimeMillis > expired) {
                        EventCar.getInstance(h9.f14249i).goRoadWithoutThread(new EventBean(q1.f15683u, "", "530.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), "", String.valueOf(backTaskArray.size() - i2)));
                    } else {
                        TaskBean.BackTaskArrayBean backTaskArrayBean = backTaskArray.get(i2);
                        h9.this.f14259e.post(new RunnableC0162a(backTaskArrayBean.getType(), backTaskArrayBean));
                        try {
                            Thread.sleep(backTaskArrayBean.getSleepTime());
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            TaskConfig taskConfig;
            int i2 = this.f14263a;
            if (i2 == 2) {
                if (!h9.this.e().booleanValue()) {
                    h9.this.f14262h = false;
                    EventCar.getInstance(h9.f14249i).goRoad(new EventBean(q1.f15683u, "", "310.210", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    return;
                }
                if (h9.this.f14262h || !q1.i().q() || vo.o(h9.f14249i)) {
                    h9.this.f14262h = false;
                    Thread.currentThread().getName();
                    Message message = new Message();
                    message.what = 1;
                    message.arg1 = 1;
                    h9.this.f14259e.sendMessage(message);
                    EventCar.getInstance(h9.f14249i).goRoad(new EventBean(q1.f15683u, "", "310.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    return;
                }
                return;
            }
            if (i2 == 3) {
                EventCar.getInstance(h9.f14249i).doUpLoadLogs();
                return;
            }
            if (i2 != 4) {
                if (i2 != 5) {
                    return;
                }
                Thread.currentThread().getName();
                Message message2 = new Message();
                message2.what = 1;
                message2.arg1 = 5;
                h9.this.f14259e.sendMessage(message2);
                EventCar.getInstance(h9.f14249i).goRoad(new EventBean(q1.f15683u, "", "310.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                return;
            }
            Thread.currentThread().getName();
            if (h9.f14250j.getTaskConfig() == null || (taskConfig = h9.f14250j.getTaskConfig()) == null || taskConfig.getUrl() == null) {
                return;
            }
            String strA = o9.a(h9.f14249i, taskConfig.getUrl(), q1.i().c(), Boolean.TRUE);
            if (TextUtils.isEmpty(strA) || strA.length() <= 0) {
                return;
            }
            try {
                String strOptString = new JSONObject(strA).optString("data");
                if (TextUtils.isEmpty(strOptString) || strOptString.equals("null")) {
                    return;
                }
                String strA2 = j2.a(tg.b(), strOptString);
                if (TextUtils.isEmpty(strA2)) {
                    return;
                }
                TaskBean unused = h9.f14251k = TaskBean.objectFromData(strA2);
                if (h9.f14251k != null) {
                    a();
                }
            } catch (Exception unused2) {
            }
        }
    }

    public static class b extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference f14268a;

        public b(h9 h9Var) {
            super(Looper.getMainLooper());
            this.f14268a = new WeakReference(h9Var);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (h9.f14253m) {
                return;
            }
            boolean unused = h9.f14253m = true;
            try {
                h9 h9Var = (h9) this.f14268a.get();
                if (h9Var == null) {
                    boolean unused2 = h9.f14253m = false;
                    return;
                }
                i9 i9Var = new i9(h9.f14249i, h9Var);
                if (h9.f14250j.getConfigurator() != null) {
                    i9Var.executeOnExecutor(w3.b().c(), h9.f14250j.getConfigurator().getConfigUrl());
                } else {
                    i9Var.executeOnExecutor(w3.b().c(), new String[0]);
                }
            } catch (RejectedExecutionException | Exception unused3) {
            }
        }
    }

    private h9(Context context) {
        this.f14256b = 60000L;
        this.f14257c = 60000L;
        this.f14258d = 0L;
        f14249i = context.getApplicationContext();
        this.f14259e = new b(this);
        if (f14250j == null) {
            ResponseInfo responseInfo = ResponseInfo.getInstance(f14249i);
            f14250j = responseInfo;
            if (!responseInfo.isInit()) {
                f14250j.init();
            }
            if (f14250j.getConfigurator() != null) {
                long checkInterval = f14250j.getConfigurator().getCheckInterval();
                if (checkInterval != 0) {
                    this.f14256b = checkInterval;
                }
            }
            if (f14250j.getMessenger() != null) {
                long checkInterval2 = f14250j.getMessenger().getCheckInterval();
                if (checkInterval2 != 0) {
                    this.f14257c = checkInterval2;
                }
            }
            if (f14250j.getTaskConfig() != null) {
                long checkInterval3 = f14250j.getTaskConfig().getCheckInterval();
                if (checkInterval3 != 0) {
                    this.f14258d = checkInterval3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean e() {
        Manager manager = f14250j.getManager();
        if (manager == null) {
            return Boolean.TRUE;
        }
        List<AdSpacesBean> adSpaces = manager.getAdSpaces();
        if (adSpaces == null) {
            return Boolean.TRUE;
        }
        if (adSpaces.size() == 0) {
            return Boolean.TRUE;
        }
        String strC = q1.i().c();
        AdSpacesBean adSpacesBean = adSpaces.get(0);
        if (!strC.equals(adSpacesBean.getAppId())) {
            return Boolean.TRUE;
        }
        if (adSpacesBean.getComponent() == null) {
            return Boolean.TRUE;
        }
        if (f14250j.getConfigurator() == null) {
            return Boolean.TRUE;
        }
        long jLongValue = ((Long) go.a(f14249i, "lastUpdateTime", (Object) Long.valueOf(new Date(0L).getTime()))).longValue();
        long expireTime = f14250j.getExpireTime();
        long maxValidTime = f14250j.getMaxValidTime();
        if (maxValidTime == 0) {
            maxValidTime = 2592000000L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
        return Boolean.valueOf(jCurrentTimeMillis > expireTime || jCurrentTimeMillis > maxValidTime);
    }

    private void f() {
        if (this.f14255a == null) {
            this.f14255a = Executors.newScheduledThreadPool(2);
        }
        if (this.f14260f == null) {
            this.f14260f = Executors.newScheduledThreadPool(2);
        }
        if (this.f14261g != null || this.f14258d == 0) {
            return;
        }
        this.f14261g = Executors.newScheduledThreadPool(2);
    }

    private void c(int i2) {
        ih ihVarA = ih.a(f14249i);
        Intent intent = new Intent("com.ad.action.UPDATE_CONFIG_SUCCESS");
        intent.putExtra("updateResult", i2);
        ihVarA.a(intent);
    }

    public void b(int i2) {
        f();
        if (i2 != 0) {
            if (i2 != 5) {
                return;
            }
            f14252l = true;
            if (!f14253m) {
                Message message = new Message();
                message.what = 1;
                message.arg1 = 5;
                this.f14259e.sendMessage(message);
            }
            EventCar.getInstance(f14249i).goRoad(new EventBean(q1.f15683u, "", "310.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            return;
        }
        ScheduledExecutorService scheduledExecutorService = this.f14255a;
        a aVar = new a(2);
        long j2 = this.f14256b;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        scheduledExecutorService.scheduleWithFixedDelay(aVar, 0L, j2, timeUnit);
        this.f14260f.scheduleWithFixedDelay(new a(3), 0L, this.f14257c, timeUnit);
        ScheduledExecutorService scheduledExecutorService2 = this.f14261g;
        if (scheduledExecutorService2 != null && this.f14258d != 0) {
            scheduledExecutorService2.scheduleWithFixedDelay(new a(4), 0L, this.f14258d, timeUnit);
            EventCar.getInstance(f14249i).goRoad(new EventBean(q1.f15683u, "", "500.000", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
        EventCar.getInstance(f14249i).goRoad(new EventBean(q1.f15683u, "", "300.000", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
    }

    public void a(Object obj) {
        if (((g9) obj) != null) {
            ResponseInfo responseInfo = ResponseInfo.getInstance(f14249i);
            f14250j = responseInfo;
            responseInfo.init();
            if (f14252l) {
                c(1);
                f14252l = false;
            }
            EventCar.getInstance(f14249i).goRoad(new EventBean(q1.f15683u, "", "320.200", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
        f14253m = false;
    }

    public void a(int i2) {
        if (f14252l) {
            c(0);
            f14252l = false;
        }
        EventCar.getInstance(f14249i).goRoad(new EventBean(q1.f15683u, "", "320.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        f14253m = false;
    }

    public static synchronized h9 a(Context context) {
        try {
            if (f14254n == null) {
                f14254n = new h9(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f14254n;
    }
}
