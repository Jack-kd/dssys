package com.smartdigimkt.h2;

import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.SeekBar;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PuzzleV2G2CV2View;

/* loaded from: classes5.dex */
public final class w0 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PuzzleV2G2CV2View f40537a;

    public w0(PuzzleV2G2CV2View puzzleV2G2CV2View) {
        this.f40537a = puzzleV2G2CV2View;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        PuzzleV2G2CV2View puzzleV2G2CV2View = this.f40537a;
        int i3 = PuzzleV2G2CV2View.f43917t;
        puzzleV2G2CV2View.getClass();
        int i4 = i2 < 15 ? 0 : i2 > 85 ? 100 : i2 - 15;
        if (!z2) {
            PuzzleV2G2CV2View.b(this.f40537a, i4);
            if (i4 == 100 && i2 == 100) {
                PuzzleV2G2CV2View puzzleV2G2CV2View2 = this.f40537a;
                puzzleV2G2CV2View2.removeAllViews();
                puzzleV2G2CV2View2.b();
                return;
            }
            return;
        }
        PuzzleV2G2CV2View puzzleV2G2CV2View3 = this.f40537a;
        if (puzzleV2G2CV2View3.f43926q) {
            puzzleV2G2CV2View3.f43926q = false;
            if (i4 > 30) {
                puzzleV2G2CV2View3.f43925p = false;
            } else {
                puzzleV2G2CV2View3.f43925p = true;
            }
        }
        if (!puzzleV2G2CV2View3.f43925p) {
            seekBar.setProgress(0);
        } else if (i4 > 30) {
            PuzzleV2G2CV2View.a(puzzleV2G2CV2View3, i2);
        } else {
            PuzzleV2G2CV2View.b(puzzleV2G2CV2View3, i4);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        PuzzleV2G2CV2View puzzleV2G2CV2View = this.f40537a;
        puzzleV2G2CV2View.f43926q = true;
        ImageView imageView = puzzleV2G2CV2View.f43920k;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        TranslateAnimation translateAnimation = this.f40537a.f43922m;
        if (translateAnimation != null) {
            translateAnimation.cancel();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        PuzzleV2G2CV2View puzzleV2G2CV2View = this.f40537a;
        if (puzzleV2G2CV2View.f43925p) {
            PuzzleV2G2CV2View.b(puzzleV2G2CV2View, 0);
            ImageView imageView = this.f40537a.f43920k;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            TranslateAnimation translateAnimation = this.f40537a.f43922m;
            if (translateAnimation != null) {
                translateAnimation.start();
            }
        }
    }
}
