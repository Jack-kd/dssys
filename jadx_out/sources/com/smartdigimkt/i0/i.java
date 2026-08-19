package com.smartdigimkt.i0;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f40658a;

    /* renamed from: b, reason: collision with root package name */
    public final String f40659b;

    /* renamed from: c, reason: collision with root package name */
    public final String f40660c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.j.g f40661d;

    /* renamed from: e, reason: collision with root package name */
    public final long f40662e;

    public i(com.smartdigimkt.m3.c cVar, String str, String str2, com.smartdigimkt.j.g gVar, long j2) {
        this.f40659b = str;
        this.f40660c = str2;
        this.f40658a = cVar;
        this.f40661d = gVar;
        this.f40662e = j2;
    }

    public final void a(Activity activity) {
        try {
            com.smartdigimkt.m3.c cVar = this.f40658a;
            String str = cVar instanceof com.smartdigimkt.m3.k ? ((com.smartdigimkt.m3.k) cVar).f42049j0 : "";
            if (TextUtils.isEmpty(str)) {
                str = this.f40658a.f41810c;
            }
            Context contextD = SDKContext.getInstance().d();
            View viewInflate = LayoutInflater.from(activity).inflate(com.smartdigimkt.c5.k.a(contextD, "myoffer_confirm_dialog", "layout"), (ViewGroup) null, false);
            TextView textView = (TextView) viewInflate.findViewById(com.smartdigimkt.c5.k.a(contextD, "myoffer_confirm_msg", "id"));
            TextView textView2 = (TextView) viewInflate.findViewById(com.smartdigimkt.c5.k.a(contextD, "myoffer_confirm_give_up", "id"));
            TextView textView3 = (TextView) viewInflate.findViewById(com.smartdigimkt.c5.k.a(contextD, "myoffer_confirm_continue", "id"));
            String string = contextD.getString(com.smartdigimkt.c5.k.a(SDKContext.getInstance().d(), "myoffer_confirm_msg", "string"));
            String string2 = contextD.getString(com.smartdigimkt.c5.k.a(SDKContext.getInstance().d(), "myoffer_give_up", "string"));
            String string3 = contextD.getString(com.smartdigimkt.c5.k.a(SDKContext.getInstance().d(), "myoffer_continue", "string"));
            textView.setText(string + "\"" + str + "\"?");
            textView2.setText(string2);
            textView3.setText(string3);
            Dialog dialog = new Dialog(activity, com.smartdigimkt.c5.k.a(contextD, "style_full_screen_translucent_dialog", "style"));
            dialog.setContentView(viewInflate);
            dialog.setCancelable(false);
            textView2.setOnClickListener(new g(this, dialog));
            textView3.setOnClickListener(new h(this, contextD, dialog));
            dialog.show();
        } catch (Throwable unused) {
        }
    }
}
