package com.smartdigimkt.t;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.q.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44139a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f44140b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean[] f44141c;

    public b(Context context, Object obj, boolean[] zArr) {
        this.f44139a = context;
        this.f44140b = obj;
        this.f44141c = zArr;
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str) {
        this.f44141c[0] = true;
        try {
            synchronized (this.f44140b) {
                this.f44140b.notifyAll();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str, boolean z2) {
        if (!TextUtils.isEmpty(str) && !Pattern.matches("^[0-]+$", str)) {
            f.a(this.f44139a, str, true);
        }
        try {
            SDKContext sDKContext = SDKContext.getInstance();
            if (!TextUtils.isEmpty(sDKContext.f44137z)) {
                if (TextUtils.equals(str, sDKContext.f44137z)) {
                    sDKContext.f44103B = true;
                }
                if (sDKContext.f44103B) {
                    sDKContext.j();
                }
            }
            synchronized (this.f44140b) {
                this.f44140b.notifyAll();
            }
        } catch (Throwable unused) {
        }
        this.f44141c[0] = true;
    }
}
