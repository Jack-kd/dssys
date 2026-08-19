package com.anythink.core.common.e;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.anythink.core.api.ATCommonConfig;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.p;
import com.anythink.network.adx.AdxATInitManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3094a = -1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f3095b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f3096c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f3097d = 3;

    /* renamed from: f, reason: collision with root package name */
    private static volatile a f3098f;

    /* renamed from: e, reason: collision with root package name */
    private final String f3099e = "AdxSDKDetectManager";

    /* renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f3100g = new AtomicBoolean(false);

    private a() {
    }

    public static a a() {
        if (f3098f == null) {
            synchronized (a.class) {
                try {
                    if (f3098f == null) {
                        f3098f = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3098f;
    }

    public static b a(Context context) {
        try {
            try {
                int i2 = AdxATInitManager.f9210A;
                Object objInvoke = AdxATInitManager.class.getDeclaredMethod("getInstance", null).invoke(null, null);
                if (objInvoke != null && (objInvoke instanceof ATInitMediation)) {
                    try {
                        Class.forName(((ATInitMediation) objInvoke).getNetworkSDKClass());
                    } catch (Throwable th) {
                        String string = "There is a problem with the integrated AnyThink SDK:Adx aar is missing";
                        if (context != null) {
                            string = context.getResources().getString(p.a(context, "adx_sdk_check_tips_miss_sdk", "string"));
                            try {
                                string = String.format(string, "anythink");
                            } catch (Throwable unused) {
                            }
                        }
                        return new b(2, string, th.getMessage());
                    }
                }
            } catch (Throwable th2) {
                String string2 = "There is a problem with the integrated AnyThink SDK:Adx Adapter is missing";
                if (context != null) {
                    string2 = context.getResources().getString(p.a(context, "adx_sdk_check_tips_miss_adapter", "string"));
                    try {
                        string2 = String.format(string2, "anythink");
                    } catch (Throwable unused2) {
                    }
                }
                return new b(1, string2, th2.getMessage());
            }
        } catch (Throwable unused3) {
        }
        return null;
    }

    public final void a(final Activity activity) {
        final b bVarA;
        if (activity == null) {
            return;
        }
        s.b();
        if (!ATCommonConfig.isShowInitErrorTips || this.f3100g.get() || (bVarA = a((Context) activity)) == null) {
            return;
        }
        activity.getWindow().getDecorView().post(new Runnable() { // from class: com.anythink.core.common.e.a.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    String string = activity.getResources().getString(p.a(activity, "adx_sdk_check_tips_title", "string"));
                    String string2 = activity.getResources().getString(p.a(activity, "adx_sdk_check_tips_confirm", "string"));
                    Activity activity2 = activity;
                    AlertDialog.Builder builder = new AlertDialog.Builder(activity2, p.a(activity2, "system_dialog", "style"));
                    builder.setTitle(string).setMessage(bVarA.f3107b).setCancelable(true).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.anythink.core.common.e.a.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            dialogInterface.dismiss();
                        }
                    });
                    AlertDialog alertDialogCreate = builder.create();
                    alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.anythink.core.common.e.a.1.2
                        @Override // android.content.DialogInterface.OnShowListener
                        public final void onShow(DialogInterface dialogInterface) {
                            a.this.f3100g.set(true);
                        }
                    });
                    alertDialogCreate.show();
                } catch (Throwable unused) {
                }
            }
        });
    }
}
