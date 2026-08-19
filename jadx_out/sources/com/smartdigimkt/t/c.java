package com.smartdigimkt.t;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class c implements com.smartdigimkt.q.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44142a;

    public c(Context context) {
        this.f44142a = context;
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str) {
        if (f.f44149d.get() == 10) {
            f.a(6, str);
        }
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str, boolean z2) {
        String str2 = f.f44146a;
        if (!TextUtils.isEmpty(str) && !Pattern.matches("^[0-]+$", str)) {
            f.a(this.f44142a, str, true);
        }
        try {
            SDKContext sDKContext = SDKContext.getInstance();
            if (TextUtils.isEmpty(sDKContext.f44137z)) {
                return;
            }
            if (TextUtils.equals(str, sDKContext.f44137z)) {
                sDKContext.f44103B = true;
            }
            if (sDKContext.f44103B) {
                sDKContext.j();
            }
        } catch (Throwable unused) {
        }
    }
}
