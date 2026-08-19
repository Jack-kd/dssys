package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.bl.BlackListModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.StrategyModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.StrategyFilterModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.frequency.StrategyFrequencyModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class q0 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15672a;

    /* renamed from: b, reason: collision with root package name */
    private final C1140l f15673b;

    /* renamed from: d, reason: collision with root package name */
    private Map f15675d;

    /* renamed from: e, reason: collision with root package name */
    private final Map f15676e = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private final e f15674c = new e();

    public class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iC = q0.this.f15673b.c(StrategyEventDBModel.class);
            if (iC > 1000) {
                long[] jArrA = q0.this.f15673b.a(StrategyEventDBModel.class, iC / 2);
                if (jArrA == null || jArrA.length <= 0) {
                    return;
                }
                q0.this.f15673b.a(StrategyEventDBModel.class, jArrA);
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final StrategyEventDBModel f15678a;

        @Override // java.lang.Runnable
        public void run() {
            q0.this.f15673b.a(this.f15678a);
        }

        private c(StrategyEventDBModel strategyEventDBModel) {
            this.f15678a = strategyEventDBModel;
        }
    }

    public class d implements Runnable {
        private d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            List<StrategyEventDBModel> listA = q0.this.f15673b.a(StrategyEventDBModel.class, q0.this.f15673b.d(StrategyEventDBModel.COLUMN_API_KEY), new String[]{g3.c(m0.a())}, q0.this.f15673b.a(StrategyEventDBModel.COLUMN_EVENT_TIME), -1);
            if (listA != null) {
                for (StrategyEventDBModel strategyEventDBModel : listA) {
                    q0.this.a(strategyEventDBModel.getSpaceId(), strategyEventDBModel.getEventCode(), strategyEventDBModel);
                }
            }
        }
    }

    public q0(Context context) {
        this.f15672a = context;
        this.f15673b = (C1140l) C1141m.a().b(context);
    }

    public synchronized String d() {
        String strA = p0.a(this.f15672a, "BL_INFO", "blv", "0");
        return TextUtils.isEmpty(strA) ? "0" : strA;
    }

    public void e() {
        ((C1135g) C1136h.a().b(this.f15672a)).a(this.f15674c);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ((hb) fn.a().b(this.f15672a)).a(new b());
    }

    public synchronized List c() {
        JSONArray jSONArrayB;
        String strA = p0.a(this.f15672a, "BL_INFO", com.umeng.analytics.pro.be.f48817t, "");
        if (TextUtils.isEmpty(strA) || (jSONArrayB = pg.b(g3.b(strA))) == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArrayB.length(); i2++) {
            String strOptString = jSONArrayB.optString(i2);
            if (!TextUtils.isEmpty(strOptString)) {
                arrayList.add(strOptString);
            }
        }
        return arrayList;
    }

    public class e implements oc {
        private e() {
        }

        @Override // com.beizi.fusion.oc
        public void a(ConfigResponseModel configResponseModel, C1135g.a aVar, boolean z2) {
            if (configResponseModel != null) {
                q0.this.f15676e.clear();
                q0.this.f15676e.putAll(a(configResponseModel.getStrategyList()));
            }
            q0.this.b();
        }

        private Map a(List list) {
            HashMap map = new HashMap();
            if (list != null && !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    StrategyModel strategyModel = (StrategyModel) it.next();
                    if (strategyModel != null) {
                        String spaceID = strategyModel.getSpaceID();
                        StrategyFilterModel filter = strategyModel.getFilter();
                        if (!TextUtils.isEmpty(spaceID) && filter != null) {
                            map.put(strategyModel.getSpaceID(), filter);
                        }
                    }
                }
            }
            return map;
        }
    }

    public synchronized void a(String str, w7 w7Var) {
        if (TextUtils.isEmpty(str) || w7Var == null || !a(str)) {
            return;
        }
        StrategyEventDBModel strategyEventDBModel = new StrategyEventDBModel();
        strategyEventDBModel.setApiKey(m0.a());
        strategyEventDBModel.setEventCode(w7Var.getEventCode());
        strategyEventDBModel.setEventTime(System.currentTimeMillis() + "");
        strategyEventDBModel.setSpaceId(str);
        a(str, w7Var.getEventCode(), strategyEventDBModel);
        a(strategyEventDBModel);
    }

    public synchronized LinkedList b(String str, String str2) {
        Map map = this.f15675d;
        if (map == null) {
            return null;
        }
        return (LinkedList) map.get(a(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, StrategyEventDBModel strategyEventDBModel) {
        String strA = a(str, str2);
        if (this.f15675d == null) {
            this.f15675d = new HashMap();
        }
        LinkedList linkedList = (LinkedList) this.f15675d.get(strA);
        if (linkedList == null) {
            linkedList = new LinkedList();
        }
        linkedList.addFirst(strategyEventDBModel);
        this.f15675d.put(strA, linkedList);
    }

    private void a(StrategyEventDBModel strategyEventDBModel) {
        ((hb) fn.a().b(this.f15672a)).a(new c(strategyEventDBModel));
        a(strategyEventDBModel.getSpaceId(), strategyEventDBModel.getEventCode(), strategyEventDBModel);
    }

    private String a(String str, String str2) {
        return String.format("HS_%s_%s", str, str2);
    }

    private void a() {
        ((hb) fn.a().b(this.f15672a)).a(new d());
    }

    private boolean a(String str) {
        StrategyFilterModel strategyFilterModel;
        List<StrategyFrequencyModel> frequencyModels;
        return (!this.f15676e.containsKey(str) || (strategyFilterModel = (StrategyFilterModel) this.f15676e.get(str)) == null || (frequencyModels = strategyFilterModel.getFrequencyModels()) == null || frequencyModels.isEmpty()) ? false : true;
    }

    public synchronized void a(BlackListModel blackListModel) {
        JSONArray jSONArrayA;
        if (blackListModel != null) {
            try {
                String version = blackListModel.getVersion();
                String strD = d();
                if (!TextUtils.isEmpty(version) && !strD.equals(version)) {
                    JSONObject jSONObjectAsJsonObject = blackListModel.asJsonObject();
                    if (jSONObjectAsJsonObject != null && (jSONArrayA = pg.a(jSONObjectAsJsonObject, "list")) != null && jSONArrayA.length() > 0) {
                        p0.b(this.f15672a, "BL_INFO", com.umeng.analytics.pro.be.f48817t, g3.c(jSONArrayA.toString()));
                    }
                    p0.b(this.f15672a, "BL_INFO", "blv", blackListModel.getVersion());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
