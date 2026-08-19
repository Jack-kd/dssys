package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.AdvertCacheDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.rf;
import com.beizi.fusion.yp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class v3 {

    /* renamed from: b, reason: collision with root package name */
    private static v3 f16620b;

    /* renamed from: c, reason: collision with root package name */
    private static Map f16621c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private static Context f16622d;

    /* renamed from: a, reason: collision with root package name */
    private String f16623a = "KEY_AD_CACHE_CONTENT_";

    public class a implements Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(a5 a5Var, a5 a5Var2) {
            return a5Var.a() > a5Var2.a() ? 1 : -1;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c8.a(q1.i().n());
            c8.a(q1.i().n(), 5);
        }
    }

    public class c implements Comparator {
        public c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(a5 a5Var, a5 a5Var2) {
            return a5Var.a() > a5Var2.a() ? 1 : -1;
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f16627a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ EventBean f16628b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ x1 f16629c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ wh f16630d;

        public class a implements wi {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f16632a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f16633b;

            public a(String str, String str2) {
                this.f16632a = str;
                this.f16633b = str2;
            }

            @Override // com.beizi.fusion.wi
            public void a(int i2) {
            }

            @Override // com.beizi.fusion.wi
            public void a(String str) {
                try {
                    rn rnVar = new rn(str, null, d.this.f16630d);
                    d dVar = d.this;
                    v3.this.a(rnVar, str, this.f16632a, this.f16633b, dVar.f16630d);
                    if (d.this.f16628b != null) {
                        if (rnVar.b()) {
                            EventBean eventBeanM44clone = d.this.f16628b.m44clone();
                            eventBeanM44clone.setEventCode("255.400");
                            v3.this.a(eventBeanM44clone);
                        } else {
                            EventBean eventBeanM44clone2 = d.this.f16628b.m44clone();
                            eventBeanM44clone2.setEventCode("255.500");
                            eventBeanM44clone2.setErrorCode("3");
                            v3.this.a(eventBeanM44clone2);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }

        public d(int i2, EventBean eventBean, x1 x1Var, wh whVar) {
            this.f16627a = i2;
            this.f16628b = eventBean;
            this.f16629c = x1Var;
            this.f16630d = whVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strG;
            for (int i2 = 0; i2 < this.f16627a; i2++) {
                try {
                    String strA = so.a();
                    EventBean eventBean = this.f16628b;
                    if (eventBean != null) {
                        eventBean.setReqId(strA);
                        this.f16628b.setEventCode("255.300");
                        v3.this.a(this.f16628b);
                    }
                    String strA2 = so.a();
                    x1 x1Var = new x1();
                    x1Var.c(strA2);
                    x1Var.a(true);
                    x1 x1Var2 = this.f16629c;
                    if (x1Var2 != null) {
                        strG = x1Var2.g();
                        x1Var.d(strG);
                        x1Var.a(this.f16629c.e());
                        x1Var.b(this.f16629c.b());
                    } else {
                        strG = null;
                    }
                    new yi().a(x1Var, new a(strA2, strG), this.f16630d);
                } catch (Exception unused) {
                }
            }
        }
    }

    public class e implements rf.f {
        public e() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
        }
    }

    public class f implements yp.e {
        public f() {
        }

        @Override // com.beizi.fusion.yp.e
        public void a() {
        }

        @Override // com.beizi.fusion.yp.e
        public void a(String str) {
        }
    }

    public static /* synthetic */ class g {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f16637a;

        static {
            int[] iArr = new int[wh.values().length];
            f16637a = iArr;
            try {
                iArr[wh.NEW_SPLASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16637a[wh.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16637a[wh.INTERSTITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16637a[wh.REWARDEDVIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static synchronized v3 b() {
        try {
            if (f16620b == null) {
                synchronized (v3.class) {
                    f16622d = b4.j().g();
                    f16620b = new v3();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f16620b;
    }

    public a5 c(String str) {
        LinkedList linkedList;
        a5 a5Var;
        try {
            linkedList = f16621c.containsKey(str) ? (LinkedList) f16621c.get(str) : null;
        } catch (Exception unused) {
        }
        if (linkedList == null || linkedList.isEmpty()) {
            List listD = d(str);
            if (listD != null && !listD.isEmpty()) {
                LinkedList linkedList2 = new LinkedList(listD);
                f16621c.put(str, linkedList2);
                linkedList = linkedList2;
            }
            return null;
        }
        if (linkedList.isEmpty() || (a5Var = (a5) linkedList.pollLast()) == null) {
            return null;
        }
        if (a5Var.b() < System.currentTimeMillis()) {
            return null;
        }
        return a5Var;
    }

    public List d(String str) {
        try {
            String strA = sm.a(f16622d, this.f16623a + str);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            String strA2 = i3.a(strA);
            if (TextUtils.isEmpty(strA2)) {
                return null;
            }
            JSONArray jSONArray = new JSONArray(strA2);
            if (jSONArray.length() < 1) {
                return null;
            }
            ArrayList arrayList = null;
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    long jOptLong = jSONObjectOptJSONObject.has(AdvertCacheDBModel.COLUMN_EXPIRE_TIME) ? jSONObjectOptJSONObject.optLong(AdvertCacheDBModel.COLUMN_EXPIRE_TIME) : 0L;
                    if (jOptLong >= System.currentTimeMillis()) {
                        a5 a5Var = new a5();
                        a5Var.b(jOptLong);
                        if (jSONObjectOptJSONObject.has(StrategyEventDBModel.COLUMN_SPACE_ID)) {
                            a5Var.b(jSONObjectOptJSONObject.optString(StrategyEventDBModel.COLUMN_SPACE_ID));
                        }
                        if (jSONObjectOptJSONObject.has(AdvertCacheDBModel.COLUMN_CACHE_TIME)) {
                            a5Var.a(jSONObjectOptJSONObject.optLong(AdvertCacheDBModel.COLUMN_CACHE_TIME));
                        }
                        if (jSONObjectOptJSONObject.has("requestId")) {
                            a5Var.a(jSONObjectOptJSONObject.optString("requestId"));
                        }
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(a5Var);
                    }
                }
            }
            Collections.sort(arrayList, new a());
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public synchronized void a(EventBean eventBean, int i2, x1 x1Var, wh whVar) {
        List listD;
        if (i2 >= 1 && x1Var != null) {
            try {
                String strG = x1Var.g();
                LinkedList linkedList = f16621c.containsKey(strG) ? (LinkedList) f16621c.get(strG) : null;
                if ((linkedList == null || linkedList.isEmpty()) && (listD = d(strG)) != null && listD.size() > 0) {
                    linkedList = new LinkedList(listD);
                    f16621c.put(strG, linkedList);
                }
                int size = (linkedList == null || linkedList.size() <= 0) ? 0 : linkedList.size();
                if (i2 >= 1 && size < i2) {
                    b(eventBean, i2 - size, x1Var, whVar);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void b(EventBean eventBean, int i2, x1 x1Var, wh whVar) throws Throwable {
        try {
            if (i2 < 1) {
                return;
            }
            try {
                x3.c().a().execute(new d(i2, eventBean, x1Var, whVar));
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        yp.c().a(f16622d, str, false, new f());
    }

    public void a() {
        Executors.newSingleThreadScheduledExecutor().schedule(new b(), 10000L, TimeUnit.MILLISECONDS);
    }

    public void a(a5 a5Var) {
        if (a5Var == null) {
            return;
        }
        try {
            System.currentTimeMillis();
            c8.a(f16622d, a5Var.d(), a5Var.c());
        } catch (Exception unused) {
        }
    }

    public void a(a5 a5Var, int i2, int i3) {
        if (a5Var == null) {
            return;
        }
        try {
            if (a5Var.b() >= System.currentTimeMillis() && i2 == 1) {
                String strD = a5Var.d();
                LinkedList linkedList = f16621c.containsKey(strD) ? (LinkedList) f16621c.get(strD) : null;
                if (linkedList == null || linkedList.isEmpty()) {
                    linkedList = new LinkedList();
                }
                linkedList.add(a5Var);
                Collections.sort(linkedList, new c());
                if (linkedList.size() > i3) {
                    linkedList.removeFirst();
                }
                if (a(linkedList, strD)) {
                    f16621c.put(strD, linkedList);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public rn a(a5 a5Var, wh whVar) {
        if (a5Var == null) {
            return null;
        }
        try {
            String strD = a5Var.d();
            String strB = c8.b(f16622d, strD, a5Var.c());
            if (TextUtils.isEmpty(strB)) {
                return null;
            }
            rn rnVar = new rn(strB, null, whVar);
            if (!rnVar.b()) {
                return null;
            }
            LinkedList linkedList = f16621c.containsKey(strD) ? (LinkedList) f16621c.get(strD) : null;
            if (linkedList != null && !linkedList.isEmpty()) {
                a(linkedList, strD);
                return rnVar;
            }
            sm.c(f16622d, this.f16623a + strD);
            return rnVar;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(rn rnVar, String str, String str2, String str3, wh whVar) {
        int iD;
        try {
            if (rnVar.b() && (iD = rnVar.D()) > 0 && c8.a(f16622d, str3, str2, str)) {
                a5 a5Var = new a5();
                long jCurrentTimeMillis = System.currentTimeMillis();
                a5Var.a(jCurrentTimeMillis);
                a5Var.b(jCurrentTimeMillis + (iD * 1000));
                a5Var.a(str2);
                a5Var.b(str3);
                LinkedList linkedList = f16621c.containsKey(str3) ? (LinkedList) f16621c.get(str3) : null;
                if (linkedList == null || linkedList.isEmpty()) {
                    linkedList = new LinkedList();
                }
                linkedList.add(a5Var);
                a(linkedList, str3);
                f16621c.put(str3, linkedList);
                int i2 = g.f16637a[whVar.ordinal()];
                if (i2 == 1) {
                    String strJ = rnVar.J();
                    if (rnVar.K() == p7.RENDER_PIC) {
                        a(strJ);
                        return;
                    }
                    return;
                }
                if (i2 == 2) {
                    a(((d4) rnVar.P()).getImageUrl());
                    return;
                }
                if (i2 != 3) {
                    if (i2 == 4 && rnVar.p0()) {
                        String strF0 = rnVar.f0();
                        String strH = rnVar.H();
                        if (!TextUtils.isEmpty(strF0)) {
                            b(strF0);
                        }
                        if (TextUtils.isEmpty(strH)) {
                            return;
                        }
                        a(strH);
                        return;
                    }
                    return;
                }
                boolean zP0 = rnVar.p0();
                String strE = rnVar.E();
                String strF02 = rnVar.f0();
                if (zP0) {
                    b(strF02);
                } else {
                    a(strE);
                }
            }
        } catch (Exception unused) {
        }
    }

    private boolean a(LinkedList linkedList, String str) {
        if (linkedList != null) {
            try {
                if (!linkedList.isEmpty()) {
                    String strB = i3.b(linkedList.toString());
                    if (TextUtils.isEmpty(strB)) {
                        return false;
                    }
                    sm.c(f16622d, this.f16623a + str, strB);
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        rf.a((Context) null).a(str, false, new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(EventBean eventBean) {
        EventCar.getInstance(f16622d).goRoad(eventBean);
    }
}
