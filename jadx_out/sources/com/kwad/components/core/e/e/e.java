package com.kwad.components.core.e.e;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.proxy.j;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class e extends j {
    private a.C0529a RL;
    private boolean RP = false;
    private Activity mActivity;

    public static void a(Activity activity, a.C0529a c0529a) {
        if (activity == null || c0529a == null) {
            return;
        }
        e eVar = new e();
        eVar.RL = c0529a;
        eVar.mActivity = activity;
        eVar.show(activity.getFragmentManager(), "second_confirm_dialog");
    }

    @Override // android.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(Bundle bundle) {
        g.qK().qL();
        a.C0529a c0529a = this.RL;
        if (c0529a != null) {
            com.kwad.sdk.core.adlog.c.b(c0529a.getAdTemplate(), 229, (JSONObject) null);
        }
        return super.onCreateDialog(bundle);
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        g.qK().qM();
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.RP) {
            return;
        }
        dismiss();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
    }

    @Override // com.kwad.components.core.proxy.j
    public final View a(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup) {
        try {
            getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getDialog().setCanceledOnTouchOutside(false);
            getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kwad.components.core.e.e.e.1
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return i2 == 4;
                }
            });
            if (this.mActivity != null && this.RL != null) {
                this.RP = true;
                return new a(this.mActivity, this, this.RL);
            }
            this.RP = false;
            return null;
        } catch (Exception e2) {
            this.RP = false;
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return null;
        }
    }
}
