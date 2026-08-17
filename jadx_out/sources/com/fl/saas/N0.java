package com.fl.saas;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.fl.saas.adx.base.activity.S2SRewardVideoActivity;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.List;

/* loaded from: classes3.dex */
public class N0 {

    /* renamed from: a, reason: collision with root package name */
    private C1188j f30004a;

    /* renamed from: b, reason: collision with root package name */
    private InterfaceC1204o0 f30005b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f30006c;

    public N0(boolean z2) {
        this.f30006c = z2;
    }

    public void a() {
        this.f30004a = null;
        this.f30005b = null;
    }

    public C1188j b() {
        return this.f30004a;
    }

    public boolean c() {
        return this.f30006c;
    }

    public boolean d() {
        if (b() == null) {
            return false;
        }
        if (!TextUtils.isEmpty(b().f30546t1)) {
            return true;
        }
        if (b().f30461S > 0) {
            return !TextUtils.isEmpty(b().f30534p1);
        }
        return false;
    }

    public void e() {
        InterfaceC1204o0 interfaceC1204o0 = this.f30005b;
        if (interfaceC1204o0 == null || this.f30004a.f30537q1 != 1) {
            return;
        }
        interfaceC1204o0.a("");
    }

    public void f() {
        InterfaceC1204o0 interfaceC1204o0 = this.f30005b;
        if (interfaceC1204o0 != null) {
            interfaceC1204o0.onClose();
        }
    }

    public void g() {
        InterfaceC1204o0 interfaceC1204o0 = this.f30005b;
        if (interfaceC1204o0 != null) {
            interfaceC1204o0.a(this.f30004a != null ? r1.f30496d : 0);
        }
    }

    public void h() {
        InterfaceC1204o0 interfaceC1204o0 = this.f30005b;
        if (interfaceC1204o0 != null) {
            interfaceC1204o0.b(this.f30004a != null ? r1.f30496d : 0);
        }
    }

    public N0 a(List list, InterfaceC1204o0 interfaceC1204o0) {
        if (list != null && list.size() > 0) {
            C1188j c1188j = (C1188j) list.get(0);
            if (interfaceC1204o0 != null) {
                this.f30005b = interfaceC1204o0;
                if (c1188j != null) {
                    this.f30004a = c1188j;
                    interfaceC1204o0.a(this);
                    return this;
                }
                a("视频地址为空");
            }
        }
        return this;
    }

    public void a(int i2, String str) {
        InterfaceC1204o0 interfaceC1204o0 = this.f30005b;
        if (interfaceC1204o0 != null) {
            interfaceC1204o0.a(FLError.create(i2, str));
        }
    }

    public void a(String str) {
        a(0, str);
    }

    public void a(Activity activity) {
        if (activity != null) {
            try {
                Intent intent = new Intent(activity, (Class<?>) S2SRewardVideoActivity.class);
                C1188j c1188j = this.f30004a;
                if (c1188j != null) {
                    intent.putExtra("draw_type", c1188j.f30447N0);
                }
                S2SRewardVideoActivity.setAdInfo(this);
                activity.startActivity(intent);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }
}
