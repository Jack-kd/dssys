package com.smartdigimkt.v1;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.smartdigimkt.v1.v4;

/* loaded from: classes5.dex */
public abstract class v4 {
    public static void a(Context context, String str, String str2, String str3, final Runnable runnable, final com.smartdigimkt.l3.a aVar, final com.smartdigimkt.m3.c cVar, u4 u4Var) {
        final u4 u4Var2;
        final Dialog dialog = new Dialog(context);
        dialog.requestWindowFeature(1);
        View viewInflate = LayoutInflater.from(context).inflate(com.smartdigimkt.c5.k.a(context, "myoffer_rv_double_task_retention_dialog", "layout"), (ViewGroup) null, false);
        dialog.setContentView(viewInflate);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            WindowManager.LayoutParams attributes = window.getAttributes();
            int i2 = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            attributes.width = Math.max(context.getResources().getDisplayMetrics().widthPixels - (i2 * 2), i2);
            attributes.height = -2;
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.addFlags(2);
            window.setDimAmount(0.5f);
        }
        dialog.setCanceledOnTouchOutside(true);
        dialog.setCancelable(true);
        TextView textView = (TextView) viewInflate.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_rv_double_retention_tv_message", "id"));
        TextView textView2 = (TextView) viewInflate.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_rv_double_retention_btn_accept", "id"));
        TextView textView3 = (TextView) viewInflate.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_rv_double_retention_tv_reject", "id"));
        if (textView != null) {
            textView.setText(str);
        }
        if (textView2 != null) {
            textView2.setText(str2);
            u4Var2 = u4Var;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: e1.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    v4.a(aVar, cVar, u4Var2, dialog, view);
                }
            });
        } else {
            u4Var2 = u4Var;
        }
        if (textView3 != null) {
            textView3.setText(str3);
            final u4 u4Var3 = u4Var2;
            textView3.setOnClickListener(new View.OnClickListener() { // from class: e1.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    v4.a(aVar, cVar, u4Var3, dialog, runnable, view);
                }
            });
        }
        dialog.show();
    }

    public static void a(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, u4 u4Var, Dialog dialog, View view) {
        com.smartdigimkt.y3.h.b(1, u4Var == u4.PLAYER_CLOSE ? 57 : 55, aVar, cVar, (String) null, false);
        dialog.dismiss();
    }

    public static void a(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, u4 u4Var, Dialog dialog, Runnable runnable, View view) {
        com.smartdigimkt.y3.h.b(1, u4Var == u4.PLAYER_CLOSE ? 58 : 56, aVar, cVar, (String) null, false);
        dialog.dismiss();
        if (runnable != null) {
            runnable.run();
        }
    }
}
