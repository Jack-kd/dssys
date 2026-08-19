package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.ca;
import com.umeng.analytics.pro.ce;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.common.DataHelper;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private Context f50212a;

    public c(Context context) {
        this.f50212a = context;
    }

    public void a() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f50212a, "sl_domain_p", "");
        if (TextUtils.isEmpty(strImprintProperty)) {
            return;
        }
        a.f50196h = DataHelper.assembleStatelessURL(strImprintProperty);
    }

    public void b() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f50212a, "sl_domain_p", "");
        String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f50212a, "oversea_sl_domain_p", "");
        if (!TextUtils.isEmpty(strImprintProperty)) {
            a.f50195g = DataHelper.assembleStatelessURL(strImprintProperty);
        }
        if (!TextUtils.isEmpty(strImprintProperty2)) {
            a.f50198j = DataHelper.assembleStatelessURL(strImprintProperty2);
        }
        a.f50196h = a.f50198j;
        if (TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.f50220b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.f50220b.startsWith("460") || com.umeng.commonsdk.statistics.b.f50220b.startsWith("461")) {
            a.f50196h = a.f50195g;
        }
    }

    public boolean a(byte[] bArr, String str, String str2, String str3) throws Throwable {
        String strA = str2 + ServiceReference.DELIMITER + str;
        if (SdkVersion.SDK_TYPE == 1) {
            return a(bArr, strA, str3);
        }
        if (ca.a().b()) {
            if (!strA.contains("preulogs")) {
                strA = strA.replace("ulogs", "cnlogs");
            }
            String strC = ce.b().c();
            if (!TextUtils.isEmpty(strC)) {
                strA = ca.a(strC, str);
            }
            boolean zA = a(bArr, strA, str3);
            if (!zA) {
                String strA2 = ca.a().a(str);
                if (!TextUtils.isEmpty(strA2) && !strA.equalsIgnoreCase(strA2)) {
                    return a(bArr, strA2, str3);
                }
            }
            return zA;
        }
        return a(bArr, strA, str3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0118, code lost:
    
        if (r4 == null) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0126 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(byte[] r9, java.lang.String r10, java.lang.String r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.c.a(byte[], java.lang.String, java.lang.String):boolean");
    }
}
