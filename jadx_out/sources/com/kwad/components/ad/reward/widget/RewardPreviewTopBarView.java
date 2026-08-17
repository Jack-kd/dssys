package com.kwad.components.ad.reward.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.R;
import com.kwad.sdk.widget.KSFrameLayout;

/* loaded from: classes4.dex */
public class RewardPreviewTopBarView extends KSFrameLayout implements View.OnClickListener {
    private String FC;
    private String FD;
    private ProgressBar FE;
    private TextView FF;
    private long FG;
    private long FH;
    private boolean FI;
    private a FJ;
    private ImageView cH;
    private TextView wU;

    public interface a {
        void H(boolean z2);

        void I(boolean z2);
    }

    public RewardPreviewTopBarView(@NonNull Context context) {
        super(context);
        this.FC = " 秒后即可获得奖励";
        this.FD = "恭喜你获得奖励";
        this.FG = -1L;
        this.FI = false;
    }

    @MainThread
    private void e(long j2, long j3) {
        this.FE.setProgress((int) (j3 - j2));
    }

    @MainThread
    private void f(boolean z2, boolean z3) {
        if (this.FI) {
            this.wU.setVisibility(0);
        } else {
            this.wU.setVisibility(8);
            this.FF.setText(this.FD);
            a aVar = this.FJ;
            if (aVar != null) {
                aVar.I(false);
            }
        }
        this.FI = true;
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public final void init(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super.init(context, attributeSet);
        View.inflate(getContext(), R.layout.ksad_activity_preview_topbar, this);
        this.FE = (ProgressBar) findViewById(R.id.ksad_preview_topbar_progress);
        this.wU = (TextView) findViewById(R.id.ksad_preview_topbar_reward_tips);
        this.FF = (TextView) findViewById(R.id.ksad_preview_topbar_reward_count);
        ImageView imageView = (ImageView) findViewById(R.id.ksad_preview_topbar_close);
        this.cH = imageView;
        imageView.setVisibility(8);
        this.cH.setOnClickListener(this);
    }

    public final boolean lJ() {
        return this.FI;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar;
        if (!view.equals(this.cH) || (aVar = this.FJ) == null) {
            return;
        }
        aVar.H(this.FI);
    }

    @MainThread
    public void setCloseBtnDelayShowDuration(long j2) {
        this.FH = j2;
        if (j2 <= 0) {
            this.cH.setVisibility(0);
        }
    }

    @MainThread
    public void setRewardTips(String str) {
        TextView textView = this.wU;
        if (textView == null || str == null) {
            return;
        }
        textView.setText(str);
    }

    public void setTopBarListener(a aVar) {
        this.FJ = aVar;
    }

    @MainThread
    public void setTotalCountDuration(long j2) {
        this.FG = j2;
        this.FE.setMax((int) j2);
    }

    @MainThread
    public final void v(long j2) {
        int iCeil = (int) Math.ceil(j2 / 1000.0f);
        TextView textView = this.FF;
        if (textView != null) {
            textView.setText(iCeil + this.FC);
        }
        e(j2, this.FG);
        if (this.FG - j2 >= this.FH && this.cH.getVisibility() != 0) {
            this.cH.setVisibility(0);
        }
        if (iCeil <= 0) {
            f(true, false);
        }
    }

    public RewardPreviewTopBarView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.FC = " 秒后即可获得奖励";
        this.FD = "恭喜你获得奖励";
        this.FG = -1L;
        this.FI = false;
    }

    public RewardPreviewTopBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.FC = " 秒后即可获得奖励";
        this.FD = "恭喜你获得奖励";
        this.FG = -1L;
        this.FI = false;
    }
}
