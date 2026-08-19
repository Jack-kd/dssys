package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.common.analyse2.db.AnalyseEventDBModel;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class r2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final la f15853a;

    /* renamed from: b, reason: collision with root package name */
    private final q2 f15854b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f15855c;

    /* renamed from: d, reason: collision with root package name */
    private List f15856d;

    /* renamed from: e, reason: collision with root package name */
    private List f15857e;

    /* renamed from: f, reason: collision with root package name */
    private String f15858f;

    /* renamed from: g, reason: collision with root package name */
    private String f15859g;

    /* renamed from: h, reason: collision with root package name */
    private String f15860h;

    /* renamed from: i, reason: collision with root package name */
    private List f15861i;

    /* renamed from: j, reason: collision with root package name */
    private b f15862j;

    /* renamed from: k, reason: collision with root package name */
    private List f15863k;

    public interface b {
        void a();
    }

    public class c extends b1 {

        /* renamed from: a, reason: collision with root package name */
        private AnalyseEventDBModel f15864a;

        private void a() {
            AnalyseEventDBModel analyseEventDBModel;
            if (r2.this.f15853a == null || (analyseEventDBModel = this.f15864a) == null || analyseEventDBModel.f()) {
                return;
            }
            this.f15864a.b();
            r2.this.f15853a.a(this.f15864a);
        }

        private void b(ta taVar) {
            if (taVar == null || taVar.a() != 200 || !c(taVar) || r2.this.f15862j == null) {
                return;
            }
            r2.this.f15862j.a();
        }

        private boolean c(ta taVar) {
            JSONObject jSONObjectC;
            JSONObject jSONObjectB;
            String strB = taVar.b();
            return (TextUtils.isEmpty(strB) || (jSONObjectC = pg.c(strB)) == null || pg.a(jSONObjectC, "code", 0) != 200 || (jSONObjectB = pg.b(jSONObjectC, "data")) == null || 1 != pg.a(jSONObjectB, "isUpdate", 0)) ? false : true;
        }

        private c(AnalyseEventDBModel analyseEventDBModel) {
            this.f15864a = analyseEventDBModel;
        }

        @Override // com.beizi.fusion.b1
        public void a(ta taVar) {
            AnalyseEventDBModel analyseEventDBModel = this.f15864a;
            if (analyseEventDBModel != null && analyseEventDBModel.f()) {
                r2.this.f15853a.a(AnalyseEventDBModel.class, this.f15864a.getPrimaryID());
            }
            b(taVar);
            this.f15864a = null;
        }

        @Override // com.beizi.fusion.ua
        public void a(pc pcVar) {
            a();
            this.f15864a = null;
        }
    }

    public r2(Context context, la laVar, q2 q2Var) {
        this.f15853a = laVar;
        this.f15854b = q2Var;
        this.f15855c = context.getApplicationContext();
    }

    public void c(List list) {
        this.f15857e = list;
    }

    public void d(List list) {
        this.f15856d = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        k2 k2VarB;
        AnalyseEventDBModel analyseEventDBModelB;
        AnalyseEventDBModel analyseEventDBModelA;
        if (a(this.f15857e)) {
            Iterator it = this.f15857e.iterator();
            while (it.hasNext()) {
                a((AnalyseEventDBModel) it.next());
            }
        }
        if (a(this.f15856d) || a(this.f15861i)) {
            ye yeVar = (ye) bn.a().b(this.f15855c);
            if (yeVar instanceof v7) {
                k2VarB = ((v7) yeVar).b(this.f15860h);
                List list = this.f15863k;
                String[] strArr = list != null ? (String[]) list.toArray(new String[0]) : new String[0];
                if (k2VarB != null) {
                    k2VarB.a(strArr);
                }
            } else {
                k2VarB = null;
            }
            if (k2VarB != null) {
                if (a(this.f15861i) && (analyseEventDBModelA = m2.a(this.f15855c, this.f15858f, this.f15859g, k2VarB, this.f15861i)) != null) {
                    a(analyseEventDBModelA);
                }
                if (!a(this.f15856d) || (analyseEventDBModelB = m2.b(this.f15855c, this.f15858f, this.f15859g, k2VarB, this.f15856d)) == null) {
                    return;
                }
                a(analyseEventDBModelB);
            }
        }
    }

    public void a(String str, String str2, List list, String str3) {
        this.f15858f = str;
        this.f15859g = str2;
        this.f15860h = str3;
        this.f15863k = list;
    }

    public void b(List list) {
        this.f15861i = list;
    }

    public void a(b bVar) {
        this.f15862j = bVar;
    }

    private boolean a(List list) {
        return (list == null || list.isEmpty()) ? false : true;
    }

    private void a(AnalyseEventDBModel analyseEventDBModel) {
        if (analyseEventDBModel != null) {
            String strE = analyseEventDBModel.e();
            String strC = analyseEventDBModel.c();
            c cVar = new c(analyseEventDBModel);
            byte[] bArrD = analyseEventDBModel.d();
            if (bArrD != null) {
                this.f15854b.a(strE, strC, bArrD, cVar);
            }
        }
    }
}
