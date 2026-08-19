package com.meishu.sdk.core.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.meishu.sdk.R;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes4.dex */
public class ShakeImageView extends AppCompatImageView {
    private static final String TAG = "ShakeImageView";
    private ObjectAnimator anim;

    public ShakeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    public void startAnimation() {
        if (this.anim == null) {
            setPadding(28, 28, 28, 28);
            setImageResource(R.drawable.ms_shake);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, C1244a.f35650B, 0.0f, 45.0f, -30.0f, 0.0f);
            this.anim = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.anim.setRepeatCount(-1);
        }
        if (this.anim.isStarted()) {
            return;
        }
        this.anim.start();
    }

    public void stopAnimation() {
        ObjectAnimator objectAnimator = this.anim;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.anim.cancel();
        this.anim = null;
    }

    public ShakeImageView(Context context) {
        super(context);
    }
}
