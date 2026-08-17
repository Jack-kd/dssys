package com.smartdigimkt.h2;

import android.widget.SeekBar;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PicVerifyG2CV2View;

/* loaded from: classes5.dex */
public final class r0 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PicVerifyG2CV2View f40529a;

    public r0(PicVerifyG2CV2View picVerifyG2CV2View) {
        this.f40529a = picVerifyG2CV2View;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        if (!z2) {
            this.f40529a.f43909h.move(i2);
            if (i2 == 100) {
                this.f40529a.f43909h.loose();
                return;
            }
            return;
        }
        PicVerifyG2CV2View picVerifyG2CV2View = this.f40529a;
        if (picVerifyG2CV2View.f43913l) {
            picVerifyG2CV2View.f43913l = false;
            if (i2 > 30) {
                picVerifyG2CV2View.f43912k = false;
            } else {
                picVerifyG2CV2View.f43912k = true;
            }
        }
        if (!picVerifyG2CV2View.f43912k) {
            seekBar.setProgress(0);
        } else if (i2 > 30) {
            PicVerifyG2CV2View.a(picVerifyG2CV2View, i2);
        } else {
            picVerifyG2CV2View.f43909h.move(i2);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        PicVerifyG2CV2View picVerifyG2CV2View = this.f40529a;
        picVerifyG2CV2View.f43913l = true;
        PicVerifyG2CV2View.b(picVerifyG2CV2View);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        PicVerifyG2CV2View picVerifyG2CV2View = this.f40529a;
        if (picVerifyG2CV2View.f43912k) {
            picVerifyG2CV2View.f43909h.loose();
        }
        PicVerifyG2CV2View.a(this.f40529a);
    }
}
