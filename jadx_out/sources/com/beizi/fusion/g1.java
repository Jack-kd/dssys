package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.LinkModel;
import com.beizi.fusion.z9;
import com.beizi.fusion.zf;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class g1 extends j1 {

    public class b extends jd {

        /* renamed from: a, reason: collision with root package name */
        private final c f13918a;

        /* renamed from: b, reason: collision with root package name */
        private WeakReference f13919b;

        @Override // com.beizi.fusion.jd
        public void a(Activity activity) {
            this.f13919b = new WeakReference(activity);
        }

        @Override // com.beizi.fusion.jd
        public void b(Activity activity) {
            C1127b0.a().b().a(this);
            WeakReference weakReference = this.f13919b;
            if (weakReference == null || weakReference.get() != activity) {
                return;
            }
            this.f13918a.g();
        }

        @Override // com.beizi.fusion.jd
        public void d(Activity activity) {
            WeakReference weakReference = this.f13919b;
            if (weakReference == null || weakReference.get() != activity) {
                return;
            }
            this.f13919b = null;
            C1127b0.a().b().a(this);
            this.f13918a.f();
        }

        private b(c cVar) {
            this.f13918a = cVar;
        }
    }

    public class c implements zf.a {
        @Override // com.beizi.fusion.zf.a
        public void a() {
            g1.this.a(z9.a.APP_NOT_INSTALLED);
        }

        @Override // com.beizi.fusion.zf.a
        public void b() {
            g1.this.a(z9.a.INVOKE_DEEPLINK);
        }

        @Override // com.beizi.fusion.zf.a
        public void c() {
            g1.this.a(z9.a.DEEPLINK_INVOKE_SUCCESS);
        }

        @Override // com.beizi.fusion.zf.a
        public void d() {
            g1.this.a(z9.a.APP_INSTALLED);
        }

        @Override // com.beizi.fusion.zf.a
        public void e() {
            g1.this.a(z9.a.DEEPLINK_INVOKE_FAILED);
        }

        public void f() {
            g1.this.a(z9.a.DEEPLINK_INVOKE_ASSUME_SUCCESS);
        }

        public void g() {
            g1.this.a(z9.a.DEEPLINK_INVOKE_ASSUME_REFUSE);
            if (g1.this.f13233b == null || g1.this.f13233b.getLink() == null) {
                return;
            }
            g1 g1Var = g1.this;
            g1Var.a(g1Var.f13234c, g1.this.f13233b.getLink());
        }

        private c() {
        }
    }

    public void b(Context context, String str) {
        a(context, str);
    }

    @Override // com.beizi.fusion.j1, com.beizi.fusion.ja
    public void a(LinkModel linkModel, View view, int i2) {
        if (linkModel == null || view == null) {
            return;
        }
        String deeplink = linkModel.getDeeplink();
        if (TextUtils.isEmpty(deeplink) || !a(view.getContext(), deeplink)) {
            super.a(linkModel, view, i2);
        }
    }

    public boolean a(Context context, String str) {
        c cVar = new c();
        C1127b0.a().b().b(new b(cVar));
        return zf.a(context, str, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(z9.a aVar) {
        this.f13232a.a(aVar, null, null);
    }
}
