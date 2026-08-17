package com.ubix.ssp.ad.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import java.util.Calendar;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static k f45975a;

    /* renamed from: b, reason: collision with root package name */
    private b f45976b;

    /* renamed from: c, reason: collision with root package name */
    private ConcurrentHashMap<String, JSONObject> f45977c = new ConcurrentHashMap<>();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f45978a = 1;

        /* renamed from: b, reason: collision with root package name */
        public long f45979b;
    }

    public static class b extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private ConcurrentHashMap<String, JSONObject> f45980a;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                String string = new JSONObject(b.this.f45980a).toString();
                u.e("save result=" + string);
                v.b(com.ubix.ssp.ad.e.a0.c.e(), "ubix_sp_store", "reqInfo", string);
            }
        }

        public b(ConcurrentHashMap<String, JSONObject> concurrentHashMap) {
            super(Looper.getMainLooper());
            new ConcurrentHashMap();
            this.f45980a = concurrentHashMap;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                com.ubix.ssp.ad.e.a0.c.y();
                com.ubix.ssp.ad.e.a0.c.f46115d.execute(new a());
            }
        }
    }

    private k() throws JSONException {
        if (com.ubix.ssp.ad.e.b.a("slot_req_info")) {
            String strD = v.d(com.ubix.ssp.ad.e.a0.c.e(), "ubix_sp_store", "reqInfo");
            if (!TextUtils.isEmpty(strD)) {
                try {
                    JSONObject jSONObject = new JSONObject(strD);
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        this.f45977c.put(next, jSONObject.getJSONObject(next));
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            this.f45976b = new b(this.f45977c);
        }
    }

    public a a(String str) {
        String str2;
        try {
            a aVar = new a();
            if (!com.ubix.ssp.ad.e.b.a("slot_req_info")) {
                aVar.f45978a = 0;
                aVar.f45979b = 0L;
                return aVar;
            }
            if (this.f45977c.containsKey(str)) {
                JSONObject jSONObject = this.f45977c.get(str);
                if (jSONObject == null) {
                    return null;
                }
                long jOptLong = jSONObject.optLong("lt", 0L);
                if (jOptLong != 0) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTimeInMillis(jOptLong);
                    str2 = calendar.get(1) + ServiceReference.DELIMITER + calendar.get(2) + ServiceReference.DELIMITER + calendar.get(5);
                    aVar.f45979b = System.currentTimeMillis() - jOptLong;
                } else {
                    aVar.f45979b = 0L;
                    str2 = "";
                }
                String str3 = Calendar.getInstance().get(1) + ServiceReference.DELIMITER + Calendar.getInstance().get(2) + ServiceReference.DELIMITER + Calendar.getInstance().get(5);
                u.e("lastDate=" + str2 + ";currentDate=" + str3);
                if (str2.equals(str3)) {
                    int iOptInt = jSONObject.optInt("rq", 0) + 1;
                    try {
                        jSONObject.put("rq", iOptInt);
                        jSONObject.put("lt", System.currentTimeMillis());
                        aVar.f45978a = iOptInt;
                        this.f45977c.put(str, jSONObject);
                        return aVar;
                    } catch (JSONException e2) {
                        e = e2;
                    }
                } else {
                    try {
                        jSONObject.put("lt", System.currentTimeMillis());
                        jSONObject.put("rq", 1);
                        aVar.f45978a = 1;
                        this.f45977c.put(str, jSONObject);
                        return aVar;
                    } catch (JSONException e3) {
                        e = e3;
                    }
                }
            } else {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    aVar.f45978a = 1;
                    aVar.f45979b = 0L;
                    jSONObject2.put("lt", System.currentTimeMillis());
                    jSONObject2.put("rq", 1);
                    this.f45977c.put(str, jSONObject2);
                    return aVar;
                } catch (JSONException e4) {
                    e = e4;
                }
            }
            e.printStackTrace();
            return aVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public synchronized void b() {
        b bVar = this.f45976b;
        if (bVar == null) {
            return;
        }
        if (!bVar.hasMessages(1)) {
            this.f45976b.sendEmptyMessageDelayed(1, 3000L);
        }
    }

    public static synchronized k a() {
        try {
            if (f45975a == null) {
                f45975a = new k();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f45975a;
    }
}
