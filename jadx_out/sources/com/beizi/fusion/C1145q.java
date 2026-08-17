package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.Analyse2ConfigModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.InitTraceModel;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.beizi.fusion.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1145q implements s9 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15668a;

    /* renamed from: b, reason: collision with root package name */
    private final ye f15669b;

    /* renamed from: c, reason: collision with root package name */
    private String f15670c;

    /* renamed from: com.beizi.fusion.q$a */
    public class a implements oc {
        public a() {
        }

        @Override // com.beizi.fusion.oc
        public void a(ConfigResponseModel configResponseModel, C1135g.a aVar, boolean z2) {
            if (configResponseModel == null || C1135g.a.EXPIRED == aVar) {
                return;
            }
            C1145q.this.a(configResponseModel);
            C1145q.this.c();
            C1145q c1145q = C1145q.this;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            c1145q.a(30L, 300L, timeUnit);
            if (C1145q.this.f15669b != null) {
                C1145q.this.f15669b.a(30L, 300L, timeUnit, C1145q.this.f15670c);
            }
        }
    }

    public C1145q(Context context) {
        this.f15668a = context.getApplicationContext();
        this.f15669b = (ye) bn.a().b(context);
    }

    private void b(ConfigResponseModel configResponseModel) {
        Analyse2ConfigModel analyse2ConfigModel = configResponseModel.getAnalyse2ConfigModel();
        if (analyse2ConfigModel != null) {
            this.f15670c = analyse2ConfigModel.getVersionMd5();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        ((hb) fn.a().b(this.f15668a)).d(new Runnable() { // from class: com.beizi.fusion.P
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f12549b.b();
            }
        });
    }

    @Override // com.beizi.fusion.s9
    public void a() {
        ((C1135g) C1136h.a().b(this.f15668a)).a(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() throws Throwable {
        List<j6> listB = C1138j.b(this.f15668a);
        StringBuilder sb = new StringBuilder();
        sb.append("上报历史崩溃日志...");
        sb.append(listB != null ? Integer.valueOf(listB.size()) : " null ");
        rm.a("ASNPEventReporter", sb.toString());
        if (listB == null || listB.isEmpty()) {
            return;
        }
        JSONArray jSONArrayA = pg.a();
        for (j6 j6Var : listB) {
            JSONObject jSONObjectB = pg.b();
            pg.a(jSONObjectB, "affiliated", j6Var.a());
            pg.a(jSONObjectB, "exception", j6Var.b());
            pg.a(jSONObjectB, "time", j6Var.c());
            jSONArrayA.put(jSONObjectB);
        }
        ye yeVar = this.f15669b;
        if (yeVar != null) {
            yeVar.a(g3.c(jSONArrayA.toString()), this.f15670c, m0.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ConfigResponseModel configResponseModel) {
        C1135g c1135g;
        b(configResponseModel);
        if (this.f15669b == null || (c1135g = (C1135g) C1136h.a().b(this.f15668a)) == null) {
            return;
        }
        C1150v c1150vA = c1135g.a();
        InitTraceModel initTraceModelB = c1135g.b();
        try {
            Objects.requireNonNull(initTraceModelB);
            String startID = initTraceModelB.getStartID();
            String strE = c1150vA.e();
            Objects.requireNonNull(strE);
            if (TextUtils.isEmpty(startID) || TextUtils.isEmpty(strE)) {
                return;
            }
            JSONObject jSONObjectB = pg.b();
            pg.a(jSONObjectB, "start_id", startID);
            pg.a(jSONObjectB, "app_id", strE);
            pg.a(jSONObjectB, "custom_id", m0.e());
            JSONObject jSONObjectB2 = pg.b();
            pg.a(jSONObjectB2, "user_id", c1150vA.w());
            pg.a(jSONObjectB2, ATAdConst.KEY.USER_CUSTOM_DATA, c1150vA.t());
            C1142n c1142n = (C1142n) C1143o.a().b(this.f15668a);
            ac acVarB = c1142n != null ? c1142n.b() : null;
            if (acVarB != null) {
                pg.a(jSONObjectB2, "oaid", acVarB.getOAID());
            }
            pg.a(jSONObjectB2, "said", m0.a(this.f15668a));
            pg.a(jSONObjectB2, "lmt", (c1150vA.d() ? 1 : 0) + "");
            JSONObject jSONObjectB3 = pg.b();
            pg.a(jSONObjectB3, com.umeng.analytics.pro.cl.f49059n, m0.c());
            pg.a(jSONObjectB, com.umeng.analytics.pro.be.f48810m, jSONObjectB2);
            pg.a(jSONObjectB, "sdk", jSONObjectB3);
            Analyse2ConfigModel analyse2ConfigModel = configResponseModel.getAnalyse2ConfigModel();
            pg.a(jSONObjectB, "logStrategy", analyse2ConfigModel != null ? analyse2ConfigModel.asJsonObject() : pg.b());
            this.f15669b.a(g3.c(jSONObjectB.toString()));
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(w7 w7Var, InitTraceModel initTraceModel) throws IllegalAccessException, JSONException, SecurityException, IllegalArgumentException {
        Map<String, String> macrosReplaceMap = k0.a(this.f15668a, w7Var, initTraceModel).getMacrosReplaceMap();
        if (macrosReplaceMap != null) {
            JSONObject jSONObjectB = pg.b();
            pg.a(jSONObjectB, "event_id", macrosReplaceMap.get("__EVENT_ID__"));
            pg.a(jSONObjectB, "event_code", macrosReplaceMap.get("__EVENT_CODE__"));
            pg.a(jSONObjectB, "event_time", macrosReplaceMap.get("__EVENT_TIME__"));
            pg.a(jSONObjectB, "cost_time", macrosReplaceMap.get("__COST_TIME__"));
            pg.a(jSONObjectB, "error_code", macrosReplaceMap.get("__AD_ERROR_CODE__"));
            pg.a(jSONObjectB, "error_info", macrosReplaceMap.get("__AD_ERROR_INFO__"));
            this.f15669b.b(g3.c(jSONObjectB.toString()), this.f15670c, m0.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(w7 w7Var, AdTraceModel adTraceModel) throws IllegalAccessException, JSONException, SecurityException, IllegalArgumentException {
        Map<String, String> macrosReplaceMap = k0.a(this.f15668a, w7Var, adTraceModel).getMacrosReplaceMap();
        if (macrosReplaceMap != null) {
            JSONArray jSONArrayA = C1134f.a(this.f15668a).a();
            JSONObject jSONObjectB = pg.b();
            pg.a(jSONObjectB, "event_id", macrosReplaceMap.get("__EVENT_ID__"));
            pg.a(jSONObjectB, "event_code", macrosReplaceMap.get("__EVENT_CODE__"));
            pg.a(jSONObjectB, "event_time", macrosReplaceMap.get("__EVENT_TIME__"));
            pg.a(jSONObjectB, "cost_time", macrosReplaceMap.get("__COST_TIME__"));
            pg.a(jSONObjectB, "error_code", macrosReplaceMap.get("__AD_ERROR_CODE__"));
            pg.a(jSONObjectB, "error_info", macrosReplaceMap.get("__AD_ERROR_INFO__"));
            pg.a(jSONObjectB, "beta_hits", jSONArrayA);
            pg.a(jSONObjectB, "dsp_id", macrosReplaceMap.get("__DSP_ID__"));
            pg.a(jSONObjectB, DeepLinkPresetEvent.UMEventParamOrderId, macrosReplaceMap.get("__ORDER_ID__"));
            pg.a(jSONObjectB, "creative_id", macrosReplaceMap.get("__CREATIVE_ID__"));
            pg.a(jSONObjectB, "material_id", macrosReplaceMap.get("__MATERIAL_ID__"));
            pg.a(jSONObjectB, "scheme_id", macrosReplaceMap.get("__ADN_RENDER_ID__"));
            pg.a(jSONObjectB, "click_type", macrosReplaceMap.get("__CLICK_TYPE__"));
            pg.a(jSONObjectB, "ecpm", macrosReplaceMap.get("__PRICE__"));
            JSONObject jSONObjectB2 = pg.b();
            pg.a(jSONObjectB2, "space_id", macrosReplaceMap.get("__SPACE_ID__"));
            pg.a(jSONObjectB2, "session_id", macrosReplaceMap.get("__SESSION_ID__"));
            pg.a(jSONObjectB2, "cache_session_id", macrosReplaceMap.get("__CACHE_SESSION_ID__"));
            pg.a(jSONObjectB2, "ad_type", macrosReplaceMap.get("__AD_TYPE__"));
            pg.a(jSONObjectB2, DeepLinkPresetEvent.UMEventParamCurrency, macrosReplaceMap.get("__CURRENCY__"));
            pg.a(jSONObjectB2, "custom_data", macrosReplaceMap.get("__USER_CUSTOM_DATA__"));
            pg.a(jSONObjectB2, "time_out", macrosReplaceMap.get("__MAX_WAIT_TIME__"));
            pg.a(jSONObjectB2, "quantity", macrosReplaceMap.get("__QUANTITY__"));
            pg.a(jSONObjectB, "asnp", jSONObjectB2);
            this.f15669b.b(g3.c(jSONObjectB.toString()), this.f15670c, m0.e());
        }
    }

    public void a(long j2, long j3, TimeUnit timeUnit) {
        ye yeVar = this.f15669b;
        if (yeVar != null) {
            yeVar.a(j2, j3, timeUnit, m0.e());
        }
    }

    @Override // com.beizi.fusion.s9
    public void a(final w7 w7Var, final InitTraceModel initTraceModel) {
        if (this.f15669b != null) {
            ((hb) fn.a().b(this.f15668a)).d(new Runnable() { // from class: com.beizi.fusion.O
                @Override // java.lang.Runnable
                public final void run() throws IllegalAccessException, JSONException, SecurityException, IllegalArgumentException {
                    this.f12546b.b(w7Var, initTraceModel);
                }
            });
        }
    }

    @Override // com.beizi.fusion.s9
    public void a(final w7 w7Var, final AdTraceModel adTraceModel) {
        if (this.f15669b != null) {
            ((hb) fn.a().b(this.f15668a)).d(new Runnable() { // from class: com.beizi.fusion.N
                @Override // java.lang.Runnable
                public final void run() throws IllegalAccessException, JSONException, SecurityException, IllegalArgumentException {
                    this.f12541b.b(w7Var, adTraceModel);
                }
            });
        }
    }
}
