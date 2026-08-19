package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AMPSExtraLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.ASNPExtraLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseSimpleLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.init.AnalyseCrashModel;
import com.beizi.fusion.asnp.common.analyse2.base.model.init.AnalyseEventModel;
import com.beizi.fusion.asnp.common.analyse2.base.model.init.AnalyseInitConfigModel;
import com.beizi.fusion.asnp.common.analyse2.base.model.init.AnalyseLogStrategyModel;
import com.beizi.fusion.asnp.common.v2.crash.ScopeCrashLog;
import com.beizi.fusion.o2;
import com.beizi.fusion.r2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class v7 implements ye {

    /* renamed from: a, reason: collision with root package name */
    private final q2 f16640a;

    /* renamed from: e, reason: collision with root package name */
    private final Context f16644e;

    /* renamed from: f, reason: collision with root package name */
    private final la f16645f;

    /* renamed from: g, reason: collision with root package name */
    private b f16646g;

    /* renamed from: d, reason: collision with root package name */
    private final Map f16643d = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Map f16641b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private final Map f16642c = new HashMap();

    public static class b extends de {
        public b(Runnable runnable) {
            super(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j2, long j3, TimeUnit timeUnit) {
            a(j2, j3, timeUnit);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            c();
        }
    }

    public class c implements o2.c {

        public class a implements r2.b {
            public a() {
            }

            @Override // com.beizi.fusion.r2.b
            public void a() {
                v7.d(v7.this);
            }
        }

        private c() {
        }

        @Override // com.beizi.fusion.o2.c
        public void a(List list, AnalyseEventModel analyseEventModel, String str, String str2) {
            hb hbVar = (hb) fn.a().b(v7.this.f16644e);
            r2 r2Var = new r2(v7.this.f16644e, v7.this.f16645f, v7.this.f16640a);
            r2Var.a(analyseEventModel.e(), str2, analyseEventModel.a(), str);
            r2Var.d(list);
            r2Var.a(new a());
            hbVar.d(r2Var);
        }
    }

    public v7(Context context) {
        this.f16644e = context;
        this.f16645f = new n2(context);
        this.f16640a = new q2(context);
    }

    public static /* synthetic */ xe d(v7 v7Var) {
        v7Var.getClass();
        return null;
    }

    @Override // com.beizi.fusion.ye
    public void a(String str) {
        AnalyseLogStrategyModel analyseLogStrategyModelB;
        synchronized (v7.class) {
            try {
                String strB = g3.b(str);
                if (!TextUtils.isEmpty(strB)) {
                    AnalyseInitConfigModel analyseInitConfigModel = new AnalyseInitConfigModel(pg.c(strB));
                    if (!analyseInitConfigModel.hasParseException() && (analyseLogStrategyModelB = analyseInitConfigModel.b()) != null) {
                        String version = analyseLogStrategyModelB.getVersion();
                        if (!TextUtils.isEmpty(version)) {
                            this.f16642c.put(version, analyseInitConfigModel);
                            List eventModels = analyseLogStrategyModelB.getEventModels();
                            if (eventModels != null && !eventModels.isEmpty() && !this.f16641b.containsKey(version)) {
                                p2 p2Var = new p2(version, analyseLogStrategyModelB.a(), analyseInitConfigModel.a(), eventModels, new c());
                                rm.a("EventLoggerImpl2", "记录上报队列 tag: " + version);
                                this.f16641b.put(version, p2Var);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized k2 b(String str) {
        AnalyseInitConfigModel analyseInitConfigModel;
        if (TextUtils.isEmpty(str) || !this.f16642c.containsKey(str) || (analyseInitConfigModel = (AnalyseInitConfigModel) this.f16642c.get(str)) == null) {
            return null;
        }
        return analyseInitConfigModel.a(this.f16644e, this.f16643d);
    }

    @Override // com.beizi.fusion.ye
    public void b(String str, String str2, String str3) {
        AnalyseSimpleLog analyseSimpleLog;
        p2 p2Var;
        synchronized (v7.class) {
            try {
                JSONObject jSONObjectC = pg.c(g3.b(str));
                if (jSONObjectC == null) {
                    analyseSimpleLog = null;
                } else if (jSONObjectC.has("amps")) {
                    analyseSimpleLog = new AMPSExtraLog(jSONObjectC);
                } else if (jSONObjectC.has("asnp")) {
                    analyseSimpleLog = new ASNPExtraLog(jSONObjectC);
                } else {
                    analyseSimpleLog = new AnalyseSimpleLog(jSONObjectC);
                }
                if (analyseSimpleLog != null && this.f16641b.containsKey(str2) && (p2Var = (p2) this.f16641b.get(str2)) != null) {
                    p2Var.a(analyseSimpleLog);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.beizi.fusion.ye
    public void a(long j2, long j3, TimeUnit timeUnit, String str) {
        rm.a("EventLoggerImpl2", "上报历史日志...");
        b bVar = this.f16646g;
        if (bVar != null) {
            bVar.d();
        } else {
            this.f16646g = new b(new l2(this.f16644e, this.f16645f, this.f16640a));
        }
        this.f16646g.b(j2, j3, timeUnit);
    }

    @Override // com.beizi.fusion.ye
    public void a(String str, String str2, String str3) {
        AnalyseInitConfigModel analyseInitConfigModel;
        AnalyseLogStrategyModel analyseLogStrategyModelB;
        AnalyseCrashModel analyseCrashModelB;
        synchronized (v7.class) {
            JSONArray jSONArrayB = pg.b(g3.b(str));
            if (jSONArrayB != null && jSONArrayB.length() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArrayB.length(); i2++) {
                    try {
                        JSONObject jSONObject = jSONArrayB.getJSONObject(i2);
                        arrayList.add(new ScopeCrashLog(pg.d(jSONObject, "affiliated"), pg.d(jSONObject, "exception"), pg.d(jSONObject, "time")));
                    } catch (JSONException e2) {
                        rm.a(e2);
                    }
                }
                if (this.f16642c.containsKey(str2) && (analyseInitConfigModel = (AnalyseInitConfigModel) this.f16642c.get(str2)) != null && (analyseLogStrategyModelB = analyseInitConfigModel.b()) != null && (analyseCrashModelB = analyseLogStrategyModelB.b()) != null) {
                    String url = analyseCrashModelB.getUrl();
                    String strA = analyseLogStrategyModelB.a();
                    if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(strA)) {
                        hb hbVar = (hb) fn.a().b(this.f16644e);
                        r2 r2Var = new r2(this.f16644e, this.f16645f, this.f16640a);
                        r2Var.a(url, strA, null, str2);
                        r2Var.b(arrayList);
                        hbVar.d(r2Var);
                    }
                }
            }
        }
    }
}
