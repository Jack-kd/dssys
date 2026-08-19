package com.beizi.fusion;

import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseAdCommon;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseAdEventLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseSimpleLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.init.AnalyseEventModel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public final class o2 {

    /* renamed from: a, reason: collision with root package name */
    private final String f15390a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15391b;

    /* renamed from: c, reason: collision with root package name */
    private final String f15392c;

    /* renamed from: d, reason: collision with root package name */
    private AnalyseEventModel f15393d;

    /* renamed from: e, reason: collision with root package name */
    private o2 f15394e;

    /* renamed from: f, reason: collision with root package name */
    private b f15395f;

    /* renamed from: g, reason: collision with root package name */
    private c f15396g;

    /* renamed from: h, reason: collision with root package name */
    private final d f15397h = new a();

    public class a implements d {
        public a() {
        }

        @Override // com.beizi.fusion.o2.d
        public void a(List list) {
            o2 o2Var = o2.this;
            o2Var.a(list, o2Var.f15393d, o2.this.f15390a, o2.this.f15391b);
        }
    }

    public static final class b extends CopyOnWriteArrayList {

        /* renamed from: a, reason: collision with root package name */
        private final int f15399a;

        /* renamed from: b, reason: collision with root package name */
        private final a f15400b;

        /* renamed from: c, reason: collision with root package name */
        private d f15401c;

        public class a extends sb {
            public a(long j2) {
                super(j2);
            }

            @Override // com.beizi.fusion.sb
            public void b() {
                synchronized (b.this) {
                    b.this.b();
                }
            }
        }

        public b(int i2, long j2) {
            this.f15399a = i2 <= 0 ? 1 : i2;
            this.f15400b = new a(j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f15400b.a();
            a(a());
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        public boolean add(Object obj) {
            boolean zAdd;
            synchronized (this) {
                try {
                    zAdd = super.add(obj);
                    if (zAdd && size() == 1) {
                        this.f15400b.c();
                    }
                    if (zAdd && size() == this.f15399a) {
                        b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zAdd;
        }

        public void a(d dVar) {
            this.f15401c = dVar;
        }

        private void a(List list) {
            d dVar = this.f15401c;
            if (dVar != null) {
                dVar.a(list);
            }
        }

        private List a() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this);
                clear();
            }
            return arrayList;
        }
    }

    public interface c {
        void a(List list, AnalyseEventModel analyseEventModel, String str, String str2);
    }

    public interface d {
        void a(List list);
    }

    public o2(String str, String str2, String str3) {
        this.f15390a = str;
        this.f15391b = str2;
        this.f15392c = str3;
    }

    public void d(o2 o2Var) {
        this.f15394e = o2Var;
    }

    private void b(AnalyseSimpleLog analyseSimpleLog) {
        o2 o2Var = this.f15394e;
        if (o2Var != null) {
            o2Var.c(analyseSimpleLog);
        }
    }

    public void c(AnalyseSimpleLog analyseSimpleLog) {
        this.f15395f.a(this.f15397h);
        if (!a(analyseSimpleLog)) {
            b(analyseSimpleLog);
            return;
        }
        if (analyseSimpleLog != null) {
            analyseSimpleLog.a(this.f15393d.c() + "");
        }
        this.f15395f.add(analyseSimpleLog);
    }

    public void a(c cVar) {
        this.f15396g = cVar;
    }

    public void a(AnalyseEventModel analyseEventModel) throws NumberFormatException {
        long j2;
        this.f15393d = analyseEventModel;
        try {
            j2 = Long.parseLong(analyseEventModel.d());
        } catch (NumberFormatException unused) {
            j2 = 0;
        }
        this.f15395f = new b(analyseEventModel.getCount(), j2);
    }

    private boolean a(AnalyseSimpleLog analyseSimpleLog) {
        AnalyseAdCommon analyseAdCommonB;
        AnalyseEventModel analyseEventModel = this.f15393d;
        if (analyseEventModel == null || analyseEventModel.b() == null || this.f15393d.b().isEmpty() || !this.f15393d.b().contains(analyseSimpleLog.getEventCode())) {
            return false;
        }
        int iC = this.f15393d.c();
        String strB = this.f15392c;
        if ((analyseSimpleLog instanceof AnalyseAdEventLog) && (analyseAdCommonB = ((AnalyseAdEventLog) analyseSimpleLog).b()) != null) {
            strB = analyseAdCommonB.b();
        }
        return pl.a(iC, strB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List list, AnalyseEventModel analyseEventModel, String str, String str2) {
        c cVar = this.f15396g;
        if (cVar != null) {
            cVar.a(list, analyseEventModel, str, str2);
        }
    }
}
