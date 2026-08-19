package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.local.AppInstallModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.apps.AppsModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.apps.pkg.PkgModel;
import com.beizi.fusion.asnp.common.analyse.model.IBaseEventReportModel;
import com.beizi.fusion.kd;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c3 extends jb {

    public static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final Context f13211a;

        /* renamed from: b, reason: collision with root package name */
        private final AppsModel f13212b;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            private final AppsModel f13213a;

            /* renamed from: com.beizi.fusion.c3$b$a$a, reason: collision with other inner class name */
            public class C0154a implements rb {
                public C0154a() {
                }

                @Override // com.beizi.fusion.rb
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public boolean fetch(AppInstallModel appInstallModel, String str) {
                    return appInstallModel != null && appInstallModel.getLinkId().equals(str);
                }
            }

            private List a(List list, List list2) {
                if (list == null || list.isEmpty()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    PkgModel pkgModel = (PkgModel) it.next();
                    AppInstallModel appInstallModel = (AppInstallModel) l5.a(list2, pkgModel.getLinkID(), new C0154a());
                    if (appInstallModel == null) {
                        appInstallModel = new AppInstallModel();
                        appInstallModel.setLinkId(pkgModel.getLinkID());
                        appInstallModel.setUpdateTime(System.currentTimeMillis());
                        appInstallModel.setInstall(al.c(b.this.f13211a, pkgModel.getLink()));
                    }
                    arrayList.add(appInstallModel);
                }
                return arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                List<PkgModel> pkgModelList;
                AppsModel appsModel = this.f13213a;
                if (appsModel == null || (pkgModelList = appsModel.getPkgModelList()) == null || pkgModelList.isEmpty()) {
                    return;
                }
                int taskReport = this.f13213a.getTaskReport();
                List listA = b.this.a();
                if (taskReport == 1) {
                    a(a(pkgModelList, listA));
                } else if (taskReport == 2) {
                    a(b.this.a(a(pkgModelList, listA), listA));
                } else {
                    if (taskReport != 999) {
                        return;
                    }
                    a(this.f13213a, a(pkgModelList, listA));
                }
            }

            private a(AppsModel appsModel) {
                this.f13213a = appsModel;
            }

            private void a(List list) {
                p0.a(b.this.f13211a, p0.a(), "appInstall", qo.a(list));
                ((C1142n) C1143o.a().b(b.this.f13211a)).a(list);
            }

            private void a(AppsModel appsModel, List list) {
                String strA;
                if (list == null || list.isEmpty()) {
                    return;
                }
                IBaseEventReportModel iBaseEventReportModelA = k0.a(b.this.f13211a, w7.EVENT_REPORT_APP_INSTALLS_CODE, qo.a(qo.a(list, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)));
                String macros = appsModel.getMacros();
                if (!TextUtils.isEmpty(macros)) {
                    strA = ul.a(macros, iBaseEventReportModelA.getMacrosReplaceMap());
                } else {
                    strA = "";
                }
                String strB = ((kd) gh.a().b(b.this.f13211a)).b(strA, "101,1001", kd.a.AS_LAST_OR_FIRST, false);
                String reportUrl = appsModel.getReportUrl();
                if (TextUtils.isEmpty(reportUrl) || TextUtils.isEmpty(strA)) {
                    return;
                }
                new an(b.this.f13211a, true).a(reportUrl, strB, (ua) null);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            AppsModel appsModel = this.f13212b;
            if (appsModel != null) {
                a(appsModel);
            }
        }

        private b(Context context, AppsModel appsModel) {
            this.f13211a = context.getApplicationContext();
            this.f13212b = appsModel;
        }

        private void a(AppsModel appsModel) {
            if (appsModel != null) {
                int delay = appsModel.getDelay();
                hb hbVar = (hb) fn.a().b(this.f13211a);
                if (hbVar != null) {
                    hbVar.a(new a(appsModel), delay, TimeUnit.MILLISECONDS);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List a() {
            Set setC = p0.c(this.f13211a, p0.a(), "appInstall");
            if (setC == null || setC.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long jA = n6.a(7);
            Iterator it = setC.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectC = pg.c((String) it.next());
                if (jSONObjectC != null) {
                    AppInstallModel appInstallModel = new AppInstallModel(jSONObjectC);
                    long updateTime = appInstallModel.getUpdateTime();
                    if (updateTime > 0 && updateTime > jA) {
                        arrayList.add(appInstallModel);
                    }
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List a(List list, List list2) {
            if (list == null || list.isEmpty()) {
                return list2;
            }
            HashSet hashSet = new HashSet();
            hashSet.addAll(list);
            hashSet.addAll(list2);
            return new ArrayList(hashSet);
        }
    }

    public c3(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.jb
    public void a(ConfigResponseModel configResponseModel, C1135g.a aVar) {
        AppsModel appsModel;
        hb hbVar;
        if (configResponseModel == null || configResponseModel.getStatistics() == null || (appsModel = configResponseModel.getStatistics().getAppsModel()) == null || (hbVar = (hb) fn.a().b(this.f14656a)) == null) {
            return;
        }
        hbVar.a(new b(this.f14656a, appsModel));
    }
}
