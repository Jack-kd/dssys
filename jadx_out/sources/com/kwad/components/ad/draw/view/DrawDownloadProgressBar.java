package com.kwad.components.ad.draw.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.page.widget.TextProgressBar;
import com.kwad.sdk.R;
import com.kwad.sdk.wrapper.m;

/* loaded from: classes4.dex */
public class DrawDownloadProgressBar extends FrameLayout {
    private TextProgressBar gl;
    private View gm;
    private Context mContext;

    public DrawDownloadProgressBar(@NonNull Context context) {
        super(context);
        B(context);
    }

    private void B(Context context) {
        this.mContext = context;
        m.inflate(context, R.layout.ksad_draw_download_bar, this);
        this.gl = (TextProgressBar) findViewById(R.id.ksad_download_progress);
        View viewFindViewById = findViewById(R.id.ksad_download_progress_cover);
        this.gm = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.kwad.components.ad.draw.view.DrawDownloadProgressBar.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrawDownloadProgressBar.this.performClick();
            }
        });
    }

    public final void e(String str, int i2) {
        if (i2 == 0 || i2 == getMax()) {
            this.gm.setVisibility(0);
        } else {
            this.gm.setVisibility(8);
        }
        this.gl.e(str, i2);
    }

    public int getMax() {
        return this.gl.getMax();
    }

    public void setTextColor(int i2) {
        this.gl.setTextColor(i2);
    }

    public void setTextSize(int i2) {
        this.gl.setTextDimen(com.kwad.sdk.c.a.a.a(getContext(), i2));
    }

    public DrawDownloadProgressBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        B(context);
    }

    public DrawDownloadProgressBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        B(context);
    }
}
