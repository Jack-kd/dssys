package i;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import com.beizi.fusion.BeiZiCustomController;
import com.beizi.fusion.BeiZis;

/* renamed from: i.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1445a {

    /* renamed from: b, reason: collision with root package name */
    public static volatile C1445a f50813b;

    /* renamed from: a, reason: collision with root package name */
    public String f50814a;

    /* renamed from: i.a$a, reason: collision with other inner class name */
    public class C0869a extends BeiZiCustomController {
        public C0869a() {
        }

        @Override // com.beizi.fusion.BeiZiCustomController
        public boolean isCanUseGaid() {
            return super.isCanUseGaid();
        }

        @Override // com.beizi.fusion.BeiZiCustomController
        public boolean isCanUseLocation() {
            return super.isCanUseLocation();
        }

        @Override // com.beizi.fusion.BeiZiCustomController
        public boolean isCanUseOaid() {
            return super.isCanUseOaid();
        }

        @Override // com.beizi.fusion.BeiZiCustomController
        public boolean isCanUsePhoneState() {
            return super.isCanUsePhoneState();
        }

        @Override // com.beizi.fusion.BeiZiCustomController
        public boolean isCanUseWifiState() {
            return super.isCanUseWifiState();
        }
    }

    public static C1445a a() {
        if (f50813b == null) {
            synchronized (C1445a.class) {
                try {
                    if (f50813b == null) {
                        f50813b = new C1445a();
                    }
                } finally {
                }
            }
        }
        return f50813b;
    }

    public void b(Context context, String str) {
        if (ATSDK.getPersionalizedAdStatus() != 2) {
            BeiZis.init(context, str);
            return;
        }
        if (TextUtils.isEmpty(this.f50814a)) {
            BeiZis.init(context, str);
        } else {
            BeiZis.init(context, str, new C0869a(), null, this.f50814a);
        }
        BeiZis.setSupportPersonalized(false);
    }
}
