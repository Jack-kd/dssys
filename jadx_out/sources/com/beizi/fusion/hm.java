package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.RewardPropModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.EndCardPageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.PrimarySkipCtrlModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.PrivilegePageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.RetainPageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.reward.ctrl.RewardConditionModel;
import com.beizi.fusion.d6;
import com.beizi.fusion.ii;
import com.beizi.fusion.jc;
import com.beizi.fusion.se;
import com.beizi.fusion.te;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public class hm extends ii {

    /* renamed from: A, reason: collision with root package name */
    private final Map f14335A;

    /* renamed from: B, reason: collision with root package name */
    private c f14336B;

    public class b extends ii.b implements vc {
        private b() {
            super();
        }

        @Override // com.beizi.fusion.ii.b, com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void f() {
            super.f();
        }

        @Override // com.beizi.fusion.vc
        public void h() {
        }

        @Override // com.beizi.fusion.vc
        public void i() {
            hm.this.u();
        }

        @Override // com.beizi.fusion.vc
        public void j() {
        }

        @Override // com.beizi.fusion.vc
        public void k() {
        }

        @Override // com.beizi.fusion.ii.b, com.beizi.fusion.d6.b, com.beizi.fusion.vd
        public void onAdClicked() {
            super.onAdClicked();
            if (hm.this.f14336B != null) {
                hm.this.f14336B.v();
                hm.this.f14336B.a(te.a.SELECTED);
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void onAdClosed() {
            super.onAdClosed();
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final RewardPropModel f14338a;

        /* renamed from: b, reason: collision with root package name */
        private int f14339b;

        /* renamed from: c, reason: collision with root package name */
        private int f14340c;

        /* renamed from: d, reason: collision with root package name */
        private final Map f14341d;

        /* renamed from: e, reason: collision with root package name */
        private final List f14342e;

        /* renamed from: f, reason: collision with root package name */
        private ScopeExpressContainer f14343f;

        /* renamed from: g, reason: collision with root package name */
        private long f14344g;

        /* renamed from: h, reason: collision with root package name */
        private long f14345h;

        /* renamed from: i, reason: collision with root package name */
        private final re f14346i;

        /* renamed from: j, reason: collision with root package name */
        private bl f14347j;

        /* renamed from: k, reason: collision with root package name */
        private final int f14348k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f14349l;

        /* renamed from: m, reason: collision with root package name */
        private boolean f14350m;

        /* renamed from: n, reason: collision with root package name */
        private boolean f14351n;

        /* renamed from: o, reason: collision with root package name */
        private String f14352o;

        /* renamed from: p, reason: collision with root package name */
        private final CopyOnWriteArraySet f14353p;

        public class a extends bl {

            /* renamed from: j, reason: collision with root package name */
            final /* synthetic */ long f14354j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(long j2, long j3, long j4) {
                super(j2, j3);
                this.f14354j = j4;
            }

            @Override // com.beizi.fusion.bl
            public void a(long j2) {
                rd rdVar = (rd) c.this.f14341d.get("PRIVILEGE");
                if (rdVar != null) {
                    Iterator it = ScopeExpressContainer.d.d((ScopeExpressContainer) rdVar.a()).iterator();
                    while (it.hasNext()) {
                        ((gf) it.next()).updateTextWithTimer("__AUTO_CLOSE__", ((this.f14354j - j2) / 1000) + "");
                    }
                }
            }

            @Override // com.beizi.fusion.bl
            public void c() {
            }

            @Override // com.beizi.fusion.bl
            public void d() {
                c.this.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s() {
            ScopeExpressContainer scopeExpressContainer;
            View viewA;
            ScopeExpressContainer scopeExpressContainer2;
            if ("ENDCARD".equalsIgnoreCase(this.f14352o)) {
                return;
            }
            rd rdVarA = a("ENDCARD");
            if (rdVarA != null && rdVarA.j() && (viewA = rdVarA.a()) != null && (scopeExpressContainer2 = this.f14343f) != null) {
                scopeExpressContainer2.addView(viewA);
            }
            RewardPropModel rewardPropModel = this.f14338a;
            if (rewardPropModel == null || rewardPropModel.getEndCardType() != 1 || (scopeExpressContainer = this.f14343f) == null) {
                return;
            }
            scopeExpressContainer.onActivityPause();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t() {
            Map map = this.f14341d;
            if (map == null || !map.containsKey("ENDCARD")) {
                return;
            }
            rd rdVar = (rd) this.f14341d.get("ENDCARD");
            if (this.f14338a.getEndCardType() == 2 && (rdVar instanceof im)) {
                ((im) rdVar).m();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void u() {
            rd rdVarA;
            View viewA;
            ScopeExpressContainer scopeExpressContainer;
            if ("RETAIN".equalsIgnoreCase(this.f14352o) || (rdVarA = a("RETAIN")) == null || !rdVarA.j() || (viewA = rdVarA.a()) == null || (scopeExpressContainer = this.f14343f) == null) {
                return;
            }
            scopeExpressContainer.addView(viewA);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v() {
            this.f14339b++;
            w();
            b();
        }

        private void w() {
            rd rdVar = (rd) this.f14341d.get("PRIVILEGE");
            if (rdVar != null) {
                Iterator it = ScopeExpressContainer.d.d((ScopeExpressContainer) rdVar.a()).iterator();
                while (it.hasNext()) {
                    ((gf) it.next()).updateTextWithTimer("__CLICK_COUNT__", this.f14339b + ServiceReference.DELIMITER + this.f14348k);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean x() {
            return this.f14350m;
        }

        private c(RewardPropModel rewardPropModel) {
            RewardConditionModel conditionModel;
            int count = 0;
            this.f14339b = 0;
            this.f14340c = 0;
            this.f14349l = true;
            this.f14350m = true;
            this.f14351n = false;
            this.f14353p = new CopyOnWriteArraySet();
            this.f14338a = rewardPropModel;
            if (rewardPropModel != null && (conditionModel = rewardPropModel.getConditionModel()) != null) {
                count = conditionModel.getCount();
            }
            this.f14348k = count;
            this.f14341d = new HashMap(4);
            this.f14342e = new ArrayList(4);
            this.f14346i = new re();
        }

        private boolean d() {
            RewardConditionModel conditionModel = this.f14338a.getConditionModel();
            if (conditionModel == null) {
                return false;
            }
            int i2 = this.f14348k;
            return (i2 > 0 && this.f14339b >= i2) || (!this.f14351n && conditionModel.getPeriod() > 0 && this.f14340c >= conditionModel.getPeriod()) || (conditionModel.getBrowse() > 0 && (this.f14345h > ((long) conditionModel.getBrowse()) ? 1 : (this.f14345h == ((long) conditionModel.getBrowse()) ? 0 : -1)) >= 0) || (conditionModel.getCount() > 0 && this.f14339b >= conditionModel.getCount());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            rd rdVarA;
            View viewA;
            if (this.f14343f == null || (rdVarA = a("PRIVILEGE")) == null || (viewA = rdVarA.a()) == null) {
                return;
            }
            this.f14353p.remove("PRIVILEGE");
            this.f14343f.removeView(viewA);
        }

        private jc.a f() {
            EndCardPageModel endCardModel = this.f14338a.getEndCardModel();
            if (endCardModel != null) {
                return new jc.a(endCardModel.getAction(), endCardModel.getProbability(), this.f14338a.getForceEndCard() == 1, false);
            }
            return jc.a.f14659f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public jc.a g() {
            PrimarySkipCtrlModel primarySkipCtrlModel = this.f14338a.getPrimarySkipCtrlModel();
            if (primarySkipCtrlModel != null) {
                return new jc.a(primarySkipCtrlModel.getAction(), primarySkipCtrlModel.getProbability(), this.f14338a.getForceEndCard() == 1, true);
            }
            return jc.a.f14660g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int h() {
            if (this.f14338a.getPrimarySkipCtrlModel() != null) {
                return this.f14338a.getPrimarySkipCtrlModel().getDelay();
            }
            return 0;
        }

        private jc.a i() {
            PrivilegePageModel privilegePageModel = this.f14338a.getPrivilegePageModel();
            if (privilegePageModel != null) {
                return new jc.a(privilegePageModel.getAction(), privilegePageModel.getProbability(), this.f14338a.getForceEndCard() == 1, false);
            }
            return jc.a.f14659f;
        }

        private jc.a j() {
            RetainPageModel retainPageModel = this.f14338a.getRetainPageModel();
            if (retainPageModel != null) {
                return new jc.a(retainPageModel.getAction(), retainPageModel.getProbability(), this.f14338a.getForceEndCard() == 1, false);
            }
            return jc.a.f14659f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k() {
            ScopeExpressContainer scopeExpressContainer = this.f14343f;
            if (scopeExpressContainer == null || this.f14338a == null) {
                return;
            }
            List<gf> listD = ScopeExpressContainer.d.d(scopeExpressContainer);
            int period = this.f14338a.getConditionModel() != null ? this.f14338a.getConditionModel().getPeriod() : 0;
            int privilegeTime = this.f14338a.getPrivilegeType() == 1 ? this.f14338a.getPrivilegeTime() : 0;
            for (gf gfVar : listD) {
                gfVar.updateTextWithTimer("__PERIOD_TIME__", (period / 1000) + "");
                gfVar.updateTextWithTimer("__CLICK_TIME__", (privilegeTime / 1000) + "秒后");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean l() {
            return "PRIMARY".equalsIgnoreCase(this.f14352o) || this.f14353p.isEmpty();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m() {
            bl blVar = this.f14347j;
            if (blVar != null) {
                blVar.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void n() {
            this.f14341d.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o() {
            this.f14351n = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p() {
            RewardPropModel rewardPropModel = this.f14338a;
            if (rewardPropModel != null && rewardPropModel.getPrivilegePageModel() != null) {
                long remain = this.f14338a.getPrivilegePageModel().getRemain();
                if (remain > 0) {
                    a aVar = new a(remain, 1000L, remain);
                    this.f14347j = aVar;
                    aVar.g();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q() {
            bl blVar = this.f14347j;
            if (blVar != null) {
                blVar.f();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            this.f14344g = System.currentTimeMillis();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            bl blVar = this.f14347j;
            if (blVar != null) {
                blVar.a();
                this.f14347j = null;
            }
        }

        private void b() {
            if (d() && x()) {
                a(te.a.FINALLY);
                this.f14350m = false;
                this.f14346i.a(se.a.REWARD_CLAIM_EVENT, null, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(long j2) {
            RewardConditionModel conditionModel;
            int browse;
            RewardPropModel rewardPropModel = this.f14338a;
            if (rewardPropModel == null || (conditionModel = rewardPropModel.getConditionModel()) == null || (browse = conditionModel.getBrowse()) <= 0) {
                return;
            }
            int i2 = browse - ((int) j2);
            rd rdVar = (rd) this.f14341d.get("PRIVILEGE");
            if (rdVar != null) {
                Iterator it = ScopeExpressContainer.d.d((ScopeExpressContainer) rdVar.a()).iterator();
                while (it.hasNext()) {
                    ((gf) it.next()).updateTextWithTimer("__BROWSE__TIME__", (i2 / 1000) + "");
                }
            }
        }

        private void d(long j2) {
            ScopeExpressContainer scopeExpressContainer;
            RewardPropModel rewardPropModel;
            rd rdVarA = a("RETAIN");
            if (rdVarA == null || rdVarA.a() == null || (scopeExpressContainer = (ScopeExpressContainer) rdVarA.a()) == null || (rewardPropModel = this.f14338a) == null) {
                return;
            }
            int period = rewardPropModel.getConditionModel() != null ? this.f14338a.getConditionModel().getPeriod() : 0;
            for (gf gfVar : ScopeExpressContainer.d.d(scopeExpressContainer)) {
                long j3 = (period - j2) / 1000;
                if (((int) j3) >= 0) {
                    gfVar.updateTextWithTimer("__RETAIN_TIME__", j3 + "");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i2) {
            if (!this.f14351n) {
                this.f14340c = i2;
            }
            long j2 = i2;
            a(j2);
            d(j2);
            b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(ScopeExpressContainer scopeExpressContainer) {
            this.f14343f = scopeExpressContainer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(te.a aVar) {
            List listC;
            if (!this.f14342e.isEmpty() && te.a.FINALLY == aVar) {
                Iterator it = this.f14342e.iterator();
                while (it.hasNext()) {
                    ((jc.b) it.next()).a(1);
                }
            }
            ArrayList arrayList = new ArrayList();
            for (rd rdVar : this.f14341d.values()) {
                if (rdVar != null && (listC = ScopeExpressContainer.d.c((ScopeExpressContainer) rdVar.a())) != null) {
                    arrayList.addAll(listC);
                }
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ((te) obj).updateTextWithStatus(aVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public jc.a b(String str) {
            if ("PRIVILEGE".equalsIgnoreCase(str)) {
                return i();
            }
            if ("RETAIN".equalsIgnoreCase(str)) {
                return j();
            }
            if ("ENDCARD".equalsIgnoreCase(str)) {
                return f();
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(String str) {
            this.f14352o = str;
            if ("PRIMARY".equalsIgnoreCase(str)) {
                return;
            }
            this.f14353p.add(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(String str) {
            this.f14353p.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j2) {
            this.f14345h += j2;
            d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(boolean z2) {
            if (z2) {
                a();
                return;
            }
            RewardPropModel rewardPropModel = this.f14338a;
            if (rewardPropModel == null || rewardPropModel.getPrivilegeType() != 1 || System.currentTimeMillis() - this.f14344g <= this.f14338a.getPrivilegeTime()) {
                return;
            }
            a();
        }

        public void a(int i2) {
            RewardPropModel rewardPropModel = this.f14338a;
            if (rewardPropModel == null || rewardPropModel.getPrivilegeType() != 2 || i2 <= this.f14338a.getPrivilegeTime() || !this.f14349l) {
                return;
            }
            this.f14349l = false;
            a();
        }

        private void a() {
            rd rdVarA;
            ScopeExpressContainer scopeExpressContainer;
            if ("PRIVILEGE".equalsIgnoreCase(this.f14352o) || !x() || (rdVarA = a("PRIVILEGE")) == null || !rdVarA.j()) {
                return;
            }
            View viewA = rdVarA.a();
            w();
            if (viewA == null || (scopeExpressContainer = this.f14343f) == null) {
                return;
            }
            scopeExpressContainer.addView(viewA);
        }

        private synchronized rd a(String str) {
            return (rd) this.f14341d.get(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void a(String str, rd rdVar) {
            try {
                if ("PRIMARY".equals(str) && (rdVar instanceof im)) {
                    this.f14346i.a(((im) rdVar).n());
                }
                this.f14341d.put(str, rdVar);
            } catch (Throwable th) {
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(jc.b bVar) {
            this.f14342e.add(bVar);
        }

        private void a(long j2) {
            RewardPropModel rewardPropModel;
            if (this.f14343f == null || (rewardPropModel = this.f14338a) == null) {
                return;
            }
            int period = rewardPropModel.getConditionModel() != null ? this.f14338a.getConditionModel().getPeriod() : 0;
            int privilegeTime = this.f14338a.getPrivilegeType() == 1 ? this.f14338a.getPrivilegeTime() : 0;
            for (gf gfVar : ScopeExpressContainer.d.d(this.f14343f)) {
                int i2 = (int) ((period - j2) / 1000);
                if (i2 > 0) {
                    gfVar.updateTextWithTimer("__PERIOD_TIME__", i2 + "");
                }
                int i3 = (int) ((privilegeTime - j2) / 1000);
                if (i3 > 0) {
                    gfVar.updateTextWithTimer("__CLICK_TIME__", i3 + "秒后");
                } else {
                    gfVar.updateTextWithTimer("__CLICK_TIME__", "");
                }
            }
        }
    }

    public class d extends ii.d implements vc {

        public class a extends jd {
            public a() {
            }

            @Override // com.beizi.fusion.jd
            public void a() {
                if (hm.this.f14336B != null) {
                    hm.this.f14336B.m();
                }
            }

            @Override // com.beizi.fusion.jd
            public void b() {
                if (hm.this.f14336B != null) {
                    hm.this.f14336B.q();
                }
            }
        }

        public class b implements ba {
            public b() {
            }

            @Override // com.beizi.fusion.ba
            public void a(long j2) {
                if (hm.this.f14336B != null) {
                    hm.this.f14336B.b(j2);
                    hm.this.f14336B.c(j2);
                }
                C1127b0.a().b().b(this);
            }
        }

        public d(String str) {
            super(str);
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void a(View view) {
            super.a(view);
            view.setClickable(true);
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void b() {
            super.b();
            if (hm.this.f14336B != null) {
                hm.this.f14336B.c(this.f14482d);
            }
            if ("PRIVILEGE".equalsIgnoreCase(this.f14482d) && hm.this.f14336B != null) {
                hm.this.f14336B.p();
                hm.this.f14336B.c(0L);
                C1127b0.a().b().b(new a());
            }
            if ("ENDCARD".equalsIgnoreCase(this.f14482d)) {
                if (hm.this.f14336B != null) {
                    hm.this.f14336B.o();
                    hm.this.f14336B.t();
                    return;
                }
                return;
            }
            View view = hm.this.f13382q;
            if (view instanceof ScopeExpressContainer) {
                ((ScopeExpressContainer) view).onActivityPause();
                ScopeExpressContainer.d.h((ScopeExpressContainer) hm.this.f13382q);
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void f() {
            super.f();
            if (hm.this.f14335A != null) {
                hm.this.f14335A.remove(this.f14482d);
            }
        }

        @Override // com.beizi.fusion.vc
        public void h() {
            if (hm.this.f14336B != null) {
                hm.this.f14336B.u();
            }
        }

        @Override // com.beizi.fusion.vc
        public void i() {
            hm.this.u();
        }

        @Override // com.beizi.fusion.vc
        public void j() {
            if (hm.this.f14336B == null || !hm.this.f14336B.x()) {
                return;
            }
            hm.this.f14336B.a(true);
        }

        @Override // com.beizi.fusion.vc
        public void k() {
            if (hm.this.f14336B != null) {
                hm.this.f14336B.s();
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.vd
        public void onAdClicked() {
            super.onAdClicked();
            if ("PRIVILEGE".equalsIgnoreCase(this.f14482d)) {
                C1127b0.a().b().a(new b());
            }
            if (hm.this.f14336B != null) {
                hm.this.f14336B.v();
                hm.this.f14336B.a(te.a.SELECTED);
                hm.this.f14336B.c();
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void onAdClosed() {
            super.onAdClosed();
            if (hm.this.f14336B != null) {
                hm.this.f14336B.d(this.f14482d);
                hm hmVar = hm.this;
                if (hmVar.f13382q == null || !hmVar.f14336B.l()) {
                    return;
                }
                ((ScopeExpressContainer) hm.this.f13382q).onActivityResume();
                ScopeExpressContainer.d.i((ScopeExpressContainer) hm.this.f13382q);
            }
        }
    }

    public hm(Context context, da daVar, EnumC1130d enumC1130d) {
        super(context, daVar, enumC1130d);
        this.f14335A = new HashMap(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        lb lbVar = this.f13383r;
        if (lbVar instanceof a1) {
            ((a1) lbVar).k();
        }
    }

    @Override // com.beizi.fusion.ii
    public zo d(td tdVar) {
        return new im(tdVar);
    }

    @Override // com.beizi.fusion.ii, com.beizi.fusion.d6
    public d6.b j() {
        return new e();
    }

    @Override // com.beizi.fusion.ii, com.beizi.fusion.d6
    public void k() {
        super.k();
        c cVar = this.f14336B;
        if (cVar != null) {
            cVar.n();
        }
        this.f14335A.clear();
    }

    @Override // com.beizi.fusion.ii
    public d6.b q() {
        return new b();
    }

    @Override // com.beizi.fusion.ii
    public void t() {
        super.t();
        Map map = this.f14335A;
        if (map == null || map.isEmpty()) {
            return;
        }
        for (rd rdVar : this.f14335A.values()) {
            if (rdVar != null) {
                rdVar.a((wd) this.f14475w.get(Integer.valueOf(rdVar.hashCode())));
            }
        }
    }

    @Override // com.beizi.fusion.ii
    public void a(td tdVar, AdItemModel adItemModel) {
        super.a(tdVar, adItemModel);
        String[] strArr = {"PRIVILEGE", "RETAIN", "ENDCARD"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str = strArr[i2];
            if (str.equals(adItemModel.getCategory())) {
                rd rdVarA = a(tdVar, adItemModel, new d(str));
                if (rdVarA instanceof im) {
                    this.f14335A.put(str, rdVarA);
                    c cVar = this.f14336B;
                    if (cVar != null) {
                        jc.a aVarB = cVar.b(str);
                        ((im) rdVarA).a(aVarB);
                        this.f14336B.a(str, rdVarA);
                        this.f14336B.a(aVarB);
                    }
                }
            }
        }
    }

    @Override // com.beizi.fusion.ii, com.beizi.fusion.d6
    public rd b(td tdVar) {
        RewardPropModel rewardPropModel;
        AdItemModel adItemModelC = tdVar.c();
        if (adItemModelC != null && (rewardPropModel = adItemModelC.getRewardPropModel()) != null) {
            this.f14336B = new c(rewardPropModel);
        }
        rd rdVarB = super.b(tdVar);
        if (rdVarB instanceof im) {
            wd wdVar = this.f13381p;
            if (wdVar instanceof vc) {
                im imVar = (im) rdVarB;
                imVar.a((vc) wdVar);
                c cVar = this.f14336B;
                if (cVar != null) {
                    jc.a aVarG = cVar.g();
                    imVar.a(aVarG);
                    this.f14336B.a("PRIMARY", rdVarB);
                    this.f14336B.a(aVarG);
                }
            }
            if (b(this.f13381p)) {
                ((im) rdVarB).a((wc) this.f13381p);
            }
        }
        return rdVarB;
    }

    @Override // com.beizi.fusion.ii
    public zo c(td tdVar) {
        return new im(tdVar);
    }

    public class e extends ii.h implements vc, wc {
        private e() {
            super();
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.wd
        public void a(View view) {
            wb wbVarB;
            super.a(view);
            if (hm.this.f14336B != null) {
                hm.this.f14336B.a((ScopeExpressContainer) hm.this.f13382q);
                hm.this.f14336B.k();
                if (hm.this.f14336B.h() >= 0 || (wbVarB = ScopeExpressContainer.d.b((ScopeExpressContainer) hm.this.f13382q)) == null) {
                    return;
                }
                wbVarB.delayExposure(hm.this.f14336B.h());
            }
        }

        @Override // com.beizi.fusion.ii.h, com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void b() {
            wb wbVarB;
            super.b();
            if (hm.this.f14336B != null) {
                hm.this.f14336B.c("PRIMARY");
                hm.this.f14336B.r();
                if (hm.this.f14336B.h() <= 0 || (wbVarB = ScopeExpressContainer.d.b((ScopeExpressContainer) hm.this.f13382q)) == null) {
                    return;
                }
                wbVarB.delayExposure(hm.this.f14336B.h());
            }
        }

        @Override // com.beizi.fusion.wc
        public void c() {
            aa aaVar = (aa) hm.this.c();
            if (aaVar instanceof ve) {
                ((ve) aaVar).c();
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.xd
        public void d() {
            if (hm.this.f14336B != null) {
                hm.this.f14336B.s();
            }
        }

        @Override // com.beizi.fusion.vc
        public void h() {
            if (hm.this.f14336B != null) {
                hm.this.f14336B.u();
            }
        }

        @Override // com.beizi.fusion.vc
        public void i() {
            hm.this.u();
        }

        @Override // com.beizi.fusion.vc
        public void j() {
            if (hm.this.f14336B == null || !hm.this.f14336B.x()) {
                return;
            }
            hm.this.f14336B.a(true);
        }

        @Override // com.beizi.fusion.vc
        public void k() {
            if (hm.this.f14336B != null) {
                hm.this.f14336B.s();
            }
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.vd
        public void onAdClicked() {
            super.onAdClicked();
            if (hm.this.f14336B != null) {
                hm.this.f14336B.a(te.a.SELECTED);
            }
            if (hm.this.f14336B != null) {
                hm.this.f14336B.a(false);
            }
        }

        @Override // com.beizi.fusion.ii.h, com.beizi.fusion.d6.b, com.beizi.fusion.ud
        public void onAdClosed() {
            super.onAdClosed();
        }

        @Override // com.beizi.fusion.d6.b, com.beizi.fusion.xd
        public void a(int i2) {
            if (hm.this.f14336B != null) {
                hm.this.f14336B.b(i2);
                hm.this.f14336B.a(i2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.beizi.fusion.ii
    public rd a(td tdVar, AdItemModel adItemModel, d6.b bVar) {
        rd rdVarA = super.a(tdVar, adItemModel, bVar);
        if ((rdVarA instanceof im) && (bVar instanceof vc)) {
            ((im) rdVarA).a((vc) bVar);
        }
        return rdVarA;
    }

    private boolean b(d6.b bVar) {
        if (bVar != null) {
            return e.class.isAssignableFrom(bVar.getClass());
        }
        return false;
    }
}
