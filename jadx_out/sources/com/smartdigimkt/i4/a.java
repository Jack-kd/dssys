package com.smartdigimkt.i4;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.sdk.api.IntegrationCheckListener;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IntegrationCheckListener f40734a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f40735b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f40736c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f40737d;

    public a(b bVar, IntegrationCheckListener integrationCheckListener, Map map, Context context) {
        this.f40737d = bVar;
        this.f40734a = integrationCheckListener;
        this.f40735b = map;
        this.f40736c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f40737d.f40739b) {
            try {
                if (this.f40737d.f40740c != null) {
                    if (this.f40734a != null) {
                        b bVar = this.f40737d;
                        String str = bVar.f40738a;
                        if (TextUtils.isEmpty(bVar.f40740c)) {
                            this.f40734a.onValidationSucceed();
                        } else {
                            this.f40734a.onValidationFail(this.f40737d.f40740c);
                        }
                    }
                    return;
                }
                try {
                    h.a(new HashMap(this.f40735b));
                } catch (Throwable unused) {
                }
                b bVar2 = this.f40737d;
                Context context = this.f40736c;
                bVar2.getClass();
                ArrayList arrayList = new ArrayList();
                arrayList.add("sdm_myoffer_full_screen");
                arrayList.add("sdm_myoffer_splash_ad_layout_asseblem_vertical_port");
                String strA = b.a(context, arrayList, SDKContext.getInstance().f44119h);
                String str2 = this.f40737d.f40738a;
                TextUtils.isEmpty(strA);
                if (this.f40734a != null) {
                    String str3 = this.f40737d.f40738a;
                    if (TextUtils.isEmpty(strA)) {
                        this.f40737d.f40740c = "";
                        this.f40734a.onValidationSucceed();
                    } else {
                        this.f40737d.f40740c = "The " + strA + " resources are missing, If shrinkResources is enabled, the " + strA + " resources must be added to the whitelist (keep.xml)";
                        this.f40734a.onValidationFail(this.f40737d.f40740c);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
