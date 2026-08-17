package ms.bz.bd.c.Pgl;

import android.annotation.SuppressLint;
import android.hardware.display.DisplayManager;
import android.text.TextUtils;
import android.view.Display;

@SuppressLint({"NewApi"})
/* loaded from: classes5.dex */
public final class pbll implements DisplayManager.DisplayListener {
    private DisplayManager hp;

    public pbll(DisplayManager displayManager) {
        this.hp = displayManager;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i2) {
        try {
            Display[] displays = this.hp.getDisplays();
            int length = displays.length;
            if (length > 0) {
                q1 q1VarHp = q1.hp();
                q1VarHp.getClass();
                String strHp = q1.hp(displays);
                String strL = q1.l(displays);
                q1VarHp.hp(length);
                if (!TextUtils.isEmpty(strHp)) {
                    q1VarHp.hp(strHp);
                }
                if (!TextUtils.isEmpty(strL)) {
                    q1VarHp.l(strL);
                }
                q1VarHp.hp(System.currentTimeMillis() / 1000);
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i2) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i2) {
        try {
            Display[] displays = this.hp.getDisplays();
            int length = displays.length;
            if (length > 0) {
                q1 q1VarHp = q1.hp();
                q1VarHp.getClass();
                String strHp = q1.hp(displays);
                String strL = q1.l(displays);
                q1VarHp.hp(length);
                if (!TextUtils.isEmpty(strHp)) {
                    q1VarHp.hp(strHp);
                }
                if (!TextUtils.isEmpty(strL)) {
                    q1VarHp.l(strL);
                }
                q1VarHp.l(System.currentTimeMillis() / 1000);
            }
        } catch (Exception unused) {
        }
    }
}
