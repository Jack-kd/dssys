package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.ad.model.BeiZiLocation;
import com.beizi.fusion.model.AdPlusConfig;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class yq {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f17729a;

    public class a extends u3 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f17730a;

        public a(Context context) {
            this.f17730a = context;
        }

        @Override // com.beizi.fusion.u3
        public String a() {
            try {
                if (RequestInfo.getInstance(this.f17730a).getDevInfo() != null) {
                    String oaid = RequestInfo.getInstance(this.f17730a).getDevInfo().getOaid();
                    if (!TextUtils.isEmpty(oaid)) {
                        return oaid;
                    }
                    String customOaid = RequestInfo.getInstance(this.f17730a).getCustomOaid();
                    if (!TextUtils.isEmpty(customOaid)) {
                        return customOaid;
                    }
                }
            } catch (Exception unused) {
            }
            return super.a();
        }

        @Override // com.beizi.fusion.u3
        public BeiZiLocation b() {
            return BeiZis.getCustomController() != null ? BeiZis.getCustomController().getLocation() : super.b();
        }

        @Override // com.beizi.fusion.u3
        public boolean c() {
            return BeiZis.getCustomController() != null ? BeiZis.getCustomController().isCanUseLocation() : super.c();
        }

        @Override // com.beizi.fusion.u3
        public boolean d() {
            return BeiZis.getCustomController() != null ? !dl.b() && BeiZis.getCustomController().isCanUseOaid() : super.d();
        }
    }

    private static void a(Context context, String str) {
        if (f17729a) {
            return;
        }
        try {
            a(context);
            t3.a(context, str, new a(context));
            t3.e(uf.a().b(context.getApplicationContext()));
            f17729a = true;
        } catch (Exception unused) {
        }
    }

    public static void b(Context context, String str) {
        try {
            a(context.getApplicationContext(), str);
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context) {
        String strA;
        try {
            AdPlusConfig adPlusConfig = ResponseInfo.getInstance(context).getAdPlusConfig();
            if (adPlusConfig != null) {
                List<String> h5RedirectBlackList = adPlusConfig.getH5RedirectBlackList();
                if (h5RedirectBlackList == null || h5RedirectBlackList.size() <= 0) {
                    h5RedirectBlackList = new ArrayList<>();
                    h5RedirectBlackList.add(com.anythink.core.basead.a.e.f1620e);
                }
                t3.a(h5RedirectBlackList);
            }
            if (adPlusConfig != null && !TextUtils.isEmpty(adPlusConfig.getAdUrl()) && adPlusConfig.getAdUrl().startsWith("http")) {
                strA = adPlusConfig.getAdUrl();
            } else {
                strA = h3.a(BeiZis.getTransferProtocol() ? "aHR0cHM6Ly9hcGktaHRwLmJlaXppLmJpei9tYi9zZGswL2pzb24=" : "aHR0cDovL2FwaS5odHAuYWQtc2NvcGUuY29tLmNuOjQ1NjAwL21iL3NkazAvanNvbg==");
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
            }
            if (!TextUtils.isEmpty(strA)) {
                t3.b(strA);
            }
            if (adPlusConfig != null) {
                String rwReqUrl = adPlusConfig.getRwReqUrl();
                if (!TextUtils.isEmpty(rwReqUrl)) {
                    t3.c(rwReqUrl);
                }
                String unReqUrl = adPlusConfig.getUnReqUrl();
                if (TextUtils.isEmpty(unReqUrl)) {
                    return;
                }
                t3.d(unReqUrl);
            }
        } catch (Exception unused) {
        }
    }

    public static String a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            b(context, str);
            return t3.a(str2);
        }
        b4.j().a(context);
        return new yi().a(ro.a(), false);
    }
}
