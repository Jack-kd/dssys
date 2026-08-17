package com.byazt.po;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.Window;
import android.view.WindowManager;
import com.byazt.ay.e;
import com.byazt.zn.w;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 212, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {

    @com.byazt.kj.hp(hp = {0, 1, 212, 1132})
    public static class hp implements DialogInterface {
        private hp() {
        }

        @Override // android.content.DialogInterface
        public void cancel() {
        }

        @Override // android.content.DialogInterface
        public void dismiss() {
        }
    }

    private static AlertDialog hp(Activity activity, final com.byazt.po.hp hpVar) {
        return new com.byazt.ay.e(activity).hp(hpVar.hp).l(hpVar.f24461l).jx(hpVar.jx).j(hpVar.f24460j).hp(hpVar.f24462w).hp(new e.hp() { // from class: com.byazt.po.gu.2
            @Override // com.byazt.ay.e.hp
            public void hp(Dialog dialog) {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.hp(dialog);
                }
            }

            @Override // com.byazt.ay.e.hp
            public void l(Dialog dialog) {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.l(dialog);
                }
            }
        }).hp(new DialogInterface.OnCancelListener() { // from class: com.byazt.po.gu.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.jx(dialogInterface);
                }
            }
        });
    }

    public static void hp(WeakReference<Context> weakReference, boolean z2, final com.byazt.po.hp hpVar) {
        w.hp hpVar2 = new w.hp() { // from class: com.byazt.po.gu.3
            @Override // com.byazt.zn.w.hp
            public void hp() {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.hp(new hp());
                }
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.jx(new hp());
                }
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.l(new hp());
                }
            }
        };
        if (z2) {
            com.byazt.zn.w.hp(weakReference.get(), String.valueOf(hpVar.hashCode()), hpVar.hp, hpVar.f24461l, hpVar.jx, hpVar.f24460j, hpVar2);
        } else {
            com.byazt.zn.w.hp(weakReference.get(), String.valueOf(hpVar.hashCode()), hpVar.hp, hpVar.f24461l, hpVar2);
        }
    }

    public static AlertDialog hp(Activity activity, boolean z2, com.byazt.po.hp hpVar) {
        if (z2) {
            AlertDialog alertDialogHp = hp(activity, hpVar);
            if (activity != null && !activity.isFinishing()) {
                alertDialogHp.show();
            }
            return alertDialogHp;
        }
        return hp(activity, R.style.Theme.DeviceDefault.Light.Dialog, hpVar);
    }

    private static AlertDialog hp(Activity activity, int i2, final com.byazt.po.hp hpVar) {
        AlertDialog.Builder onCancelListener = new AlertDialog.Builder(activity, i2).setTitle(hpVar.hp).setMessage(hpVar.f24461l).setPositiveButton(hpVar.jx, new DialogInterface.OnClickListener() { // from class: com.byazt.po.gu.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.hp(dialogInterface);
                }
            }
        }).setNegativeButton(hpVar.f24460j, new DialogInterface.OnClickListener() { // from class: com.byazt.po.gu.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.l(dialogInterface);
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.byazt.po.gu.4
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                l lVar = hpVar.f24459a;
                if (lVar != null) {
                    lVar.jx(dialogInterface);
                }
            }
        });
        Drawable drawable = hpVar.f24462w;
        if (drawable != null) {
            onCancelListener.setIcon(drawable);
        }
        AlertDialog alertDialogCreate = onCancelListener.create();
        Window window = alertDialogCreate.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = 17;
            window.setAttributes(attributes);
        }
        if (activity != null && !activity.isFinishing()) {
            alertDialogCreate.show();
        }
        return alertDialogCreate;
    }
}
