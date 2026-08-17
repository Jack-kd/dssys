package com.byazt.qd;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.b.zy;
import com.byazt.v.l;
import com.byazt.yy.DownloadModel;

@com.byazt.kj.hp(hp = {0, 1, 1524, 28})
/* loaded from: classes3.dex */
public class hp implements zy {
    @Override // com.byazt.b.zy
    public void hp(int i2, @Nullable Context context, DownloadModel downloadModel, String str, Drawable drawable, int i3) {
        Toast.makeText(context, str, 0).show();
    }

    @Override // com.byazt.b.zy
    public Dialog l(@NonNull com.byazt.v.l lVar) {
        return hp(lVar);
    }

    private static Dialog hp(final com.byazt.v.l lVar) {
        if (lVar == null) {
            return null;
        }
        AlertDialog alertDialogShow = new AlertDialog.Builder(lVar.hp).setTitle(lVar.f26533l).setMessage(lVar.jx).setPositiveButton(lVar.f26532j, new DialogInterface.OnClickListener() { // from class: com.byazt.qd.hp.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                l.InterfaceC0391l interfaceC0391l = lVar.f26535s;
                if (interfaceC0391l != null) {
                    interfaceC0391l.hp(dialogInterface);
                }
            }
        }).setNegativeButton(lVar.f26536w, new DialogInterface.OnClickListener() { // from class: com.byazt.qd.hp.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                l.InterfaceC0391l interfaceC0391l = lVar.f26535s;
                if (interfaceC0391l != null) {
                    interfaceC0391l.l(dialogInterface);
                }
            }
        }).show();
        alertDialogShow.setCanceledOnTouchOutside(lVar.f26530a);
        alertDialogShow.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.byazt.qd.hp.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                l.InterfaceC0391l interfaceC0391l = lVar.f26535s;
                if (interfaceC0391l != null) {
                    interfaceC0391l.jx(dialogInterface);
                }
            }
        });
        Drawable drawable = lVar.eb;
        if (drawable != null) {
            alertDialogShow.setIcon(drawable);
        }
        return alertDialogShow;
    }
}
